package topica.linhnv5.spring.web.mvc.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.PageRequest;
import org.springframework.stereotype.Service;

import topica.linhnv5.spring.web.mvc.model.Application;
import topica.linhnv5.spring.web.mvc.repository.ApplicationRepository;

/**
 * App service
 * @author ljnk975
 */
@Service
public class AppService implements IAppService {

	@Autowired
	private ApplicationRepository appRepository;

	@Override
	public Application findById(String id) {
		return appRepository.findById(id).get();
	}

	@Override
	public Page<Application> findByName(String name, int pageindex, int pagesize) {
		if (name == null)
			name = "";

		return appRepository.findByTitleStartsWithIgnoreCase(name, PageRequest.of(pageindex, pagesize));
	}

	@Override
	public Page<Application> searchByName(String letter, String name, int pageindex, int pagesize) {
		if (letter.equalsIgnoreCase("All"))
			letter = "";
		return appRepository.findByTitleContainsIgnoreCase(letter, name, PageRequest.of(pageindex, pagesize));
	}

	@Override
	public void saveApp(Application app) {
		appRepository.save(app);
	}

	@Override
	public void updateApp(Application app) {
		Application old = appRepository.findById(app.getId()).get();

		old.setTitle(app.getTitle());
		old.setAppDescription(app.getAppDescription());
		old.setCurrentRatings(app.getCurrentRatings());
		old.setAppImageUrl(app.getAppImageUrl());
		old.setAppDownloadURL(app.getAppDownloadURL());

		appRepository.save(old);
	}

	@Override
	public void deleteAppById(String id) {
		appRepository.deleteById(id);
	}

}
