package coffeshop.com.repository;

import coffeshop.com.entity.Area;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.JpaSpecificationExecutor;

public interface AreaReponsitory extends JpaRepository<Area, Integer>, JpaSpecificationExecutor<Area> {
}
