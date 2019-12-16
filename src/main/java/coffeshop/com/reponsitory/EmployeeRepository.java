package coffeshop.com.reponsitory;

import org.springframework.data.domain.Page;
import org.springframework.data.domain.Pageable;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.JpaSpecificationExecutor;
import coffeshop.com.entity.Employee;
import org.springframework.data.jpa.repository.Query;
import org.springframework.stereotype.Repository;

import java.util.List;
import java.util.Optional;

@Repository
public interface EmployeeRepository extends JpaRepository<Employee, Integer>, JpaSpecificationExecutor<Employee> {
    @Query("from Employee f where f.id = ?1")
    Optional<Employee> findById(Integer id);

    @Query("SELECT b FROM Employee b")
    Page<Employee> getAllBy(Pageable pageable);

    @Query("from Employee f where f.userName = ?1 and f.passWord = ?2")
    Employee login(String username, String password);

    @Query("from Employee e where e.userName = ?1")
    Employee findByUserName(String username);
}