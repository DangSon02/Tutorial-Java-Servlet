package crm.repository;

import crm.config.MysqlConnection;
import crm.model.User;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

public class UserRepository {
   public List<User> getUserByUsernameAndPassword(String userName, String passWord) {

       List<User> listUser = new ArrayList<>();

       Connection connection = MysqlConnection.getConnection();
       String query = "SELECT * FROM USERS u WHERE u.USERNAME = ? AND u.PASSWORD = ? ";
       try {
           PreparedStatement preparedStatement = connection.prepareStatement(query);
           preparedStatement.setString(1, userName);
           preparedStatement.setString(2,passWord);

           ResultSet resultSet = preparedStatement.executeQuery();

           while(resultSet.next()) {
               User user = new User();
               user.setId(resultSet.getInt("ID"));
               user.setFullName(resultSet.getString("FULLNAME"));
               user.setAge(resultSet.getInt("AGE"));
               user.setUserName(resultSet.getString("USERNAME"));

               listUser.add(user);
           }

       } catch (SQLException e) {
           throw new RuntimeException(e);
       }finally {
           try {
               connection.close();
           } catch (SQLException e) {
               throw new RuntimeException(e);
           }
       }

       return listUser;
   }




}
