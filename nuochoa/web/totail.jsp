

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
             <div class="row">
                 <div class="col-md-2 mb-5">
             <h3>STATUS</h3>

                                <c:forEach items="${status}" var="C">
                                    <li class="list-group-item"><a href="searchos?id=${C.stid}">${C.stid}.${C.stname}</a></li>

                                </c:forEach>
                                    </div>
                 <div class="col-md-10 mb-5">
            <h3>Order placed</h3>
            
            <table class="table">
                <thead>
                    <tr>
                        <th scope="col">#</th>
                        <th scope="col">Id order</th>
                      
                        <th scope="col">totalPrice</th>
                        <th scope="col">note</th>
                        <th scope="col"> createdDate</th>
                         <th scope="col"> shippingId</th>
                         <th scope="col"> Status</th>
                          
                        
                    </tr>
                </thead>
                <tbody>
                    <c:forEach items="${listOrders}" var="O">
                    <form>
                        <tr>
                            <td>${O.id}</td>
                            <td>${O.id}</td>
                            
                            <td>${O.totalPrice}</td>
                            <td>${O.note}</td>
                            <td>${O.createdDate}</td>
                            <td>${O.shippingId}</td>
                            
                           
                            <td style="color: red"> 
                                <c:if test="${O.status_id ==1}">dang cho xac nhan</c:if>
                            <c:if test="${O.status_id ==2}">dang cho van chuyen</c:if>
                            <c:if test="${O.status_id ==3}">dang van chuyen</c:if>
                            <c:if test="${O.status_id ==4}">da nhan hang</c:if>
                            </td>
                            
                            

 
                        </tr>
                      
                    </form>
                </c:forEach>
                
                </tbody>
            </table>
            </div>
            </div>
        </div>
        <%@include file="components/footerComponent.jsp" %>
    </body>
</html>
