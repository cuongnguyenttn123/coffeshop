package coffeshop.com.converter;

import coffeshop.com.DTO.reponse.TableFoodReponseDto;
import coffeshop.com.entity.Tablefood;
import lombok.Data;
import org.springframework.stereotype.Component;

import java.util.ArrayList;
import java.util.List;

@Component
public class TableFoodConverter {
    public TableFoodReponseDto converterEntity(Tablefood tablefood){
        TableFoodReponseDto tableFoodReponseDto = new TableFoodReponseDto();
        tableFoodReponseDto.setIdBill(tablefood.getIdBill());
        tableFoodReponseDto.setId(tablefood.getId());
        tableFoodReponseDto.setName(tablefood.getName());
        return tableFoodReponseDto;
    }

    public List<TableFoodReponseDto> converterListEntity(List<Tablefood> tablefoods){
        List<TableFoodReponseDto> tableFoodReponseDtos = new ArrayList<>();
        for (Tablefood tablefood: tablefoods
             ) {
            TableFoodReponseDto tableFoodReponseDto = this.converterEntity(tablefood);
            tableFoodReponseDtos.add(tableFoodReponseDto);
        }
        return tableFoodReponseDtos;

    }
}
