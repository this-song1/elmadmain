package com.neusoft.dao;

import com.neusoft.domain.Business;

import java.util.List;

public interface BusinessDao
{
    //显示所有商家列表 可选输入businessName和businessAddress
   public List<Business> listBusniness(String businessName,String businessAddress);


}
