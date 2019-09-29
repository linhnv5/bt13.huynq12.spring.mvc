package topica.linhnv5.spring.web.mvc.service;

import java.util.List;

import topica.linhnv5.spring.web.mvc.model.Application;

public interface AppService {

	/**
	 * Get App by using id
	 * @param id id of app
	 * @return the app
	 */
	Application findById(String id);

	/**
	 * Get application by name
	 * @param name  prefix name of app, null for get all name
	 * @param limit number of app fetcher, -1 if fetch all
	 * @return the user
	 */
	List<Application> findByName(String name, int limit);	

	/**
	 * Add new app
	 * @param app the app
	 */
	void saveApp(Application app);

	/**
	 * Update app information
	 * @param app the app
	 */
	void updateApp(Application app);

	/**
	 * Delete app using app id
	 * @param id id of app
	 */
	void deleteAppById(String id);

}
