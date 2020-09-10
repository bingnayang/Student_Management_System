package com.student.management.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import com.student.management.dao.StudentDAO;
import com.student.management.entity.Student;

@Controller
public class HomeController {
	
	@Autowired
	private StudentDAO studentDAO;
	
	@RequestMapping("/home-page")
	public String showMainPaage(Model theModel) {
		// Get students from the dao
		List<Student> theStudents = studentDAO.getStudents();
		// Add the students to the model
		theModel.addAttribute("students",theStudents);
		
		return "home-page";
	}
}
