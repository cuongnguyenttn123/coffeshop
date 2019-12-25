package coffeshop.com.DTO.reponse;

import lombok.Data;

import java.util.List;

@Data
public class FoodCategoryReponseDto {
    private Integer id;

    private String name;

    private String description;

    private Integer status;

    List<FoodReponse> foodList;
}
