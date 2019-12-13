package coffeshop.com.reponsitory;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.JpaSpecificationExecutor;
import coffeshop.com.entity.Billdetail;

public interface BilldetailRepository extends JpaRepository<Billdetail, Integer>, JpaSpecificationExecutor<Billdetail> {

}