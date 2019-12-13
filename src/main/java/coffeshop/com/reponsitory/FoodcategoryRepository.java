package coffeshop.com.reponsitory;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.JpaSpecificationExecutor;
import coffeshop.com.entity.Foodcategory;

public interface FoodcategoryRepository extends JpaRepository<Foodcategory, Integer>, JpaSpecificationExecutor<Foodcategory> {

}