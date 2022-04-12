package com.virtualclassmate.Controller;

import org.springframework.beans.factory.annotation.Autowired;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import com.virtualclassmate.DAO.RegDAO;
import com.virtualclassmate.VO.RegVO;

@Controller
public class BasicController {

	@Autowired
	RegDAO regDAO;

	@RequestMapping(value = "load.html", method = RequestMethod.GET)
	public ModelAndView Load() {

		return new ModelAndView("Registration", "RegVO", new RegVO());

	}

	@RequestMapping(value = "insert.html", method = RequestMethod.POST)
	public ModelAndView Insert(@ModelAttribute RegVO RegVO) {

		regDAO.insert(RegVO);
		return new ModelAndView("redirect:/load.html");

	}


	
}
