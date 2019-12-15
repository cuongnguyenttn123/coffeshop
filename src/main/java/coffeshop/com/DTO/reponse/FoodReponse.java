package coffeshop.com.DTO.reponse;

import coffeshop.com.entity.Food;
import lombok.Data;

@Data
public class FoodReponse {
    private String name;
    private Integer id;
    private Integer price;
    private Boolean status;
}
