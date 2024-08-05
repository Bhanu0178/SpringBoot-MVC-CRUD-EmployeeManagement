package org.bhanu.controller;

import org.bhanu.dto.EmployeeDTO;
import org.bhanu.entity.Employee;
import org.bhanu.service.EmployeeService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.DeleteMapping;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.servlet.ModelAndView;

import jakarta.servlet.http.HttpServletRequest;

@Controller
public class EmployeeController 
{
	@Autowired
	private EmployeeService service;
	
	
	@GetMapping("/")
	public String empServices() {
		return "employee";
	}
	
	@GetMapping("registration-form") 
	public String registrationForm() {
		return "register-form";
	}
	
	@GetMapping("logging-form")
	public String loggingForm() {
		return "login-form";
	}
	
	@GetMapping("deleting-form")
	public String deletingForm() {
		return "delete-form";
	}
	
	@GetMapping("updating-form")
	public String updatingForm() {
		return "update-form";
	}
	
	
	@PostMapping("checkforupdate")
	public ModelAndView checkForUpdate(HttpServletRequest req) {
		ModelAndView mav = new ModelAndView();
		try {
			EmployeeDTO dto = service.getEmpObjToUpdateById(Integer.valueOf(req.getParameter("id")));
			mav.addObject("dto", dto);
			mav.setViewName("update");
 		} catch(IllegalArgumentException ex) {
 			mav.addObject("message", ex.getMessage());
 			mav.setViewName("exception-message");
 		}//try/catch
		return mav;
	}
	
	@PostMapping("updated")
	public ModelAndView update(HttpServletRequest req) {
		ModelAndView mav = new ModelAndView();
		EmployeeDTO dto = new EmployeeDTO();
		dto.setId(Integer.valueOf(req.getParameter("id")));
		dto.setName(req.getParameter("name"));
		dto.setMail(req.getParameter("mail"));
		dto.setAddress(req.getParameter("address"));
		EmployeeDTO dto1 = service.updateEmp(dto);
		mav.addObject("emp", dto1);
		mav.setViewName("emp-added");
		return mav;
	}
	
	@PostMapping("delete")
	public ModelAndView delete(HttpServletRequest req) {
		ModelAndView mav = new ModelAndView();
		try {
			service.deleteEmp(Integer.valueOf(req.getParameter("id")));
			mav.addObject("message", "Employee Deleted With Id " + req.getParameter("id"));
			mav.setViewName("exception-message");
		} catch (IllegalArgumentException ex) {
			mav.addObject("message", ex.getMessage());
			mav.setViewName("exception-message");
		}
		return mav;
	}
	
	@PostMapping("login")
	public ModelAndView get(HttpServletRequest req) {
		ModelAndView mav = new ModelAndView();
		try {
			EmployeeDTO dto = service.getEmp(Integer.valueOf(req.getParameter("id")));
			mav.addObject("dto", dto);
			mav.setViewName("logged-emp");
		} catch(IllegalArgumentException ex) {
			mav.addObject("message", ex.getMessage());
			mav.setViewName("exception-message");
		}//try/catch
		return mav;
	}
	
	@PostMapping("register")
	//add employee
	public ModelAndView add(HttpServletRequest req) {
		EmployeeDTO dto = new EmployeeDTO();
		dto.setName(req.getParameter("name"));
		dto.setMail(req.getParameter("mail"));
		dto.setAddress(req.getParameter("address"));
		ModelAndView mav = new ModelAndView();
		try {
			Employee emp = service.addEmp(dto);
			mav.addObject("emp", emp);
			mav.setViewName("emp-added");
		} catch(IllegalArgumentException ex) {
			mav.addObject("message", ex.getMessage());
			mav.setViewName("exception-message");
		}//try/catch
		return mav;
	}
}
