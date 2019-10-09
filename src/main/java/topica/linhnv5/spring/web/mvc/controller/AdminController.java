package topica.linhnv5.spring.web.mvc.controller;

import java.net.URI;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Value;
import org.springframework.http.HttpStatus;
import org.springframework.http.MediaType;
import org.springframework.http.RequestEntity;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.client.RestTemplate;
import org.springframework.web.servlet.ModelAndView;

import topica.linhnv5.spring.web.mvc.model.Application;

@Controller
@RequestMapping(value = "/admin")
public class AdminController {

	@Autowired
	private RestTemplate restTemplate;

	@Value("${app.api.page}")
	private String appAPI;

	@GetMapping()
	public ModelAndView adminHome() throws Exception {
		ModelAndView model = new ModelAndView("admin/dashboard/index");
	    return model;
	}

	@GetMapping(value="/apps")
	public ModelAndView appsView() throws Exception {
		// Return to view
		ModelAndView model = new ModelAndView("admin/apps/index");
	    return model;
	}

	@GetMapping(value="/apps/create")
	public ModelAndView createApp() throws Exception {
		ModelAndView model = new ModelAndView("admin/apps/create-app");
	    return model;
	}

	@PostMapping(value="/apps/create")
	public ModelAndView doCreateApp(@ModelAttribute Application app) throws Exception {
		// Request to api app
		RequestEntity<?> request = RequestEntity
			     .post(new URI(appAPI))
			     .accept(MediaType.APPLICATION_JSON)
			     .body(app);

		// get application
		ResponseEntity<Application> response = restTemplate.exchange(request, Application.class);

		// Return view
        ModelAndView model = new ModelAndView("admin/apps/create-app");

        // Check if app exists
        if (response.getStatusCode() == HttpStatus.CONFLICT) {
	        model.addObject("errorMessage", "App ID exists!");
	    // else set success message
        } else {
			model.addObject("successMessage", "Add App Successful");
        }

	    return model;
	}

	@GetMapping(value="/apps/edit/{id}")
	public ModelAndView appsEdit(@PathVariable("id") String id) throws Exception {
		// Request to api app
		RequestEntity<?> request = RequestEntity
			     .get(new URI(appAPI+"/"+id))
			     .accept(MediaType.APPLICATION_JSON)
			     .build();

		// get application
		ResponseEntity<Application> response = restTemplate.exchange(request, Application.class);

		ModelAndView model = new ModelAndView("admin/apps/edit-app");
	    model.addObject("app", response.getBody());
	    return model;
	}

	@PostMapping(value="/apps/edit/{id}")
	public ModelAndView doAppsEdit(@PathVariable("id") String id, @ModelAttribute Application app) throws Exception {
		// Return view
		ModelAndView model = new ModelAndView("admin/apps/edit-app");

		// Check id
		if (!id.equals(app.getId())) {
	        model.addObject("errorMessage", "App "+id+" can't change!");
		} else {
			// Request to api app
			RequestEntity<?> request = RequestEntity
					 .put(new URI(appAPI+"/"+id))
				     .accept(MediaType.APPLICATION_JSON)
				     .body(app);

			// get application
			ResponseEntity<Application> response = restTemplate.exchange(request, Application.class);

			// If app id not found
			if (response.getStatusCode() == HttpStatus.NOT_FOUND) {
		        model.addObject("errorMessage", "App "+id+" not exists!");
		    // else set success message
	        } else {
				model.addObject("successMessage", "App "+id+" edit successful!");
	        }
		}

	    model.addObject("app", app);
	    return model;
	}

}
