package coffeshop.com.service.impl;

import coffeshop.com.entity.Employee;
import coffeshop.com.reponsitory.EmployeeRepository;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.userdetails.User;
import org.springframework.security.core.userdetails.UserDetails;
import org.springframework.security.core.userdetails.UserDetailsService;
import org.springframework.security.core.userdetails.UsernameNotFoundException;
import org.springframework.stereotype.Service;

@Service
public class MyUserDetailsService implements UserDetailsService {
    @Autowired
    EmployeeRepository employeeRepository;

    public UserDetails loadUserByUsername(String s) throws UsernameNotFoundException {
        Employee employee = employeeRepository.findByUserName(s);
        if (employee == null){
            return null;
        }
        boolean enabled = true;
        boolean accountNonExpired = true;
        boolean credentialsNonExpired = true;
        boolean accountNonLocked = true;
        return new User(employee.getUserName(), employee.getPassWord(), enabled, accountNonExpired,
                credentialsNonExpired, accountNonLocked, employee.getAuthorities());
    }
}
