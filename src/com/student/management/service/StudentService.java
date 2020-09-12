package com.student.management.service;

import java.util.List;

import com.student.management.entity.Student;

public interface StudentService {
	public List<Student> getStudents();
	public void saveStudent(Student theStudent);
	public Student getStudent(int theId);
	public void deleteStudent(int theId);
}
