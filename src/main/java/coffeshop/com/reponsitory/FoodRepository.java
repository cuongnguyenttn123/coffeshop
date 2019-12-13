package coffeshop.com.reponsitory;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.JpaSpecificationExecutor;
import coffeshop.com.entity.Food;

public interface FoodRepository extends JpaRepository<Food, Integer>, JpaSpecificationExecutor<Food> {

}