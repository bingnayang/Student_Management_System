package com.student.management.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;

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
	
	@GetMapping("/formAddNewStudent")
	public String formAddNewStudent(Model theModel) {
		// Create model attribute to bind form data
		Student theStudent = new Student();
		theModel.addAttribute("student",theStudent);
		return "newStudent-form";
	}
	
	@PostMapping("/saveStudent")
	public String saveStudent(@ModelAttribute("student") Student theStudent) {
		// Save the student using service
		studentService.saveStudent(theStudent);
		
		return "redirect:/home-page";
	}
	
	@GetMapping("/showFormForUpdate")
	public String showFormForUpdate(@RequestParam("studentId") int theId, Model theModel) {
		// Get the student from the service
		Student theStudent = studentService.getStudent(theId);
		// Set student as a model attribute to pre-populate the form
		theModel.addAttribute("student",theStudent);
		// Send to form
		return "updateStudent-form";
		
	}
	
	@GetMapping("/forDelete")
	public String forDelete(@RequestParam("studentId") int theId, Model theModel) {
		// Delete the student
		studentService.deleteStudent(theId);
		
		return "redirect:/home-page";
		
	}
}
