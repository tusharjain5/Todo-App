package com.todo.app.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.time.LocalDate;
import java.util.ArrayList;
import java.util.List;

import com.todo.app.jdbc.Conn;
import com.todo.app.model.Todo;

public class TodoDaoImpl implements TodoDao
{
	 static final String INSERT_TODOS_SQL = "INSERT INTO todo" +
		        "  (title, username, description, targetdate, isdone) VALUES " + " (?, ?, ?, ?, ?);";

		    private static final String SELECT_TODO_BY_ID = "select id,title,username,description,targetdate,isdone from todo where id =?";
		    private static final String SELECT_ALL_TODOS = "select * from todo";
		    private static final String DELETE_TODO_BY_ID = "delete from todo where id = ?;";
		    private static final String UPDATE_TODO = "update todo set title = ?, username= ?, description =?, targetdate =?, isdone = ? where id = ?;";

		    public TodoDaoImpl() {}

		    @Override
		    public void insertTodo(Todo todo) throws SQLException {
		        System.out.println(INSERT_TODOS_SQL);
		        
		        try (Connection connection = Conn.getConnection(); PreparedStatement preparedStatement = connection.prepareStatement(INSERT_TODOS_SQL)) {
		            preparedStatement.setString(1, todo.getTitle());
		            preparedStatement.setString(2, todo.getUsername());
		            preparedStatement.setString(3, todo.getDescription());
		            preparedStatement.setDate(4, Conn.getSQLDate(todo.getTargetDate()));
		            preparedStatement.setBoolean(5, todo.getStatus());
		            System.out.println(preparedStatement);
		            preparedStatement.executeUpdate();
		        } catch (SQLException exception) {
		            Conn.printSQLException(exception);
		        }
		    }

		    @Override
		    public Todo selectTodo(long todoId) {
		        Todo todo = null;
		        
		        try (Connection connection = Conn.getConnection();
		        
		            PreparedStatement preparedStatement = connection.prepareStatement(SELECT_TODO_BY_ID);) {
		            preparedStatement.setLong(1, todoId);
		            System.out.println(preparedStatement);
		        
		            ResultSet rs = preparedStatement.executeQuery();

		            while (rs.next()) {
		                long id = rs.getLong("id");
		                String title = rs.getString("title");
		                String username = rs.getString("username");
		                String description = rs.getString("description");
		                LocalDate targetDate = rs.getDate("targetdate").toLocalDate();
		                boolean isDone = rs.getBoolean("isdone");
		                todo = new Todo(id, title, username, description, targetDate, isDone);
		            }
		        } catch (SQLException exception) {
		            Conn.printSQLException(exception);
		        }
		        return todo;
		    }

		    @Override
		    public List < Todo > selectAllTodos() {


		        List < Todo > todos = new ArrayList < > ();

		        
		        try (Connection connection = Conn.getConnection();

		        
		            PreparedStatement preparedStatement = connection.prepareStatement(SELECT_ALL_TODOS);) {
		            System.out.println(preparedStatement);
		        
		            ResultSet rs = preparedStatement.executeQuery();

		        
		            while (rs.next()) {
		                long id = rs.getLong("id");
		                String title = rs.getString("title");
		                String username = rs.getString("username");
		                String description = rs.getString("description");
		                LocalDate targetDate = rs.getDate("targetdate").toLocalDate();
		                boolean isDone = rs.getBoolean("isdone");
		                todos.add(new Todo(id, title, username, description, targetDate, isDone));
		            }
		        } catch (SQLException exception) {
		            Conn.printSQLException(exception);
		        }
		        return todos;
		    }

		    @Override
		    public boolean deleteTodo(int id) throws SQLException {
		        boolean rowDeleted;
		        try (Connection connection = Conn.getConnection(); PreparedStatement statement = connection.prepareStatement(DELETE_TODO_BY_ID);) {
		            statement.setInt(1, id);
		            rowDeleted = statement.executeUpdate() > 0;
		        }
		        return rowDeleted;
		    }

		    @Override
		    public boolean updateTodo(Todo todo) throws SQLException {
		        boolean rowUpdated;
		        try (Connection connection = Conn.getConnection(); PreparedStatement statement = connection.prepareStatement(UPDATE_TODO);) {
		            statement.setString(1, todo.getTitle());
		            statement.setString(2, todo.getUsername());
		            statement.setString(3, todo.getDescription());
		            statement.setDate(4, Conn.getSQLDate(todo.getTargetDate()));
		            statement.setBoolean(5, todo.getStatus());
		            statement.setLong(6, todo.getId());
		            rowUpdated = statement.executeUpdate() > 0;
		        }
		        return rowUpdated;
		    }
		}
	
	
	
	

