package org.bhanu.service;

import java.util.Random;

import org.bhanu.dto.EmployeeDTO;
import org.bhanu.entity.Employee;
import org.bhanu.repository.EmployeeRepository;
import org.modelmapper.ModelMapper;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class EmployeeService 
{
	@Autowired
	private EmployeeRepository repo;
	
	@Autowired
	private ModelMapper modelMapper;
	
	//add employee
	public Employee addEmp(EmployeeDTO dto) {
		Random r = new Random();
		int num = r.nextInt(100000, 900000);
		dto.setId(num);
		if(!repo.existsByIdOrMail(dto.getId(), dto.getMail())) {
			Employee emp = modelMapper.map(dto, Employee.class);
			return repo.save(emp);
		}
		throw new IllegalArgumentException("Something went wrong, Try Again!");
	}
	
	//get employee
	public EmployeeDTO getEmp(Integer id) {
		Employee emp = repo.findById(id).orElseThrow(()->new IllegalArgumentException("Employee Not Found with Id " + id));
		return modelMapper.map(emp, EmployeeDTO.class);
	}

	//delete employee
	public void deleteEmp(Integer id) {
		Employee emp = repo.findById(id).orElseThrow(()->new IllegalArgumentException("Employee Not Found With Id " + id));
		repo.deleteById(emp.getId());
	}
	
	//checking emp with id for updation
	public EmployeeDTO getEmpObjToUpdateById(Integer id) {
		Employee emp = repo.findById(id).orElseThrow(()->new IllegalArgumentException("Employee Not Found With Id " + id));
		return modelMapper.map(emp, EmployeeDTO.class);
	}
	
	//update emp
	public EmployeeDTO updateEmp(EmployeeDTO dto) {
		Employee emp = modelMapper.map(dto, Employee.class);
		Employee emp1 = repo.save(emp);
		return modelMapper.map(emp1, EmployeeDTO.class);
	}
}
