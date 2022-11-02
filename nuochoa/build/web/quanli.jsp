

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

        <!-- Product section-->
        <section class="py-5">

            <div class="container" style="min-height: 1000px">
                <h1>Manage Product</h1>
                
                <div class="row">
                    <div class="col-md-12" style="border: 1px solid #ccc; border-radius: 5px; padding: 1rem">
                       <div class="row">
                        <div class="col-sm-10">
                            <h2>List <b>Product</b></h2>
                            
                        </div>
                        <div class="col-sm-2">
                            <a href="add"  class="btn btn-success" data-toggle="modal"><i class="material-icons">&#xE147;</i> <span>Add New Product</span></a>
                            
                        </div>
                    </div>
                        <table class="table">
                            <thead>
                                <tr>
                                    <th scope="col">#</th>
                                    <th scope="col">Image</th>
                                    <th scope="col">Name</th>
                                    <th scope="col">Quantity</th>
                                    <th scope="col">Price</th>
                                    <th scope="col">Description</th>
                                     <th scope="col"></th>
                                    <th scope="col"></th>
                                    <th scope="col"></th>
                                </tr>
                            </thead>
                            <tbody>
                                <c:forEach items="${listProducts}" var="P">
                                    <tr>
                                        <td>${P.id}</td>
                                        <td><img src="${P.imageUrl}" width="40"/></td>
                                        <td>${P.name}</td>
                                        <td>${P.quantity}</td>
                                        <td>${P.price}</td>
                                        <td>${P.description}</td>
                                        
                                        <td><a class="btn btn-outline-dark" href="loadp?productId=${P.id}">Edit</a></td>
                                        <td><a class="btn btn-outline-dark" href="delete?id=${P.id}">delete</a></td>
                                    </tr>
                                </c:forEach>
                            </tbody>
                        </table>
                    </div>
                </div>
            </div>
            
            
        </section>
        <%@include file="components/footerComponent.jsp" %>
    </body>
</html>
