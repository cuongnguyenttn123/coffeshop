package coffeshop.com.repository;

import coffeshop.com.entity.Importbilldetail;
import coffeshop.com.entity.ImportbilldetailId;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.JpaSpecificationExecutor;

public interface ImportbilldetailRepository extends JpaRepository<Importbilldetail, ImportbilldetailId>, JpaSpecificationExecutor<Importbilldetail> {

}