package dbsql;

import java.sql.*;

public class Conn {

    private Connection cn;

    public Conn() {

    }
    public void setConn(String url,String dbname,String dbpass)
    {
        try {
            Class.forName("com.mysql.jdbc.Driver");
            cn = DriverManager.getConnection(url,dbname,dbpass);
            System.out.print("数据库链接成功");
        }catch(java.lang.ClassNotFoundException e) {
            System.err.println("无法加载SQL驱动程序" + e.getMessage());
        }catch(SQLException ex) {
            System.err.println("创建Conn失败: " + ex.getMessage());
        }
    }
    public Connection getConn()
    {
        return cn;
    }
}
