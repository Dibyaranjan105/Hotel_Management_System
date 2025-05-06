package UserDao;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

import java.util.ArrayList;
import java.util.List;

import UserModel.UserModel;

public class UserDao {

    // Get database connection
    public static Connection getConnection() throws ClassNotFoundException, SQLException {
        Class.forName("com.mysql.cj.jdbc.Driver");
        return DriverManager.getConnection("jdbc:mysql://localhost:3306/jdbcproject", "root", "Dibya@143");
    }

    // Register a new user
    public boolean registerUser(UserModel user) throws SQLException, ClassNotFoundException {
        Connection con = null;
        PreparedStatement st = null;
        boolean flag = false;

        try {
            con = getConnection();
            con.setAutoCommit(false);

            String query = "INSERT INTO registration (firstname, lastname, phonenumber, email, age, gender, password, usertype) "
                         + "VALUES (?, ?, ?, ?, ?, ?, ?, 'user')";

            st = con.prepareStatement(query);
            st.setString(1, user.getFirstname());
            st.setString(2, user.getLastname());
            st.setString(3, user.getPhonenumber());
            st.setString(4, user.getEmail());
            st.setInt(5, user.getAge());
            st.setString(6, user.getGender());
            st.setString(7, user.getPassword());

            int result = st.executeUpdate();

            if (result > 0) {
                con.commit();
                flag = true;
            } else {
                con.rollback();
            }
        } catch (SQLException e) {
            if (con != null) con.rollback();
            e.printStackTrace();
        } finally {
            if (st != null) st.close();
            if (con != null) con.close();
        }

        return flag;
    }

    // Validate user login
    public boolean validateUser(String email, String password) throws SQLException, ClassNotFoundException {
        Connection con = null;
        PreparedStatement st = null;
        boolean isValidUser = false;

        try {
            con = getConnection();

            String query = "SELECT * FROM registration WHERE email = ? AND password = ? AND usertype = 'user'";
            st = con.prepareStatement(query);
            st.setString(1, email);
            st.setString(2, password);

            ResultSet rs = st.executeQuery();
            isValidUser = rs.next();
        } finally {
            if (st != null) st.close();
            if (con != null) con.close();
        }

        return isValidUser;
    }

    // Get all registered users
    public List<UserModel> getAllUsers() throws SQLException, ClassNotFoundException {
        List<UserModel> userList = new ArrayList<>();
        Connection con = null;
        PreparedStatement st = null;
        ResultSet rs = null;

        try {
            con = getConnection();
            String query = "SELECT * FROM registration WHERE usertype = 'user'";
            st = con.prepareStatement(query);
            rs = st.executeQuery();

            while (rs.next()) {
                UserModel user = new UserModel();
                user.setFirstname(rs.getString("firstname"));
                user.setLastname(rs.getString("lastname"));
                user.setPhonenumber(rs.getString("phonenumber"));
                user.setEmail(rs.getString("email"));
                user.setAge(rs.getInt("age"));
                user.setGender(rs.getString("gender"));

                userList.add(user);
            }
        } finally {
            if (rs != null) rs.close();
            if (st != null) st.close();
            if (con != null) con.close();
        }

        return userList;
    }

    // Get all registered admins
    public List<UserModel> getAllAdmins() throws SQLException, ClassNotFoundException {
        List<UserModel> adminList = new ArrayList<>();
        Connection con = null;
        PreparedStatement st = null;
        ResultSet rs = null;

        try {
            con = getConnection();
            String query = "SELECT * FROM registration WHERE usertype = 'admin'";
            st = con.prepareStatement(query);
            rs = st.executeQuery();

            while (rs.next()) {
                UserModel admin = new UserModel();
                admin.setFirstname(rs.getString("firstname"));
                admin.setLastname(rs.getString("lastname"));
                admin.setPhonenumber(rs.getString("phonenumber"));
                admin.setEmail(rs.getString("email"));
                admin.setAge(rs.getInt("age"));
                admin.setGender(rs.getString("gender"));
                admin.setPassword(rs.getString("password"));

                adminList.add(admin);
            }
        } finally {
            if (rs != null) rs.close();
            if (st != null) st.close();
            if (con != null) con.close();
        }

        return adminList;
    }

    
    public boolean addAdmin(String email, String password) {
        return false;
    }

    public boolean updateUser(UserModel user) {
        return false;
    }
}
