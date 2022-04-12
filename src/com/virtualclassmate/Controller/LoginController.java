package com.virtualclassmate.Controller;

import java.util.ArrayList;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.apache.http.client.fluent.Request;
import org.springframework.beans.factory.annotation.Autowired;

import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.security.core.userdetails.User;
import org.springframework.security.web.authentication.logout.SecurityContextLogoutHandler;


import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.virtualclassmate.DAO.LoginDAO;
import com.virtualclassmate.DAO.RegDAO;
import com.virtualclassmate.DAO.StudentDAO;
import com.virtualclassmate.DAO.TeacherDAO;
import com.virtualclassmate.VO.LoginVO;
import com.virtualclassmate.VO.RegVO;
import com.virtualclassmate.VO.StudentVO;
import com.virtualclassmate.VO.TeacherVO;
;

@Controller
public class LoginController {

	@Autowired
	LoginDAO loginDAO;
	@Autowired
	RegDAO regDAO;
	@Autowired
	TeacherDAO tDAO;
	@Autowired
	StudentDAO sDAO;
	
	
	
	/*@RequestMapping(value="/student.html",method=RequestMethod.GET)
	public ModelAndView userindex(ModelMap model){
		
		User user = (User) SecurityContextHolder.getContext().getAuthentication().getPrincipal();
		String userNameU = user.getUsername();
		//String Password = user.getPassword();
		
		model.addAttribute("uname",userNameU);
	
		
		return new ModelAndView("student/dashboard");
		
	}
	*/
	
	@RequestMapping(value="/teacherfinal.html",method=RequestMethod.GET)
	public ModelAndView teacherindexfinal(ModelMap model,@ModelAttribute TeacherVO tVO,HttpServletRequest request){
		
		User user = (User) SecurityContextHolder.getContext().getAuthentication().getPrincipal();
		String teacherNameU = user.getUsername();
		//String Password = user.getPassword();
		
		String getid = request.getParameter("in");
		int id = Integer.parseInt(getid);
		 List SearchList =new ArrayList<>();
		
		//	SearchList =  tDAO.viewTeacher();
			SearchList =  tDAO.editTeacherfinal(id);
			
		model.addAttribute("tname",teacherNameU);
		
		return new ModelAndView("teacher/dashboard","tinfo",SearchList);
		
	}
	@RequestMapping(value="/teacher.html",method=RequestMethod.GET)
	public ModelAndView teacherindex(ModelMap model,@ModelAttribute TeacherVO tVO){
		
		User user = (User) SecurityContextHolder.getContext().getAuthentication().getPrincipal();
		String teacherNameU = user.getUsername();
		//String Password = user.getPassword();
		 List SearchLogin =new ArrayList<>();
			//SearchLogin =  loginDAO.searchLoginID(teacherNameU);
		 SearchLogin =  loginDAO.viewLogin();
		//System.out.println(SearchLogin.iterator());
		List SearchList =new ArrayList<>();
		
			SearchList =  tDAO.viewTeacher();
			
		model.addAttribute("tname",teacherNameU);
		
		return new ModelAndView("teacher/check","linfo",SearchLogin);
		
	}
	@RequestMapping(value="/student.html",method=RequestMethod.GET)
	public ModelAndView userindex(ModelMap model){
		
		User user = (User) SecurityContextHolder.getContext().getAuthentication().getPrincipal();
		String userNameU = user.getUsername();
		//String Password = user.getPassword();
		 List SearchLogin =new ArrayList<>();
			//SearchLogin =  loginDAO.searchLoginID(teacherNameU);
		 SearchLogin =  loginDAO.viewLogin();
	
		model.addAttribute("uname",userNameU);
	
		
		return new ModelAndView("student/check","linfo",SearchLogin);
		
	}
	@RequestMapping(value="/studentfinal.html",method=RequestMethod.GET)
	public ModelAndView userindexfinal(ModelMap model,@ModelAttribute StudentVO sVO,HttpSession session,HttpServletRequest request){
		
		User user = (User) SecurityContextHolder.getContext().getAuthentication().getPrincipal();
		String userNameU = user.getUsername();
		//String Password = user.getPassword();
		String getid = request.getParameter("in");
		int id = Integer.parseInt(getid);
		
		
		List SearchLogin =new ArrayList<>();
			//SearchLogin =  loginDAO.searchLoginID(teacherNameU);
		 SearchLogin =  sDAO.editStudentfinal(id);
	
		//model.addAttribute("uname",userNameU);
		 session.setAttribute("s_id", id);
		session.setAttribute("uname", userNameU);
		return new ModelAndView("student/dashboard","tinfo",SearchLogin);
		
	}
	
	
	
	@RequestMapping(value={"/","/login.html"},method=RequestMethod.GET)
	public ModelAndView Load() {

		return new ModelAndView("login");
	}
	
	@RequestMapping(value = "login_insert.html", method = RequestMethod.POST)
	public ModelAndView Insert() {
		return new ModelAndView("redirect:/lo.html");
	}
	@RequestMapping(value ="register.html", method = RequestMethod.GET)
	public ModelAndView Register_Load() {
		
		return new ModelAndView("register","REGISTERVO",new RegVO());

	}
	@RequestMapping(value="editRegister.html",method=RequestMethod.GET)
	public ModelAndView editRegister(HttpSession session,@ModelAttribute LoginVO loginVO)
	{		
			String x = (String) session.getAttribute("uname");
			System.out.println(x);
			loginVO.setUsername(x);
			List editList = loginDAO.searchstep1(loginVO);
			return new ModelAndView("student/Setting", "LoginVO", editList.get(0));

	}
	@RequestMapping(value="updatePassword.html",method=RequestMethod.POST)
	public ModelAndView updatePassword(@ModelAttribute LoginVO loginVO)
	{		
			
			
			loginDAO.updatePassword(loginVO);
			return new ModelAndView("login");

	}
}
