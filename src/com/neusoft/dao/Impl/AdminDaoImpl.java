package com.neusoft.dao.Impl;

import com.mysql.jdbc.PreparedStatement;
import com.neusoft.dao.AdminDao;
import com.neusoft.domain.Admin;

import java.sql.Connection;
import java.sql.ResultSet;

public class AdminDaoImpl implements AdminDao
{
    private Connection conn = null;
    private PreparedStatement pstmt = null;
    private ResultSet rs = null;


    @Override
    public Admin getAdminByNameByPass(String adminName, String Password)
    {
        try{

        }

        return null;
    }
}
