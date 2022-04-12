package com.virtualclassmate.Controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

@Controller
public class ParentsController {
	@RequestMapping(value={"/parents_load.html"},method=RequestMethod.GET)
	public ModelAndView parents_pgload() {

		return new ModelAndView("student/parentInformation");
	}
}
