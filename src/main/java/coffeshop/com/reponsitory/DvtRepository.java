package coffeshop.com.reponsitory;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.JpaSpecificationExecutor;
import coffeshop.com.entity.Dvt;

public interface DvtRepository extends JpaRepository<Dvt, Integer>, JpaSpecificationExecutor<Dvt> {

}