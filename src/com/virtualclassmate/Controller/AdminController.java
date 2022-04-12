package com.virtualclassmate.Controller;

import java.lang.ProcessBuilder.Redirect;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import com.virtualclassmate.DAO.AdminDAO;
import com.virtualclassmate.VO.AdminVO;

@Controller
public class AdminController {

	@Autowired AdminDAO adminDAO;
	
	
	@RequestMapping(value="/adminLogin.html",method=RequestMethod.GET)
	public ModelAndView adminLogin(){
		return new ModelAndView("admin/login","AdminVO",new AdminVO());
	}
	@RequestMapping(value="/loginCheck.html",method=RequestMethod.POST)
	public ModelAndView loginCheck(@ModelAttribute AdminVO adminVO){

		System.out.println(adminVO.getUserName());
		
		try{
			adminDAO.checkLogins(adminVO);
			
		}
		catch(Exception e)
		{
			return new ModelAndView("redirect:/adminLogin.html");
		}
		return new ModelAndView("admin/index");
	}
	
	
}
