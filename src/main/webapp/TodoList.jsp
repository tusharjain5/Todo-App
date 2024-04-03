<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Todo List</title>
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous">
       <link rel="icon" type="image/x-icon" href="Gallery/todofavicon.png">
       <style>
       .tab1{
       margin-bottom:15%;
       
       }
       
       </style>
</head>
<body>
 <%@ includefile="header3.jsp"%>


<div class="row">

  <div class="container tab1">
   <h3 class="text-center">List of Todos</h3>
   <hr>
   <div class="container text-left">

    <a href="<%=request.getContextPath()%>/new"
     class="btn btn-success">Add Todo</a>
   </div>
   <br>
   <table class="table table-bordered ">
    <thead>
     <tr>
      <th>Title</th>
      <th>Target Date</th>
      <th>Todo Status</th>
      <th>Actions</th>
     </tr>
    </thead>
    <tbody>

     <c:forEach var="todo" items="${listTodo}">

      <tr>
       <td><c:out value="${todo.title}" /></td>
       <td><c:out value="${todo.targetDate}" /></td>
       <td><c:out value="${todo.status}" /></td>

       <td><a href="edit?id=<c:out value='${todo.id}' />">Edit</a>
        &nbsp;&nbsp;&nbsp;&nbsp; <a
        href="delete?id=<c:out value='${todo.id}' />">Delete</a></td>

      </tr>
     </c:forEach>

    </tbody>

   </table>
  </div>
 </div>
 
   <%@ includefile="Footer.jsp"%>


</body>
</html>