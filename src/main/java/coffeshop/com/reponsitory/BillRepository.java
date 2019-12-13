package coffeshop.com.reponsitory;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.JpaSpecificationExecutor;
import coffeshop.com.entity.Bill;

public interface BillRepository extends JpaRepository<Bill, Integer>, JpaSpecificationExecutor<Bill> {

}