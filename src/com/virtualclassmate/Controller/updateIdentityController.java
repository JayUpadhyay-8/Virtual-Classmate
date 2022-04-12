package com.virtualclassmate.Controller;

import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.virtualclassmate.DAO.FeesDAO;
import com.virtualclassmate.DAO.IdentityDAO;
import com.virtualclassmate.DAO.ParentInformationDAO;
import com.virtualclassmate.DAO.StudentDAO;
import com.virtualclassmate.VO.IdentityVO;
import com.virtualclassmate.VO.ParentInformationVO;
import com.virtualclassmate.VO.StudentVO;

@Controller

public class updateIdentityController {
	@Autowired
	StudentDAO sdao;
	
	@Autowired
	IdentityDAO idao;
	
	@Autowired 
	ParentInformationDAO parentInformationDAO;
	@RequestMapping(value={"loadIdentity.html"},method=RequestMethod.GET)
	public ModelAndView LoadIdentity(HttpSession session,ModelMap model,@ModelAttribute StudentVO sVO,@ModelAttribute ParentInformationVO pVO,HttpServletRequest request) {
		
		int id = (int) session.getAttribute("s_id");
		System.out.println(id);
		
		List upidentityDisplay =  parentInformationDAO.parent_display(id);
		//model.addAttribute("uname",userNameU);
	Iterator it = upidentityDisplay.iterator();
	ParentInformationVO pvo;
	while (it.hasNext())
	{
	pvo = (ParentInformationVO) it.next(); 
		 //System.out.println("aamchi"+pvo.getFname());
		 
	}
	System.out.println("print");
	return new ModelAndView("student/UpdateIdentity","uinfo",upidentityDisplay);
		
	}
	
	@RequestMapping(value = "editIdentity.html", method = RequestMethod.GET)
	public ModelAndView editIdentity(@RequestParam("id") String id, @ModelAttribute IdentityVO identityVO) {
		identityVO.setId(Integer.parseInt(id));
		List editList = idao.editidentity(identityVO);
		return new ModelAndView("student/UpdateIdentity", "IdentityVO", editList.get(0));

	}
}
