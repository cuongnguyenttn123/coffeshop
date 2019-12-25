package coffeshop.com.DTO.reponse;

import lombok.Data;

@Data
public class TableFoodReponseDto {
    private Integer id;

    private String name;

    private AreaReponseDto area;

    private Integer idBill;

    private Integer status;
}
