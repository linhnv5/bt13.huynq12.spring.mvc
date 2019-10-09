package topica.linhnv5.spring.web.mvc.controller.api;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Value;
import org.springframework.data.domain.Page;
import org.springframework.http.HttpHeaders;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.security.access.prepost.PreAuthorize;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;
import org.springframework.web.util.UriComponentsBuilder;

import topica.linhnv5.spring.web.mvc.model.AppContentResponse;
import topica.linhnv5.spring.web.mvc.model.Application;
import topica.linhnv5.spring.web.mvc.service.IAppService;

@RestController
@RequestMapping("/api/app")
public class AppRestController {

	@Autowired
	private IAppService appService;

	@Value("${app.admin.page.size}")
	private int appPageSize;

	// -------------------Retrieve All Apps---------------------------------------------
	@RequestMapping(method = RequestMethod.GET)
	public ResponseEntity<?> appResource(@RequestParam(defaultValue = "0") int page, @RequestParam(defaultValue = "All") String letter, @RequestParam(defaultValue = "") String q) throws Exception {
		// Find app
		Page<Application> apps = appService.searchByName(letter, q, page, appPageSize);

		if (apps.isEmpty())
			return new ResponseEntity<>(HttpStatus.NO_CONTENT);

		// Return to view
		return new ResponseEntity<AppContentResponse>(new AppContentResponse("success", "200", apps), HttpStatus.OK);
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
	@PreAuthorize("hasRole('ADMIN')")
	public ResponseEntity<?> createApp(@RequestBody Application app, UriComponentsBuilder ucBuilder) {
		if (appService.findById(app.getId()) != null)
			return new ResponseEntity<>("Unable to create. App with id " +  app.getId() + " already exist.", HttpStatus.CONFLICT);

		appService.saveApp(app);

		HttpHeaders headers = new HttpHeaders();
		headers.setLocation(ucBuilder.path("/api/app/{id}").buildAndExpand(app.getId()).toUri());
		return new ResponseEntity<String>(headers, HttpStatus.CREATED);
	}

	// ------------------- Update a App ------------------------------------------------
	@RequestMapping(value = "/{id}", method = RequestMethod.PUT)
	public ResponseEntity<?> updateUser(@PathVariable("id") String id, @RequestBody Application app) {
		Application currentApp = appService.findById(id);

		if (currentApp == null)
			return new ResponseEntity<>("Unable to upate. App with id " + id + " not found.", HttpStatus.NOT_FOUND);

		appService.updateApp(app);
		return new ResponseEntity<Application>(app, HttpStatus.OK);
	}

	// ------------------- Delete a App-----------------------------------------
	@RequestMapping(value = "/{id}", method = RequestMethod.DELETE)
	@PreAuthorize("hasRole('ADMIN')")
	public ResponseEntity<?> deleteUser(@PathVariable("id") String id) {
		System.out.println("Id= "+id);
		Application app = appService.findById(id);
		if (app == null)
			return new ResponseEntity<>("Unable to delete. App with id " + id + " not found.", HttpStatus.NOT_FOUND);
		appService.deleteAppById(id);
		return new ResponseEntity<Application>(HttpStatus.NO_CONTENT);
	}

}
