package com.virtualclassmate.Controller;

import java.util.ArrayList;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.security.core.userdetails.User;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.virtualclassmate.DAO.FeesDAO;
import com.virtualclassmate.VO.FeesVO;
import com.virtualclassmate.VO.StudentVO;


@Controller
public class Feespayment {
	
	@Autowired
	FeesDAO fdao;
	

	
	@RequestMapping(value="/feesdisplay.html",method=RequestMethod.GET)
	public ModelAndView fees_display(ModelMap model,@ModelAttribute StudentVO sVO,@ModelAttribute FeesVO fVO,HttpSession session,HttpServletRequest request){
		
		int id = (int) session.getAttribute("s_id");
		//int id = Integer.parseInt(x);
		System.out.println(id);
		
		List FeesDisplay =new ArrayList<>();
			//SearchLogin =  loginDAO.searchLoginID(teacherNameU);
		 FeesDisplay =  fdao.fees_display(id);
	
		//model.addAttribute("uname",userNameU);
	
		System.out.println("print");
		return new ModelAndView("student/Feespayment","finfo",FeesDisplay);
		
	}
}
