package topica.linhnv5.spring.web.mvc.service;

import org.springframework.data.domain.Page;

import topica.linhnv5.spring.web.mvc.model.Application;

public interface IAppService {

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
	Page<Application> findByName(String name, int pageindex, int pagesize);	

	/**
	 * Get application by name
	 * @param letter prefix of app name, All for all result
	 * @param name   query string for name
	 * @param limit  number of app fetcher, -1 if fetch all
	 * @return the user
	 */
	Page<Application> searchByName(String letter, String name, int pageindex, int pagesize);	

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
