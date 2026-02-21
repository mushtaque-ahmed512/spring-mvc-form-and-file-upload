package SpringErrorHandle;

import org.springframework.stereotype.Controller;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
public class FormController {

	
	@RequestMapping("/complex")
	public String shoeHome() {
		return "complex_form";
	}
	
	// @pathVariable (bind the method parameter in uri template)
	@RequestMapping("/book/{id}/{username}")
	public String Handler(@PathVariable("id") int id , @PathVariable("username") String username) {
		
		System.out.println(id);
		System.out.println(username);
		return "success"; 
	}
	
	
	@RequestMapping(path = "/handle" , method = RequestMethod.POST)
	public String formHandler(@ModelAttribute("student") Student student ,BindingResult result) {
		
		// if any error in form then print the error in form 
		if(result.hasErrors()) {
			return "complex_form";
		}
		
		System.out.println(student);
	    System.out.println();
		System.out.println(student.getAddress());
		
		return "success";
	}
}
