package coffeshop.com.converter;

import coffeshop.com.DTO.reponse.FoodReponse;
import coffeshop.com.entity.Food;
import org.springframework.stereotype.Component;

import java.util.ArrayList;
import java.util.List;

@Component
public class FoodConverter {
    public FoodReponse converterEntity(Food food){
        FoodReponse foodReponse = new FoodReponse();
        foodReponse.setId(food.getId());
        foodReponse.setStatus(food.getStatus());
        foodReponse.setPrice(food.getPrice());
        foodReponse.setName(food.getName());
        return foodReponse;
    }

    public List<FoodReponse> converterListEntity(List<Food> foods){
        List<FoodReponse> areaReponseDtos = new ArrayList<>();
        for (Food area: foods
        ) {
            FoodReponse areaReponseDto = this.converterEntity(area);
            areaReponseDtos.add(areaReponseDto);
        }

        return areaReponseDtos;
    }
}
