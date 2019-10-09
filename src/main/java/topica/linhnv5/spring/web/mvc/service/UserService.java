package topica.linhnv5.spring.web.mvc.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.userdetails.User.UserBuilder;
import org.springframework.security.core.userdetails.UserDetails;
import org.springframework.security.core.userdetails.UserDetailsService;
import org.springframework.security.core.userdetails.UsernameNotFoundException;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import org.springframework.stereotype.Service;

import topica.linhnv5.spring.web.mvc.model.User;
import topica.linhnv5.spring.web.mvc.repository.UserRepository;

/**
 * User service, build userdetails to authentication
 * @author ljnk975
 */
@Service
public class UserService implements UserDetailsService, IUserService {

	@Autowired
	private UserRepository userRepository;

	@Override
	public UserDetails loadUserByUsername(String username) throws UsernameNotFoundException {
		User user = userRepository.findByUsername(username).get();

		UserBuilder builder = null;
		if (user != null) {
			builder = org.springframework.security.core.userdetails.User.withUsername(username)
						.password(new BCryptPasswordEncoder().encode(user.getPassword()))
						.roles(user.getRoles());
		} else
			throw new UsernameNotFoundException("User not found.");

		return builder.build();
	}

	@Override
	public User findById(long id) {
		return userRepository.findById(id).get();
	}

	@Override
	public User findByName(String username) {
		return userRepository.findByUsername(username).get();
	}

	@Override
	public void saveUser(User user) {
		// Set role
		user.setRoles("USER");

		userRepository.save(user);
	}

	@Override
	public void updateUser(User user) {
		User old = userRepository.findById(user.getId()).get();

		if(old != null) {
			old.setPassword(user.getPassword());
			old.setFullName(user.getFullName());
			old.setEmail(user.getEmail());
			userRepository.save(user);
		}
	}

	@Override
	public void deleteUserById(long id) {
		userRepository.deleteById(id);
	}

}
