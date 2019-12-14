package coffeshop.com.reponsitory;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.JpaSpecificationExecutor;
import coffeshop.com.entity.Area;
import org.springframework.data.jpa.repository.Query;
import org.springframework.stereotype.Repository;

import java.util.List;
import java.util.Optional;
@Repository
public interface AreaRepository extends JpaRepository<Area, Integer>, JpaSpecificationExecutor<Area> {
    @Query("from Area f where f.id = ?1")
    Optional<Area> findById(Integer id);
    List<Area> findAll();

    @Override
    void deleteById(Integer integer);
}