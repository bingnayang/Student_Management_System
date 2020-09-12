package com.student.management.dao;

import java.util.List;

import javax.transaction.Transactional;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.query.Query;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import com.student.management.entity.Student;

@Repository
public class StudentDAOImplement implements StudentDAO {
	// Need to inject the session factory
	@Autowired
	private SessionFactory sessionFactory;
	
	@Override
	public List<Student> getStudents() {
		//Get the current hibernate session
		Session currentSession = sessionFactory.getCurrentSession();
		// Create a query and sort by last name
		Query<Student> theQuery = currentSession.createQuery("from Student order by lastName",Student.class);
		// Execute query and get result list
		List<Student> students = theQuery.getResultList();
		// Return the results
		
		return students;
	}

	@Override
	public void saveStudent(Student theStudent) {
		// Get current hibernate session
		Session currentSession = sessionFactory.getCurrentSession();		
		// Save or update the student to database
		currentSession.saveOrUpdate(theStudent);
	}

	@Override
	public Student getStudents(int theId) {
		// Get current hibernate session
		Session currentSession = sessionFactory.getCurrentSession();	
		// Read from database using the id
		Student theStudent = currentSession.get(Student.class,theId);	
		return theStudent;
	}

}
