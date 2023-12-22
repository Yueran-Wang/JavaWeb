package dbsql;

public class User {
    private final String name = "admin";

    // 校验密码的方法
    public String validatePassword(String password) {
        String pass = "admin";
        if (pass.equals(password)) {
            return "校验成功";
        } else {
            return "校验失败";
        }
    }
}
