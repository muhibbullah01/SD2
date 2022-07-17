package com.muhib.sd2.vaccineRegistration.controller;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import com.muhib.sd2.vaccineRegistration.bean.Entity;
import com.muhib.sd2.vaccineRegistration.dao.RegDAO;

@Controller
public class ServletController {

	RegDAO dao = new RegDAO();
	@RequestMapping("/register")
	public ModelAndView UserRegistration(HttpServletRequest req,HttpServletResponse res) {
		
		String info = null;
		String result = null;
		int nid = Integer.parseInt(req.getParameter("nid"));
		String name = req.getParameter("name");
		String gender = req.getParameter("gender");
		String dob = req.getParameter("dob");
		int contact = Integer.parseInt(req.getParameter("contact"));
		String address = req.getParameter("address");
		String center = req.getParameter("center");
		
		Entity et = new Entity(nid,name,gender,dob,contact,address,center);
		info = dao.insertData(et);
		
		ModelAndView mv = new ModelAndView();
		if(info != null) {
			
			mv.setViewName("Home.jsp");
			mv.addObject("name", name);
			mv.addObject("nid", nid);
			mv.addObject("gender", gender);
			mv.addObject("dob", dob);
			mv.addObject("contact", contact);
			mv.addObject("address", address);
			mv.addObject("center", center);
			
		}else {
			mv.setViewName("RegError.jsp");
		}
		
		return mv;
	}
}
