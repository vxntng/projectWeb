

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
    <head>
       

        <meta charset="utf-8" />
        <meta
            name="viewport"
            content="width=device-width, initial-scale=1, shrink-to-fit=no"
            />
        <meta name="description" content="" />
        <meta name="author" content="" />
        <title>Shop Homepage - Start Bootstrap Template</title>
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
    <body>
        <%@include file="components/navBarComponent.jsp" %>


        <div class="modal-dialog" style="min-height: 600px">
            <div class="modal-content">
                <form action="edit-mk" method="post">
                    <div class="modal-header">						
                        <h4 class="modal-title">Profile Account</h4>
                        <button type="button" class="close" data-dismiss="modal" aria-hidden="true">&times;</button>
                    </div>
                    <div class="modal-body">					

                        <div class="form-group">
                            <label>Username</label>
                            <input value="${sessionScope.account.username}" name="username" type="text" class="form-control" readonly required>
                        </div>
                        <div class="form-group">
                            <label>Password</label>
                            <input value="${sessionScope.account.password}" name="password" type="text" class="form-control" readonly required>
                        </div>
                        <div class="form-group">
                            <label>DisplayName</label>
                            <input value="${sessionScope.account.displayName}" name="displayName" type="text" class="form-control" readonly required>
                        </div>
                    </div>
                    <div class="modal-footer">
                        <div style="color:red; font-size: 10px"> If you change your password, you will be logged in again</div>
                        <a href="editmk.jsp" class="btn btn-outline-primary ms-lg-2" >Change information</a>
                    </div>
                </form>
            </div>
        </div>


    </div>



    <%@include file="components/footerComponent.jsp" %>
</body>
</html>
