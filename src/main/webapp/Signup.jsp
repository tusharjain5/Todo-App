<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Sign Up</title>
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous">
    <link rel="stylesheet" href="Css/signup.css">
     <link rel="icon" type="image/x-icon" href="Gallery/todofavicon.png">
</head>
<body>
<%@ includefile="header2.jsp"%>

<div class="container-fluid mycol1">
        <div class="row">
            <div class="col-md-12">
                <div class="border1">
                    <div class="border2">
                       <form action="<%=request.getContextPath()%>/login" method="post">
                         <h2 class="head">Sign Up</h2>
                         <input type="name" name="Firstname" id="" placeholder="First Name" class="widthi1" required="required"/>
                         <br>
                         <input type="name" name="Lastname" id="" placeholder="Last Name" class="widthi1" required="required"/>
                         <br>
                         <input type="username" name="username" id="" placeholder="Username" class="widthi1" required="required"/>
                         <br>
                         <input type="password" name="password" id="" placeholder="Password" class="widthi1" required="required"/>
                         <br>
                        <span class="alr"> Already a member? </span><a href="login.jsp" class="alink2" style="color:black"> Log In</a>
                         <br>
                         <input type="submit" value="Sign Up" class="btn1">
                         <br>
                        </form>
                    </div>
                </div>
            </div>
        </div>
    </div>

    <%@ includefile="Footer.jsp"%>




  <script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.9.2/dist/umd/popper.min.js" integrity="sha384-IQsoLXl5PILFhosVNubq5LC7Qb9DXgDA9i+tQ8Zj3iwWAwPtgFTxbJ8NT4GN1R8p" crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.min.js" integrity="sha384-cVKIPhGWiC2Al4u+LWgxfKTRIcfu0JTxR+EQDz/bgldoEyl4H0zUF0QKbrJ0EcQF" crossorigin="anonymous"></script>

</body>
</html>