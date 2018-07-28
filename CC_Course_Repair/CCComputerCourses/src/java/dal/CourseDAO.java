/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package dal;

import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.logging.Level;
import java.util.logging.Logger;
import model.Course;

/**
 *
 * @author dell
 */
public class CourseDAO extends BaseDAO<Course> {

    public ArrayList<Course> getTop() {
        ArrayList<Course> list = new ArrayList();
        try {

            String query = "SELECT TOP 3 [ID]\n"
                    + "      ,[Name]\n"
                    + "      ,[Content]\n"
                    + "      ,[Date]\n"
                    + "      ,[Image]\n"
                    + "  FROM Course ORDER BY Date DESC";
            PreparedStatement statement = connection.prepareStatement(query);
            ResultSet rs = statement.executeQuery();
            while (rs.next()) {
                Course course = new Course();
                course.setId(rs.getInt("ID"));
                course.setName(rs.getString("Name"));
                course.setContent(rs.getString("Content"));
                course.setImage(rs.getString("Image"));
                course.setDate(rs.getDate("Date"));
                SimpleDateFormat df = new SimpleDateFormat("dd-MMMM-yyyy");
                course.setDateFormat(df.format(rs.getDate("Date")));
                list.add(course);
            }
            return list;
        } catch (SQLException ex) {
            Logger.getLogger(CourseDAO.class.getName()).log(Level.SEVERE, null, ex);
        }
        return list;
    }

    public ArrayList<Course> getAll() {
        ArrayList<Course> list = new ArrayList();
        try {

            String query = "SELECT [ID]\n"
                    + "      ,[Name]\n"
                    + "      ,[Content]\n"
                    + "      ,[Date]\n"
                    + "      ,[Image]\n"
                    + "  FROM Course ORDER BY Date DESC";
            PreparedStatement statement = connection.prepareStatement(query);
            ResultSet rs = statement.executeQuery();
            while (rs.next()) {
                Course course = new Course();
                course.setId(rs.getInt("ID"));
                course.setName(rs.getString("Name"));
                course.setContent(rs.getString("Content"));
                course.setImage(rs.getString("Image"));
                course.setDate(rs.getDate("Date"));
                SimpleDateFormat df = new SimpleDateFormat("dd-MMMM-yyyy");
                course.setDateFormat(df.format(rs.getDate("Date")));
                list.add(course);
            }
            return list;
        } catch (SQLException ex) {
            Logger.getLogger(CourseDAO.class.getName()).log(Level.SEVERE, null, ex);
        }
        return list;
    }

    public int count() {
        String query = "SELECT COUNT(*) as TotalRows FROM Course";
        try {
            PreparedStatement statement = connection.prepareStatement(query);
            ResultSet rs = statement.executeQuery();
            if (rs.next()) {
                return rs.getInt("TotalRows");
            }
        } catch (SQLException ex) {
            Logger.getLogger(CourseDAO.class.getName()).log(Level.SEVERE, null, ex);
        }
        return 0;
    }

    public ArrayList<Course> all(int start, int end) {
        ArrayList<Course> courses = new ArrayList<>();
        String query = "select rn,[ID], [Name], [Content], [Date], [Image]"
                + " from (\n"
                + "    select ROW_NUMBER() over (order by ID asc) as rn, [ID], [Name], [Content], [Date], [Image]\n"
                + "    from Course\n"
                + ") as x\n"
                + "where rn between ? and ?";
        try {
            PreparedStatement statement = connection.prepareStatement(query);
            statement.setInt(1, start);
            statement.setInt(2, end);
            ResultSet rs = statement.executeQuery();
            while (rs.next()) {
                Course d = new Course();
                d.setId(rs.getInt("ID"));
                d.setName(rs.getString("Name"));
                d.setContent(rs.getString("Content"));
                d.setDate(rs.getDate("Date"));
                d.setImage(rs.getString("Image"));
                SimpleDateFormat df = new SimpleDateFormat("dd-MMMM-yyyy");
                d.setDateFormat(df.format(rs.getDate("Date")));
                courses.add(d);
            }
            closeResultSet(rs);
            closeStatement(statement);
            closeConnection(connection);
        } catch (Exception ex) {
            Logger.getLogger(CourseDAO.class.getName()).log(Level.SEVERE, null, ex);
            try {
                throw(ex);
            } catch (Exception ex1) {
                Logger.getLogger(CourseDAO.class.getName()).log(Level.SEVERE, null, ex1);
            }
        }
        return courses;
    }

    public Course getDemoCourse() {
        Course course = new Course();
        try {

            String query = "SELECT \n"
                    + "      [Title]\n"
                    + "      ,[Content]\n"
                    + "      ,[Image]\n"
                    + "  FROM DemoCourse";
            PreparedStatement statement = connection.prepareStatement(query);
            ResultSet rs = statement.executeQuery();
            while (rs.next()) {
                course = new Course();

                course.setName(rs.getString("Title"));
                course.setContent(rs.getString("Content"));
                course.setImage(rs.getString("Image"));

                closeResultSet(rs);
                closeStatement(statement);
                closeConnection(connection);
                return course;
            }
        } catch (Exception ex) {
            Logger.getLogger(CourseDAO.class.getName()).log(Level.SEVERE, null, ex);
            try {
                throw (ex);
            } catch (Exception ex1) {
                Logger.getLogger(CourseDAO.class.getName()).log(Level.SEVERE, null, ex1);
            }
        }
        return null;
    }
}
