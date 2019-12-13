package coffeshop.com.service;

import coffeshop.com.entity.Employee;
import org.springframework.stereotype.Service;

import java.util.List;
import java.util.Set;

public interface EmployeeService {
    List<Employee> findAll();
}
