package topica.linhnv5.spring.web.mvc.controller;

import java.net.URI;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.MediaType;
import org.springframework.http.RequestEntity;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.client.RestTemplate;
import org.springframework.web.servlet.ModelAndView;

import topica.linhnv5.spring.web.mvc.model.Application;

@Controller
@RequestMapping(value = "/app")
public class AppController {

	@Autowired
	private RestTemplate restTemplate;

	@GetMapping(value = "/{id}")
	public ModelAndView home(@PathVariable("id") String id) throws Exception {
		// Request to api app
		RequestEntity<?> request = RequestEntity
			     .get(new URI("http://localhost:8080/api/app/"+id))
			     .accept(MediaType.APPLICATION_JSON)
			     .build();

		// get application
		ResponseEntity<Application> response = restTemplate.exchange(request, Application.class);

		ModelAndView model = new ModelAndView("app/detail");
	    model.addObject("app", response.getBody());
	    return model;
	}

}
