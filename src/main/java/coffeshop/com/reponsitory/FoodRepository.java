package coffeshop.com.reponsitory;

import org.springframework.data.domain.Page;
import org.springframework.data.domain.Pageable;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.JpaSpecificationExecutor;
import coffeshop.com.entity.Food;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.query.Param;
import org.springframework.stereotype.Repository;

import java.util.Optional;

@Repository
public interface FoodRepository extends JpaRepository<Food, Integer>, JpaSpecificationExecutor<Food> {
    @Query("from Food f where f.id = ?1")
    Optional<Food> findById(Integer id);

    @Query("SELECT b FROM Food b")
    Page<Food> getAllBy(Pageable pageable);

    @Query(value = "SELECT * FROM food f where f.name LIKE %:searching% and f.id_Category =:id_Category or f.id_DVT = :id_DVT",
    nativeQuery = true)
    Page<Food> getSearch(Pageable pageable, @Param("searching") String searching,
                         @Param("id_Category") Integer idCategory,@Param("id_DVT") Integer idDVT );
}