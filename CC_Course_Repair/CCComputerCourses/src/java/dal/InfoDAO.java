/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package dal;

import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.logging.Level;
import java.util.logging.Logger;
import model.Info;

/**
 *
 * @author dell
 */
public class InfoDAO extends BaseDAO<Info> {

    public Info getInfo() {
        Info info = new Info();
        try {
            String query = "SELECT [Address]\n"
                    + "      ,[City]\n"
                    + "      ,[Country]\n"
                    + "      ,[Tel]\n"
                    + "      ,[Email]\n"
                    + "  FROM [dbo].[Info]";
            PreparedStatement statement = connection.prepareStatement(query);
            ResultSet rs = statement.executeQuery();
            if (rs.next()) {
                info.setAddress(rs.getString("Address"));
                info.setCity(rs.getString("City"));
                info.setTel(rs.getString("Tel"));
                info.setEmail(rs.getString("Email"));
                return info;
            }
        } catch (SQLException ex) {
            Logger.getLogger(InfoDAO.class.getName()).log(Level.SEVERE, null, ex);
        }
        return null;
    }
}
