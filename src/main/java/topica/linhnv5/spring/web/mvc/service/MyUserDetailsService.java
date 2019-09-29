package topica.linhnv5.spring.web.mvc.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.userdetails.User.UserBuilder;
import org.springframework.security.core.userdetails.UserDetails;
import org.springframework.security.core.userdetails.UserDetailsService;
import org.springframework.security.core.userdetails.UsernameNotFoundException;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import org.springframework.stereotype.Service;

import topica.linhnv5.spring.web.mvc.dao.UserDAO;
import topica.linhnv5.spring.web.mvc.model.User;

/**
 * User service, build userdetails to authentication
 * @author ljnk975
 */
@Service
public class MyUserDetailsService implements UserDetailsService {

	@Autowired
	private UserDAO userDAO;

	@Override
	public UserDetails loadUserByUsername(String username) throws UsernameNotFoundException {
		User user = userDAO.findByName(username);

		UserBuilder builder = null;
		if (user != null) {
			builder = org.springframework.security.core.userdetails.User.withUsername(username)
						.password(new BCryptPasswordEncoder().encode(user.getPassword()))
						.roles(user.getRoles());
		} else
			throw new UsernameNotFoundException("User not found.");

		return builder.build();
	}

}
