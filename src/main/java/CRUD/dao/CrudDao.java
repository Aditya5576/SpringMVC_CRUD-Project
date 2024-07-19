package CRUD.dao;

import java.util.List;

import javax.persistence.EntityManager;
import javax.persistence.EntityManagerFactory;
import javax.persistence.EntityTransaction;
import javax.persistence.Persistence;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;

import CRUD.dto.Employee;

@Component
public class CrudDao {

	@Autowired
	EntityManager manager;

	public void saveEmployee(Employee emloyee) {
		manager.getTransaction().begin();
		manager.persist(emloyee);
		manager.getTransaction().commit();
	}

	public void delete(int id) {
		manager.getTransaction().begin();
		manager.remove(manager.find(Employee.class, id));
		manager.getTransaction().commit();

	}

	public List<Employee> fetchAllEmployee() {
		return manager.createQuery("select x from Employee x").getResultList();
	}

	public Employee findById(int id) {
		return manager.find(Employee.class, id);
	}

	public void updateEmployee(Employee employee) {
		manager.getTransaction().begin();
		manager.merge(employee);
		manager.getTransaction().commit();

	}

}
