package com.neusoft.view.impl;

import com.neusoft.dao.BusinessDao;
import com.neusoft.dao.Impl.BusinessDaoImpl;
import com.neusoft.domain.Business;
import com.neusoft.view.Businessview;

import java.util.List;
import java.util.Scanner;

public class Businessviewimpl implements Businessview
{

    @Override
    public void listBusinessAll()
    {

        BusinessDaoImpl dao = new BusinessDaoImpl();
        List<Business> list = dao.listBusniness(null, null);
        System.out.println("商家名称\t商家编号\t商家名称\t商家编号\t商家名称\t商家编号");
        for(Business b:list)
        {
            System.out.println(b.getBusinessId()+"\t"+b.getBusinessName()+"\t"+b.getBusinessAddress()+"\t"+b.getBusinessExplain()+"\t"+b.getStartPrice()+"\t"+b.getDeliveryPrice());
        }

    }
}
