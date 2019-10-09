package topica.linhnv5.spring.web.mvc.dao;

import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.concurrent.atomic.AtomicLong;

import org.springframework.stereotype.Repository;

import topica.linhnv5.spring.web.mvc.model.User;
import topica.linhnv5.spring.web.mvc.service.IUserService;

/**
 * User DAO, Hold User mapping
 * @author ljnk975
 */
@Deprecated
@Repository
public class UserDAO implements IUserService {

	/**
	 * To get next id
	 */
	private static final AtomicLong counter = new AtomicLong();

	/**
	 * Map of user
	 */
	private static final List<User> listUser = new ArrayList<User>();

	static {
    	listUser.add(new User(counter.incrementAndGet(), "ljnk975", "12345", "ADMIN"));
    	listUser.add(new User(counter.incrementAndGet(), "user", "12345", "USER"));
    	listUser.add(new User(counter.incrementAndGet(), "yoga", "12345", "USER"));
	}

	@Override
	public User findById(long id) {
		for(User user : listUser) {
			if(user.getId() == id)
				return user;
		}
		return null;
	}

	@Override
	public User findByName(String username) {
		for(User user : listUser) {
			if(user.getUsername().equalsIgnoreCase(username))
				return user;
		}
		return null;
	}

	@Override
	public void saveUser(User user) {
		// Set the next id
		user.setId(counter.incrementAndGet());

		// Set role
		user.setRoles("USER");

		// add user
		listUser.add(user);
	}

	@Override
	public void updateUser(User user) {
		listUser.set(listUser.indexOf(user), user);
	}

	@Override
	public void deleteUserById(long id) {
		for (Iterator<User> iterator = listUser.iterator(); iterator.hasNext(); ) {
		    User user = iterator.next();
		    if (user.getId() == id)
		        iterator.remove();
		}
	}

}
