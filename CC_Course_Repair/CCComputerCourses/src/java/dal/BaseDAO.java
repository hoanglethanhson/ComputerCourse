/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package dal;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;
import java.util.logging.Level;
import java.util.logging.Logger;
import model.BaseModel;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

/**
 *
 * @author dell
 */
public class BaseDAO<T extends BaseModel> {

    public Connection connection;

    public BaseDAO() {
        try {
            String username = "sa";
            String password = "sa";
            String url = "jdbc:sqlserver://localhost:1433;databaseName=J3.L.P0025";
            Class.forName("com.microsoft.sqlserver.jdbc.SQLServerDriver");
            connection = DriverManager.getConnection(url, username, password);
        } catch (ClassNotFoundException | SQLException ex) {
            Logger.getLogger(BaseDAO.class.getName()).log(Level.SEVERE, null, ex);
        }
    }

    public void closeConnection(Connection con) throws Exception {
        if ((!con.isClosed()) && (con != null)) {
                con.close();
        }
    }
    public void closeStatement(PreparedStatement statement) throws Exception {
        if ((!statement.isClosed()) && (statement != null)) {
                statement.close();
        }
    }
    public void closeResultSet(ResultSet rs) throws Exception {
        if ((!rs.isClosed()) && (rs != null)) {
                rs.close();
        }
    }
}
