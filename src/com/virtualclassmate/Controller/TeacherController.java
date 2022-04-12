package com.virtualclassmate.Controller;

import java.io.BufferedOutputStream;
import java.io.File;
import java.io.FileInputStream;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.OutputStream;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.ServletContext;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.multipart.commons.CommonsMultipartFile;
import org.springframework.web.servlet.ModelAndView;
import com.cloudinary.Cloudinary;
import com.cloudinary.utils.ObjectUtils;
//import com.utils.apiCalls;
import com.virtualclassmate.DAO.StudentDAO;

@Controller
public class TeacherController {
/*	@Autowired 
	apiCalls apicalls;
*/	
	@Autowired
	StudentDAO sDAO;
	@RequestMapping(value={"loadResourceteacher.html"},method=RequestMethod.GET)
	public ModelAndView LoadIdentity() {

		return new ModelAndView("teacher/uploadResource");
	}
	@RequestMapping(value={"loadResourcestudent.html"},method=RequestMethod.GET)
	public ModelAndView LoadIdentitystudent() {

		return new ModelAndView("student/fileview");
	}
	@RequestMapping(value={"UpdateIdentityCard.html"},method=RequestMethod.GET)
	public ModelAndView LoadIdentityCard() {

		return new ModelAndView("teacher/UpdateIdentityCard");
	}
	@RequestMapping(value={"Video.html"},method=RequestMethod.GET)
	public ModelAndView Loadvideo() {

		return new ModelAndView("teacher/Mediastream");
	}

	@RequestMapping(value={"mystudent.html"},method=RequestMethod.GET)
	public ModelAndView Loadmystudent() {

		List SearchList =new ArrayList<>();
		
		SearchList =  sDAO.viewStudent();
	
		return new ModelAndView("teacher/mystudent","sinfo",SearchList);
	}
	@RequestMapping(value={"dashboard.html"},method=RequestMethod.GET)
	public ModelAndView Loaddashboard() {

		return new ModelAndView("teacher/dashboard");
	}
	@RequestMapping(value={"parentinformation.html"},method=RequestMethod.GET)
	public ModelAndView Loadparentinformation() {

		return new ModelAndView("teacher/parentinformation");
	}
	@RequestMapping(value={"dash.html"},method=RequestMethod.GET)
	public ModelAndView LoadDash() {

		return new ModelAndView("teacher/dashboard");
	}

	@RequestMapping(value = "uploadFile.html", method = RequestMethod.POST)
	public ModelAndView submit(@RequestParam("file") MultipartFile file, ModelMap modelMap) {
	modelMap.addAttribute("file", file);
	//return "fileUploadView";
	return new ModelAndView("teacher/fileview");
	
	}

/*	@RequestMapping(value="addImageCloud.html",method= RequestMethod.POST)
	public ModelAndView addImageCloud(@RequestParam(value = "file") MultipartFile files){

		String filename = files.getOriginalFilename();
		String returnResult[]=null;
		try {
			returnResult = apicalls.uploadToCloudinary(files);
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return new ModelAndView("student/dashboard");
		
	}*/
	
	@RequestMapping(value="readfile.html",method=RequestMethod.POST)
	public ModelAndView upload(@RequestParam CommonsMultipartFile file,HttpSession session,ModelMap modelMap)
	{
		String path=session.getServletContext().getRealPath("/");
		String filename=file.getOriginalFilename();
		String finalpath=path.concat(filename);
		
		System.out.println(path+" "+filename);
		modelMap.addAttribute("path", finalpath);
		session.setAttribute("fpath", finalpath);
		session.setAttribute("filename", filename);
		try{
			byte barr[]=file.getBytes();
			
			BufferedOutputStream bout=new BufferedOutputStream(new FileOutputStream(path+"/"+filename));
			Object o=bout;
			bout.write(barr);
			bout.flush();
			bout.close();
		}
		catch(Exception e){System.out.println(e);}
		
		return new ModelAndView("teacher/dashboard").addObject("finalpath", finalpath);
			
		
	}
	
	/*@RequestMapping(value="download.html")
	public class FileDownloadController {
	*/     
	    /**
	     * Size of a byte buffer to read/write file
	     */
	    private static final int BUFFER_SIZE = 4096;
	             
	    /**
	     * Path of the file to be downloaded, relative to application's directory
	     */
	   // HttpServletRequest request;
	     
	    /**
	     * Method for handling file download request from client
	     */
	    @RequestMapping(value="download.html",method = RequestMethod.GET)
	    public void doDownload(HttpServletRequest request,
	            HttpServletResponse response,HttpSession session) throws IOException {
	 
	    	//  String s1=request.getParameter("finalpath");
	  	    String s1=(String)session.getAttribute("fpath"); 
	    	String filePath = s1;
	  	  System.out.println("s1 here ="+s1);
	        // get absolute path of the application
	        ServletContext context = request.getServletContext();
	        String appPath = context.getRealPath("");
	        System.out.println("appPath = " + appPath);
	 
	        // construct the complete absolute path of the file
	        String fullPath = appPath + filePath;      
	        File downloadFile = new File(s1);
	        FileInputStream inputStream = new FileInputStream(downloadFile);
	         
	        // get MIME type of the file
	        String mimeType = context.getMimeType(fullPath);
	        if (mimeType == null) {
	            // set to binary type if MIME mapping not found
	            mimeType = "application/octet-stream";
	        }
	        System.out.println("MIME type: " + mimeType);
	 
	        // set content attributes for the response
	        response.setContentType(mimeType);
	        response.setContentLength((int) downloadFile.length());
	 
	        // set headers for the response
	        String headerKey = "Content-Disposition";
	        String headerValue = String.format("attachment; filename=\"%s\"",
	                downloadFile.getName());
	        response.setHeader(headerKey, headerValue);
	 
	        // get output stream of the response
	        OutputStream outStream = response.getOutputStream();
	 
	        byte[] buffer = new byte[BUFFER_SIZE];
	        int bytesRead = -1;
	 
	        // write bytes read from the input stream into the output stream
	        while ((bytesRead = inputStream.read(buffer)) != -1) {
	            outStream.write(buffer, 0, bytesRead);
	        }
	 
	        inputStream.close();
	        outStream.close();
	 
	    }
	
	
}
	
//}

