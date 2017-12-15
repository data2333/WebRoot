package dao;

import model.User;
import util.GetConnect;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

/**
 * Created by Administrator on 2017/11/24.
 */
public class LoginCheckDao {
    public Boolean checkLogin(String user_name, String user_pwd) {
        Connection con = GetConnect.getMysqlCon();
        try {
            PreparedStatement pstmt = con.prepareStatement("SELECT * FROM user WHERE name=?AND password=?");
            pstmt.setString(1, user_name);
            pstmt.setString(2, user_pwd);
            ResultSet result = pstmt.executeQuery();
            while (result.next()) {
                return true;
            }
            return false;
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return false;
    }
}
