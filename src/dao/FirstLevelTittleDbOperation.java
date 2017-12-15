package dao;

import model.FirstLevelTitle;
import util.GetConnect;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

/**
 * Created by 蔡美龄 on 2017/11/27.
 */
public class FirstLevelTittleDbOperation {
    public List getAllFirstLevelTitleList() {
        Connection con = GetConnect.getMysqlCon();
        PreparedStatement pstmt = null;
        try {
            pstmt = con.prepareStatement("SELECT DISTINCT first_title FROM title");
            ResultSet result = pstmt.executeQuery();
            List list = new ArrayList();
            while (result.next()) {
                FirstLevelTitle title=new FirstLevelTitle();
                title.setTitleName(result.getString("first_title"));
                list.add(title);
            }
            return list;
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return null;
    }
    public List<FirstLevelTitle> getAllSecondLevelTitleList(String first_title){
        Connection con = GetConnect.getMysqlCon();
        PreparedStatement pstmt = null;
            try {
                pstmt = con.prepareStatement("SELECT * FROM title WHERE first_title=?");
                pstmt.setString(1,first_title);
                ResultSet result = pstmt.executeQuery();
                List list = new ArrayList();
                while (result.next()) {
                    FirstLevelTitle title=new FirstLevelTitle();
                    title.setSecond_title(result.getString("second_title"));
                    list.add(title);
                }
                return list;
            } catch (SQLException e) {
                e.printStackTrace();
            }
            return null;
    }
}
