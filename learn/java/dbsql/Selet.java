package dbsql;

import java.sql.*;

public class Selet {
    public Selet() {
        // TODO 自动生成的构造函数存根
    }
    Connection conn; //定义Connection对象变量，用来连接数据库
    Statement stmt; //声明Statement对象变量，执行Sql语句
    ResultSet rs ; //定义ResultSet对象变量，接收数据结果
    public ResultSet executeQuery(Connection conn,String sql)
    {
        try {
            stmt = conn.createStatement();
            rs = stmt.executeQuery(sql);
        } catch(SQLException ex) {
            System.err.println("SQL Error:"+ex.getMessage());
        }
        return rs;
    }
}
