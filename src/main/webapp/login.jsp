<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Welcome to Todo App</title>

    <link rel="stylesheet" href="Css/login.css">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
    <link rel="icon" type="image/x-icon" href="Gallery/todofavicon.png">
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous">

<style>
.bor{
background-color:green;
border-color:green;
}
</style>

</head>

<body>
<%@ includefile="header.jsp"%>

<div class="container-fluid mycol1">
    <div class="row">
        <div class="col-md-12">
            <div class="border1 bor">
                <div class="border2">
                   <form action="<%=request.getContextPath()%>/loginweb" method="post">
                     <h2 class="head">LOGIN</h2>
                     <p class="para1">Please enter your login and password!</p>
                     <input type="text" name="username" id="" placeholder="Username" class="widthi1" required="required">
                     <br>
                     <input type="password" name="password" id="" placeholder="Password" class="widthi1" required="required">
                     <br>
                     <a href="Signup.jsp" class="alink2" style="color: grey;"> Create a New Account</a>
                     <br>
                     <input type="submit" value="Login" class="btn1" style="color: white;">
                     <br>
                    </form>
                     <div class="border3">
                        <span><a href="https://www.facebook.com/profile.php?id=100092271067882" class="alink3" style="color: white;"><i class="fa fa-facebook-f" style="font-size:20px"></i></a></span>
                       &nbsp; &nbsp;
                        <span><a href="https://twitter.com/TusharJain05" class="alink3" style="color: white;"><i class="fa fa-twitter" style="font-size:20px"></i></a></span>
                        &nbsp; &nbsp;
                        <span><a href="https://github.com/jaint8648" class="alink3" style="color: white;"><i class="fa fa-github" style="font-size:20px"></i></a></span>
                     </div>
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