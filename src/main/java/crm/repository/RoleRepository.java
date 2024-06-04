package crm.repository;

import crm.config.MysqlConnection;
import crm.model.Role;
import crm.model.User;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

public class RoleRepository {

    public List<Role> getRoles() {

        List<Role> listRole = new ArrayList<>();

        Connection connection = MysqlConnection.getConnection();
        String query = "SELECT * FROM ROLE ";
        try {
            PreparedStatement preparedStatement = connection.prepareStatement(query);

            ResultSet resultSet = preparedStatement.executeQuery();

            while (resultSet.next()) {
                Role role = new Role();
                role.setId(resultSet.getInt("ID"));
                role.setRoleName(resultSet.getString("ROLE_NAME"));
                role.setDescription(resultSet.getString("DESCRIPTION"));

                listRole.add(role);
            }

        } catch (SQLException e) {
            throw new RuntimeException(e);
        } finally {
            try {
                connection.close();
            } catch (SQLException e) {
                throw new RuntimeException(e);
            }
        }

        return listRole;
    }

    public int deleteRoleById  (int id){

        int isDelete = 0;
        Connection connection = MysqlConnection.getConnection();
        String query = "DELETE FROM ROLE r WHERE r.ID = ? ";
        try {
            PreparedStatement preparedStatement = connection.prepareStatement(query);
            preparedStatement.setInt(1,id);

            isDelete = preparedStatement.executeUpdate();

        } catch (SQLException e) {
            throw new RuntimeException(e);
        } finally {
            try {
                connection.close();
            } catch (SQLException e) {
                throw new RuntimeException(e);
            }
        }

        return isDelete;
    }

    public int addRole (String roleName, String desc) {
        int isSucess = 0;
        Connection connection = MysqlConnection.getConnection();
        String query = "INSERT INTO ROLE(ROLE_NAME,DESCRIPTION) VALUES(?,?) ";
        try {
            PreparedStatement preparedStatement = connection.prepareStatement(query);
            preparedStatement.setString(1,roleName);
            preparedStatement.setString(2,desc);

            isSucess = preparedStatement.executeUpdate();

        } catch (SQLException e) {
            throw new RuntimeException(e);
        } finally {
            try {
                connection.close();
            } catch (SQLException e) {
                throw new RuntimeException(e);
            }
        }

        return isSucess;

    }

}