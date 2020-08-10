package com.neusoft.dao;

import com.neusoft.domain.Business;

import java.util.List;

public interface BusinessDao
{
    //显示所有商家列表 可选输入businessName和businessAddress
   public List<Business> listBusniness(String businessName,String businessAddress);
   public int saveBusiness(String businessName);

    public Business getBusinessByNameByPass(Integer businessId, String password);
    public int removeBusiness(int businessId);

    public Business getBusinessByBusinessId(Integer businessId);

    public int updateBusiness( Business business);
    //修改密码
//    public int updatdpassword(Integer password);

    public int updateBusinessByPassword(Integer businessId,String password);
    public Business getBusinessById(Integer businessId);
}
