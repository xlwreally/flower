package com.flower.test;

import com.flower.entity.Page;
import com.flower.entity.User;
import com.flower.urils.BaseDao;

import java.sql.Connection;
import java.sql.ResultSet;
import java.util.List;

/**
 * @author 熊立伟
 * @version 1.0
 * @date 2019/11/17 10:19
 */
public class PageTest {
    public static List<User> findAllPage(Page page) throws Exception{
    String sql="select count(*) as totalrecord from user";
    Connection con=new BaseDao().getCon();

        ResultSet set= con.prepareStatement(sql).executeQuery();
        int totalpage=0;
        while (set.next()){
            totalpage=set.getInt(1);
        }
        System.out.println(totalpage);
        page.setTotalpage(totalpage);
        sql="select * from user";
        StringBuffer pageSql=new StringBuffer(sql);
        pageSql.append("limit"+(page.getCurrentpage()-1)*page.getPage()+","+page.getPage());

        return null;
    }

    public static void main(String[] args) {
       Page page=new Page();
       page.setCurrentpage(1);
       List<User>=findAllPage(page);
        System.out.println();
    }
}
