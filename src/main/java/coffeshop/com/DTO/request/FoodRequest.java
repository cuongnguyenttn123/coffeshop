package coffeshop.com.DTO.request;

import lombok.Data;

@Data
public class FoodRequest {
    private Integer Food_id;
    private String Food_name;
    private Integer price;
    private Boolean status;
    private Integer idCategory;
    private Integer idDVT;
}
