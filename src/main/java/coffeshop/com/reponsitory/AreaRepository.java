package coffeshop.com.reponsitory;

import org.springframework.data.domain.Page;
import org.springframework.data.domain.Pageable;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.JpaSpecificationExecutor;
import coffeshop.com.entity.Area;
import org.springframework.data.jpa.repository.Modifying;
import org.springframework.data.jpa.repository.Query;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

import java.util.List;
import java.util.Optional;
@Repository
public interface AreaRepository extends JpaRepository<Area, Integer>, JpaSpecificationExecutor<Area> {
    @Query("from Area f where f.id = ?1")
    Optional<Area> findById(Integer id);

    @Query("SELECT b FROM Area b")
    Page<Area> getAllBy(Pageable pageable);

    List<Area> findAll();

    @Transactional
    @Modifying
    @Query("delete from Area a where a.id = ?1")
    void deleteById(Integer id);
}