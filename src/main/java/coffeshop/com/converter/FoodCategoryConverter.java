package coffeshop.com.converter;

import coffeshop.com.DTO.reponse.FoodCategoryReponseDto;
import coffeshop.com.entity.Foodcategory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;

import java.util.ArrayList;
import java.util.List;

@Component
public class FoodCategoryConverter {
    @Autowired
    FoodConverter foodConverter;


    public FoodCategoryReponseDto converterEntity(Foodcategory foodcategory){
        FoodCategoryReponseDto foodCategoryReponseDto = new FoodCategoryReponseDto();
        foodCategoryReponseDto.setDescription(foodcategory.getDescription());
        foodCategoryReponseDto.setId(foodcategory.getId());
        foodCategoryReponseDto.setName(foodcategory.getName());
        foodCategoryReponseDto.setStatus(foodcategory.getStatus());
        foodCategoryReponseDto.setFoodList(foodConverter.converterListEntity(foodcategory.getFoodList()));
        return foodCategoryReponseDto;
    }



    public List<FoodCategoryReponseDto> converterListEntity(List<Foodcategory> foods){
        List<FoodCategoryReponseDto> foodCategoryReponseDtos = new ArrayList<>();
        for (Foodcategory foodcategory: foods
        ) {
            FoodCategoryReponseDto areaReponseDto = this.converterEntity(foodcategory);
            foodCategoryReponseDtos.add(areaReponseDto);
        }
        return foodCategoryReponseDtos;
    }
}
