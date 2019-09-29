package topica.linhnv5.spring.web.mvc.controller;

import java.net.URI;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.http.MediaType;
import org.springframework.http.RequestEntity;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
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

	@GetMapping()
	public ModelAndView adminHome() throws Exception {
		ModelAndView model = new ModelAndView("admin/dashboard/index");
	    return model;
	}

	@GetMapping(value="/apps/create-app")
	public ModelAndView createApp() throws Exception {
		ModelAndView model = new ModelAndView("admin/apps/create-app");
	    return model;
	}
	
	@PostMapping(value="/apps/create-app")
	public ModelAndView doCreateApp(@ModelAttribute Application app) throws Exception {
		// Request to api app
		RequestEntity<?> request = RequestEntity
			     .post(new URI("http://localhost:8080/api/app"))
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

}
