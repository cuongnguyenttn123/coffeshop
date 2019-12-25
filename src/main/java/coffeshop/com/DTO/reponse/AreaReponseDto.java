package coffeshop.com.DTO.reponse;

import lombok.Data;

import java.util.ArrayList;
import java.util.List;

@Data
public class AreaReponseDto {
    private Integer id;

    private String name;

    private List<TableFoodReponseDto> tablefoods = new ArrayList<>();
}
