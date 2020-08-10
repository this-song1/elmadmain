package com.neusoft.view.impl;

import com.neusoft.dao.FoodDao;
import com.neusoft.dao.Impl.FoodDaoImpl;
import com.neusoft.domain.Food;
import com.neusoft.view.FoodView;

import java.util.List;
import java.util.Scanner;

public class FoodViewImpl implements FoodView
{
    private Scanner input = new Scanner(System.in);
    @Override
    public void showFoodList(Integer businessId)
    {
        FoodDaoImpl dao = new FoodDaoImpl();
        List<Food> foodList = dao.findAll(businessId);
        System.out.println("食品编号" + "\t" +"食品名称");
        for (Food food :foodList){
            System.out.println(food.getFoodId() + "\t" + food.getFoodName());
        }
    }

    @Override
    public void saveFood(Integer businessId)
    {
        Food food = new Food();
        System.out.println("请输入食品名称：");
        food.setFoodName(input.next());
        System.out.println("请输入食品介绍：");
        food.setFoodExplain(input.next());
        System.out.println("请输入食品价格：");
        food.setFoodPrice(input.nextDouble());
        food.setBusinessId(businessId);

        FoodDao dao = new FoodDaoImpl();
        int result = dao.saveFood(food);
        if(result>0) {
            System.out.println("\n新增食品成功！\n");
        }else {
            System.out.println("\n新增食品失败！\n");
        }
    }

    @Override
    public void updateFood(Integer businessId)
    {

    }

    @Override
    public void removeFood(Integer businessId)
    {

    }
}
