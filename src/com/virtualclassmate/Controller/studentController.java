package com.virtualclassmate.Controller;

import org.springframework.beans.factory.annotation.Autowired;

import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.virtualclassmate.DAO.ParentInformationDAO;
import com.virtualclassmate.DAO.StudentDAO;
import com.virtualclassmate.VO.FeesVO;
import com.virtualclassmate.VO.ParentInformationVO;
import com.virtualclassmate.VO.StudentVO;

import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

@Controller
public class studentController {
	@Autowired
	StudentDAO sdao;
	
	@Autowired 
	ParentInformationDAO parentInformationDAO;
 	
	@RequestMapping(value="/infodisplay.html",method=RequestMethod.GET)
	public ModelAndView information_display(HttpSession session,ModelMap model,@ModelAttribute StudentVO sVO,@ModelAttribute ParentInformationVO pVO,HttpServletRequest request){
		
		int id = (int) session.getAttribute("s_id");
		
		//System.out.println(id1);
		//System.out.println("lol");

		//System.out.println("lol");
			//SearchLogin =  loginDAO.searchLoginID(teacherNameU);
		List infoDisplay =  parentInformationDAO.parent_display(id);
			//model.addAttribute("uname",userNameU);
		Iterator it = infoDisplay.iterator();
		ParentInformationVO pvo;
		while (it.hasNext())
		{
		pvo = (ParentInformationVO) it.next(); 
			 //System.out.println("aamchi"+pvo.getFname());
			 
		}
		System.out.println("print");
		return new ModelAndView("student/studentInformation","iinfo",infoDisplay);
		/*List infoDisplay1 = sdao.editStudentfinal(id);
		//model.addAttribute("uname",userNameU);
	Iterator it1 = infoDisplay1.iterator();
	StudentVO svo;
	while (it.hasNext())
	{
	svo = (StudentVO) it.next(); 
		 //System.out.println("aamchi"+pvo.getFname());
		 
	}
		System.out.println("print1");
		return new ModelAndView("student/studentInformation","sinfo",infoDisplay1);
	*/	
		

		
	}
}
