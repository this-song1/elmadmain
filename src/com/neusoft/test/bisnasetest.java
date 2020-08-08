package com.neusoft.test;

import com.neusoft.dao.Impl.BusinessDaoImpl;

public class bisnasetest

{
    public static void main(String[] args)
    {
        BusinessDaoImpl dao = new BusinessDaoImpl();
        dao.listBusniness(null,"沈阳");


    }
}
