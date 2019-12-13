package coffeshop.com.reponsitory;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.JpaSpecificationExecutor;
import coffeshop.com.entity.Billstatus;

public interface BillstatusRepository extends JpaRepository<Billstatus, Integer>, JpaSpecificationExecutor<Billstatus> {

}