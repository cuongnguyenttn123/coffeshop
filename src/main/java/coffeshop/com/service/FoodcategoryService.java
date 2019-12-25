package coffeshop.com.service;

import coffeshop.com.DTO.reponse.FoodCategoryReponseDto;

import java.util.List;

public interface FoodcategoryService {
    List<FoodCategoryReponseDto> findAll();
}
