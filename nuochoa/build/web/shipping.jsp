

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
        <div class="container" style="min-height: 1000px">
             <h3></h3>
            <h3>Shipping information</h3>
            <form action="searchship" class="d-flex mx-auto">
                <input
                    class="form-control me-2"
                    type="search"
                    placeholder="Search ID shipping"
                    aria-label="Search"
                    name="id"
                    />
                <button class="btn btn-outline-success" type="submit">
                    Search
                </button>
            </form>
            <table class="table">
                <thead>
                    <tr>
                        <th scope="col">#</th>
                        <th scope="col">Id</th>
                      
                        <th scope="col">Name</th>
                        <th scope="col">Phone</th>
                        <th scope="col"> Address</th>
                        
                    </tr>
                </thead>
                <tbody>
                    <c:forEach items="${listshipping}" var="O">
                    <form>
                        <tr>
                            <td>${O.id}</td>
                            <td>${O.id}</td>
                            
                            <td>${O.name}</td>
                            <td>${O.phone}</td>
                            <td>${O.address}</td>
                            

 
                        </tr>
                      
                    </form>
                </c:forEach>
                </tbody>
            </table>
            
        </div>
        <%@include file="components/footerComponent.jsp" %>
    </body>
</html>
