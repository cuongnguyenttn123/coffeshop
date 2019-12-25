package coffeshop.com.service.impl;

import coffeshop.com.DTO.reponse.FoodCategoryReponseDto;
import coffeshop.com.converter.FoodCategoryConverter;
import coffeshop.com.reponsitory.FoodcategaryRepository;
import coffeshop.com.service.FoodcategoryService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;
@Service
public class FoodCategoryImpl implements FoodcategoryService {
    @Autowired
    FoodcategaryRepository foodcategaryRepository;

    @Autowired
    FoodCategoryConverter foodCategoryConverter;

    @Override
    public List<FoodCategoryReponseDto> findAll() {
        return foodCategoryConverter.converterListEntity(foodcategaryRepository.findAll());
    }
}
