<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Header 3</title>

    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous">
  <style>
    .mycol{
    background-color: yellow;
    height: 100px;

}
.widthi2{
    height:120px;
}
.alink{
    text-decoration: none;
color: darkblue;
}
.alink2{
    text-decoration: none;
color:white;
}
.heading1{
    margin-top: 22%;
    font-size: 25px;
  font-weight: bolder;
}
.heading2{
    margin-top: 5%;
    font-size: 23px;
  font-weight: bolder;
  float: right;
  border: 2px solid black;
  width: 15%;
  text-align: center;
  border-color: black;
  border-radius: 2rem;
  background-color: black;

}
   </style>
</head>
<body>
    <div class="container-fluid mycol">
        <div class="row">
            <div class="col-md-12 ">    
            </div>
            <div class="row">
                <div class="col-md-2">
                  <img src="Gallery/todologo.png" alt="" srcset="" class="widthi2">
                </div>
                <div class="col-md-2">
                    <div class="heading1">
                      <a href="TodoList.jsp" class="alink" style="color: darkblue;">  Todo List</a>
                    </div>
                </div>
                <div class="col-md-8">
                    <div class="heading2">
                        <a href="login.jsp" class="alink2" style="color: white;"> Log Out</a>
                    </div>
                </div>
            </div>
        </div>
    </div>


















    <script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.9.2/dist/umd/popper.min.js" integrity="sha384-IQsoLXl5PILFhosVNubq5LC7Qb9DXgDA9i+tQ8Zj3iwWAwPtgFTxbJ8NT4GN1R8p" crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.min.js" integrity="sha384-cVKIPhGWiC2Al4u+LWgxfKTRIcfu0JTxR+EQDz/bgldoEyl4H0zUF0QKbrJ0EcQF" crossorigin="anonymous"></script>

</body>
</html>