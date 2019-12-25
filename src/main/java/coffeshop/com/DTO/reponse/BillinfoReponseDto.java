package coffeshop.com.DTO.reponse;

import lombok.Data;

@Data
public class BillinfoReponseDto {

    private Integer id;

    private BillReponseDto bill;

    private FoodReponse food;

    private Integer count;

    private Integer price;

    private Integer status;

    private TableFoodReponseDto tablefood;
}
