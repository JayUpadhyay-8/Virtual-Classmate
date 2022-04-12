package com.virtualclassmate.Controller;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

@Controller
public class studentResources {

	@RequestMapping(value={"/studentres.html"},method=RequestMethod.GET)
	public ModelAndView res_load(HttpServletRequest request,
            HttpServletResponse response,HttpSession session,ModelMap model) {
		String s1=(String)session.getAttribute("fpath");
		String fileN=(String)session.getAttribute("filename");
		System.out.println("s1 in studentResource here ="+s1);
		model.addAttribute("path",s1);
		
		return new ModelAndView("student/StudentResources","pathf",s1);
	}
}
