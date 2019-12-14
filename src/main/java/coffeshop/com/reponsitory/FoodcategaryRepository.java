package coffeshop.com.reponsitory;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.JpaSpecificationExecutor;
import coffeshop.com.entity.Foodcategory;
import org.springframework.data.jpa.repository.Query;
import org.springframework.stereotype.Repository;

import java.util.Optional;

@Repository
public interface FoodcategaryRepository extends JpaRepository<Foodcategory, Integer>, JpaSpecificationExecutor<Foodcategory> {
    @Query("from Foodcategory f where f.id = ?1")
    Optional<Foodcategory> findById(Integer id);
}