package coffeshop.com.converter;

import coffeshop.com.DTO.reponse.AreaReponseDto;
import coffeshop.com.entity.Area;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;

import java.util.ArrayList;
import java.util.List;

@Component
public class AreaConverter {
    @Autowired
    TableFoodConverter tableFoodConverter;


    public AreaReponseDto converterEntity(Area area){
        AreaReponseDto areaReponseDto = new AreaReponseDto();
        areaReponseDto.setId(area.getId());
        areaReponseDto.setName(area.getName());
        areaReponseDto.setTablefoods(tableFoodConverter.converterListEntity(area.getTablefoods()));
        return areaReponseDto;
    }

    public List<AreaReponseDto> converterListEntity(List<Area> areas){
        List<AreaReponseDto> areaReponseDtos = new ArrayList<>();
        for (Area area: areas
             ) {
            AreaReponseDto areaReponseDto = this.converterEntity(area);
            areaReponseDtos.add(areaReponseDto);
        }

        return areaReponseDtos;
    }
}
