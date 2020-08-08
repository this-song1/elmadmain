package com.neusoft.dao.Impl;

import com.neusoft.dao.BusinessDao;
import com.neusoft.domain.Business;

import java.util.List;

public class BusinessDaoImpl implements BusinessDao
{
    @Override
    public List<Business> listBusniness(String businessName, String businessAddress)
    {
        StringBuffer sql = new StringBuffer("select * from business where 1=1");
        if(businessName != null && businessName.equals(""))
        {
            //传入了商家名
            sql.append("and ");
        }
        return null;
    }
}
