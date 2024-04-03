package com.todo.app.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

import com.todo.app.jdbc.Conn;
import com.todo.app.model.Login;

public class LoginDao {

	public boolean validate(Login login) throws ClassNotFoundException {
        boolean status = false;

        Class.forName("com.mysql.jdbc.Driver");

        try (Connection c = Conn.getConnection();
    
            PreparedStatement pstmt = c
            .prepareStatement("select * from signup where username = ? and password = ? ")) {
          pstmt.setString(1,login.getUsername());
          pstmt.setString(2,login.getPassword());

            System.out.println(pstmt);
            ResultSet rs = pstmt.executeQuery();
            status = rs.next();

        } catch (SQLException e) {
            // process sql exception
            Conn.printSQLException(e);
        }
        return status;
    }
}
	

