<%-- 
    Document   : login
    Created on : Jun 14, 2022, 1:16:44 PM
    Author     : Admin
--%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<!DOCTYPE html>
<html>
    <style>
body {
   background-image:url("anh\nature.jpg");

  min-height: 380px;

  /* Center and scale the image nicely */
  background-position: center;
  background-repeat: no-repeat;
  background-size: cover;
  position: relative;
}

* {
  box-sizing: border-box;
}

.bg-img {
  /* The image used */
 
}

/* Add styles to the form container */
.container {
  position: absolute;
  right: 0;
  margin: 20px;
  max-width: 300px;
  padding: 16px;
  background-color: white;
}

/* Full-width input fields */
input[type=text], input[type=password] {
  width: 100%;
  padding: 15px;
  margin: 5px 0 22px 0;
  border: none;
  background: #f1f1f1;
}

input[type=text]:focus, input[type=password]:focus {
  background-color: #ddd;
  outline: none;
}

/* Set a style for the submit button */
.btn {
  background-color: #04AA6D;
  color: white;
  padding: 16px 20px;
  border: none;
  cursor: pointer;
  width: 100%;
  opacity: 0.9;
}

.btn:hover {
  opacity: 1;
}
</style>
    <head>
        <meta charset="utf-8" />
        <meta
            name="viewport"
            content="width=device-width, initial-scale=1, shrink-to-fit=no"
            />
        <meta name="description" content="" />
        <meta name="author" content="" />
        <title>NUOC HOA Home</title>
        <!-- Favicon-->
        <link rel="icon" type="image/x-icon" href="assets/favicon.ico" />
        <!-- Bootstrap icons-->
        <link
            href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.5.0/font/bootstrap-icons.css"
            rel="stylesheet"
            />
        <!-- Core theme CSS (includes Bootstrap)-->
        <link href="css/styles.css" rel="stylesheet" />
    </head>
    <body style="background-image:  url(https://img.freepik.com/free-photo/grunge-paint-background_1409-1337.jpg?w=2000)">
        <div style= "width: 40%; margin : auto; border : 1px solid #ccc; padding: 1rem" class= "mt-5">
            <h2> Login </h2>
            <form action="login" method="POST">
                <div class="mb-3">
                    <%--       <label for="username" class="form-label">Username</label>
                          <input type="text" placeholder="Enter Username" class="form-control" id="username" name="username" aria-describedby="emailHelp">
                    --%>
                  Username  <input type="text" placeholder="Enter Username" name="username" />
                </div>
                <div class="mb-3">
                     <%--
                    <label for="password" class="form-label">Password</label>
                    <input type="password" placeholder="Enter Password" class="form-control" id="password" name="password">
                      --%>
                       Password  <input type="text"  placeholder="Enter Password" name="password" />
                </div>
                <div class="mb-3 form-check">
                    <input type="checkbox" class="form-check-input" id="exampleCheck1" name="remember">
                    <label class="form-check-label" for="exampleCheck1" >Remember me</label>
                </div>
                      
                      <h3 class="text-danger">${error } </h3>
                <button type="submit" class="btn btn-primary">Login</button>
                <span class="psw">Forgot <a href="#">password?</a></span>
        </div>
    </form>

    <!-- Bootstrap core JS-->
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js"></script>
    <!-- Core theme JS-->
    <script src="js/scripts.js"></script>
</body>
</html>
