package com.student.management.service;

import java.util.List;

import javax.transaction.Transactional;

import org.hibernate.Session;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.student.management.dao.StudentDAO;
import com.student.management.entity.Student;

@Service
public class StudentServiceImplement implements StudentService {
	// Need to inject student dao
	@Autowired
	private StudentDAO studentDAO;
	
	@Override
	@Transactional
	public List<Student> getStudents() {
		return studentDAO.getStudents();
	}

	@Override
	@Transactional
	public void saveStudent(Student theStudent) {	
		studentDAO.saveStudent(theStudent);
		
	}

	@Override
	@Transactional
	public Student getStudent(int theId) {
		// TODO Auto-generated method stub
		return studentDAO.getStudents(theId);
	}

	@Override
	@Transactional
	public void deleteStudent(int theId) {
		studentDAO.deleteStudent(theId);
		
	}

}
