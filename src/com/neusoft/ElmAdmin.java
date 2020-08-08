package com.neusoft;

import com.alibaba.druid.sql.visitor.functions.Lcase;
import com.neusoft.domain.Admin;
import com.neusoft.view.AdminView;
import com.neusoft.view.impl.AdminViewImpl;

import java.util.Scanner;

public class ElmAdmin
{
    public static void main(String[] args)
    {
        work();
    }
    public static  void  work()
    {
        Scanner input = new Scanner(System.in);
        System.out.println("-----------------------------------------------------------");
        System.out.println("|\t\t\t\t饿了么控制台版后台管理系统 V1.0\t\t\t\t|");
        System.out.println("-----------------------------------------------------------");
        // 调用登录方法
        AdminView adminView = new AdminViewImpl();
        Admin admin = adminView.login();

        if (admin!=null) {
            int menu = 0;
            System.out.println("~欢迎来到饿了么商家管理系统~");
            menu = input.nextInt();
            while(menu !=  5) {
                //创建一个菜单
                System.out.println("========= 1.所有商家列表=2.搜索商家=3.新建商家=4.删除商家=5.退出系统 =========");
                System.out.println("请选择相应的菜单编号");
                menu = input.nextInt();
                switch (menu) {
                    case 1:
                        System.out.println("所有商家列表");
                        break;
                    case 2:
                        System.out.println("搜索商家");
                        break;
                    case 3:
                        System.out.println("新建商家");
                        break;
                    case 4:
                        System.out.println("删除商家");
                        break;
                    case 5:
                        System.out.println("========= 欢迎下次光临 =========");
                        break;
                    default:
                        System.out.println("没有这个菜单项");


                }
            }

        }


    }
}
