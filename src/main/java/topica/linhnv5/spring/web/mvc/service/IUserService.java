package topica.linhnv5.spring.web.mvc.service;

import org.springframework.security.core.userdetails.UserDetailsService;

import topica.linhnv5.spring.web.mvc.model.User;

public interface IUserService {

	/**
	 * Get user by using id
	 * @param id id of user
	 * @return the user
	 */
	User findById(long id);

	/**
	 * Get user by using username
	 * @param name username of user
	 * @return the user
	 */
	User findByName(String username);	

	/**
	 * Add new user
	 * @param user the user
	 */
	void saveUser(User user);

	/**
	 * Update user information
	 * @param user the user
	 */
	void updateUser(User user);

	/**
	 * Delete user by user id
	 * @param id id of user
	 */
	void deleteUserById(long id);

}
