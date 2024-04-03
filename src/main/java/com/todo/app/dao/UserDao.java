package com.todo.app.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.SQLException;

import com.todo.app.jdbc.Conn;
import com.todo.app.model.User;

public class UserDao {

	public int registerEmployee(User employee) throws ClassNotFoundException {
        String query = "INSERT INTO signup" +
            "  (first_name, last_name, username, password) VALUES " +
            " (?, ?, ?, ?);";

        int result = 0;
        try (Connection c = Conn.getConnection();

            PreparedStatement pstmt	 = c.prepareStatement(query)) {
        	pstmt.setString(1, employee.getFirstname());
        	pstmt.setString(2, employee.getLastname());
        	pstmt.setString(3, employee.getUsername());
        	pstmt.setString(4, employee.getPassword());

            System.out.println(pstmt);

            result = pstmt.executeUpdate();

        } catch (SQLException e) {
           
            Conn.printSQLException(e);
        }
        return result;
    }
}
	

	
	
	
	
	
	
	
	
	
	
