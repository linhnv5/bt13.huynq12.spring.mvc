package topica.linhnv5.spring.web.mvc.controller;

import java.net.URI;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Value;
import org.springframework.http.MediaType;
import org.springframework.http.RequestEntity;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.client.RestTemplate;
import org.springframework.web.servlet.ModelAndView;

import topica.linhnv5.spring.web.mvc.model.AppContentResponse;

@Controller
public class HomeController {

	@Autowired
	private RestTemplate restTemplate;

	@Value("${app.api.page}")
	private String appAPI;

	@GetMapping(value="/")
	public ModelAndView home() throws Exception {
		// Request to api app
		RequestEntity<?> request = RequestEntity
			     .get(new URI(appAPI))
			     .accept(MediaType.APPLICATION_JSON)
			     .build();

		// get application
		ResponseEntity<AppContentResponse> response = restTemplate.exchange(request, AppContentResponse.class);

		// Return to view
		ModelAndView model = new ModelAndView("home/index");
	    model.addObject("apps", response.getBody());
	    return model;
	}

	@GetMapping(value="/latest")
	public ModelAndView latest(@RequestParam(defaultValue = "0") int page) throws Exception {
		// Request to api app
		RequestEntity<?> request = RequestEntity
			     .get(new URI(appAPI+"?page="+page))
			     .accept(MediaType.APPLICATION_JSON)
			     .build();

		// get application
		ResponseEntity<AppContentResponse> response = restTemplate.exchange(request, AppContentResponse.class);

		// Return to view
		ModelAndView model = new ModelAndView("home/latest");
	    model.addObject("apps", response.getBody());
	    return model;
	}

}
