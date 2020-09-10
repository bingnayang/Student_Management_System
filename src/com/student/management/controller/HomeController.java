package com.student.management.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;

import com.student.management.dao.StudentDAO;
import com.student.management.entity.Student;
import com.student.management.service.StudentService;

@Controller
public class HomeController {
	// Inject student service
	@Autowired
	private StudentService studentService;
	
	@GetMapping("/home-page")
	public String showMainPaage(Model theModel) {
		// Get students from the service
		List<Student> theStudents = studentService.getStudents();
		// Add the students to the model
		theModel.addAttribute("students",theStudents);
		
		return "home-page";
	}
}
