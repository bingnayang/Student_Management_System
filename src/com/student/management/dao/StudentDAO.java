package com.student.management.dao;

import java.util.List;

import com.student.management.entity.Student;

public interface StudentDAO {
	public List<Student> getStudents();

	public void saveStudent(Student theStudent);

	public Student getStudents(int theId);

	public void deleteStudent(int theId);
}
