package topica.linhnv5.spring.web.mvc.controller.api;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpHeaders;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;
import org.springframework.web.util.UriComponentsBuilder;

import topica.linhnv5.spring.web.mvc.model.Application;
import topica.linhnv5.spring.web.mvc.service.AppService;

@RestController
@RequestMapping("/api/app")
public class AppRestController {

	@Autowired
	private AppService appService;

	// -------------------Retrieve All Apps---------------------------------------------
	@RequestMapping(method = RequestMethod.GET)
	public ResponseEntity<?> listAllApps(@RequestParam(defaultValue = "-1") int lent) {
		List<Application> apps = appService.findByName("", lent);
		if (apps.isEmpty())
			return new ResponseEntity<>(HttpStatus.NO_CONTENT);
		return new ResponseEntity<List<Application>>(apps, HttpStatus.OK);
	}

	// -------------------Retrieve All Apps By Name---------------------------------------------
	@RequestMapping(value = "/search/{name}", method = RequestMethod.GET)
	public ResponseEntity<?> listAllAppsByName(@PathVariable("name") String name, @RequestParam(defaultValue = "-1") int lent) {
		List<Application> apps = appService.findByName(name, lent);
		if (apps.isEmpty())
			return new ResponseEntity<>(HttpStatus.NO_CONTENT);
		return new ResponseEntity<List<Application>>(apps, HttpStatus.OK);
	}

	// -------------------Retrieve Single App------------------------------------------
	@RequestMapping(value = "/{id}", method = RequestMethod.GET)
	public ResponseEntity<?> getApp(@PathVariable("id") String id) {
		Application app = appService.findById(id);
		if (app == null)
			return new ResponseEntity<>("App with id " + id  + " not found", HttpStatus.NOT_FOUND);
		return new ResponseEntity<Application>(app, HttpStatus.OK);
	}

	// -------------------Create a App-------------------------------------------
	@RequestMapping(method = RequestMethod.POST)
	public ResponseEntity<?> createApp(@RequestBody Application app, UriComponentsBuilder ucBuilder) {
		if (appService.findById(app.getId()) != null)
			return new ResponseEntity<>("Unable to create. App with id " +  app.getId() + " already exist.", HttpStatus.CONFLICT);

		appService.saveApp(app);

		HttpHeaders headers = new HttpHeaders();
		headers.setLocation(ucBuilder.path("/api/app/{id}").buildAndExpand(app.getId()).toUri());
		return new ResponseEntity<String>(headers, HttpStatus.CREATED);
	}

	// ------------------- Update a User ------------------------------------------------
	@RequestMapping(value = "/{id}", method = RequestMethod.PUT)
	public ResponseEntity<?> updateUser(@PathVariable("id") String id, @RequestBody Application app) {
		Application currentApp = appService.findById(id);

		if (currentApp == null)
			return new ResponseEntity<>("Unable to upate. App with id " + id + " not found.", HttpStatus.NOT_FOUND);

		appService.updateApp(app);
		return new ResponseEntity<Application>(app, HttpStatus.OK);
	}

	// ------------------- Delete a User-----------------------------------------
	@RequestMapping(value = "/{id}", method = RequestMethod.DELETE)
	public ResponseEntity<?> deleteUser(@PathVariable("id") String id) {
		Application app = appService.findById(id);
		if (app == null)
			return new ResponseEntity<>("Unable to delete. App with id " + id + " not found.", HttpStatus.NOT_FOUND);
		appService.deleteAppById(id);
		return new ResponseEntity<Application>(HttpStatus.NO_CONTENT);
	}

}
