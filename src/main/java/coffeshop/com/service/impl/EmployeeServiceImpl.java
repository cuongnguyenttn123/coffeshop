package coffeshop.com.service.impl;

import coffeshop.com.entity.Employee;
import coffeshop.com.reponsitory.EmployeeRepository;
import coffeshop.com.service.EmployeeService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class EmployeeServiceImpl implements EmployeeService {

    @Autowired
    EmployeeRepository employeeRepository;
    @Override
    public List<Employee> findAll() {
        return  employeeRepository.findAll();
    }
}
