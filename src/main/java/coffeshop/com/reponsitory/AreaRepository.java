package coffeshop.com.reponsitory;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.JpaSpecificationExecutor;
import coffeshop.com.entity.Area;

import java.util.Optional;

public interface AreaRepository extends JpaRepository<Area, Integer>, JpaSpecificationExecutor<Area> {
    Optional<Area> findById(Integer id);

}