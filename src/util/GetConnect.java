package util;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;

/**
 * Created by Administrator on 2017/11/21.
 */
public class GetConnect {
    public static Connection getMysqlCon(){
        try {
            Connection con;
            Class.forName("com.mysql.jdbc.Driver");
            con = DriverManager.getConnection("jdbc:mysql://127.0.0.1:3306/sun?useUnicode=true&characterEncoding=utf8", "root", "smj123.0");
//            con.prepareStatement("alter table reply add foreign key(Reply_postid) REFERENCES posts(Post_id) on delete cascade on update cascade;").executeUpdate();
//            con.prepareStatement("alter table posts change Post_id Post_id int not null auto_increment ;").executeUpdate();
//            con.prepareStatement("ALTER TABLE posts ADD COLUMN Post_img VARCHAR(255)").executeUpdate();
            return con;
        } catch (ClassNotFoundException e) {
            e.printStackTrace();
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return null;
    }
}
