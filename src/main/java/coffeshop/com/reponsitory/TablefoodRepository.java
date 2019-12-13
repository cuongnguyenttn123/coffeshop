package coffeshop.com.reponsitory;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.JpaSpecificationExecutor;
import coffeshop.com.entity.Tablefood;

public interface TablefoodRepository extends JpaRepository<Tablefood, Integer>, JpaSpecificationExecutor<Tablefood> {

}