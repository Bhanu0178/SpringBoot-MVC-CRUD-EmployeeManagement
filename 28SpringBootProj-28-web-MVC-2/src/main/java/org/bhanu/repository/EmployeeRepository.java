package org.bhanu.repository;

import org.bhanu.entity.Employee;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

@Repository
public interface EmployeeRepository extends JpaRepository<Employee, Integer> {
	boolean existsByIdOrMail(Integer id, String mail);
}

