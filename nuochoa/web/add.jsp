

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

        <div class="modal-dialog">
            <div class="modal-content">
                <form action="add" method="post">
                    <div class="modal-header">						
                        <h4 class="modal-title">Add Product</h4>
                        <button type="button" class="close" data-dismiss="modal" aria-hidden="true">&times;</button>
                    </div>
                    <div class="modal-body">					
                        <div class="form-group">
                            <label>Name</label>
                            <input name="name" type="text" class="form-control" >
                        </div>
                        <div class="form-group">
                            <label>Quantity</label>
                            <input name="quantity" type="text" class="form-control" >
                        </div>
                        <div class="form-group">
                            <label>Price</label>
                            <input name="price" type="text" class="form-control" >
                        </div>
                        <div class="form-group">
                            <label>Image</label>
                            <input name="imageUrl" type="text" class="form-control" >
                        </div>
                        <div class="form-group">
                            <label>Description</label>
                            <textarea name="description" class="form-control" ></textarea>
                        </div>


                        <div class="form-group">
                            <label>Category</label>
                            <select name="categoryId" class="form-select" aria-label="Default select example">
                                <c:forEach items="${requestScope.listCategories}" var="c">
                                    <option value="${c.id}">${c.name}</option>
                                </c:forEach>
                            </select>
                        </div>
                        <div class="form-group">
                            <label>Thuong Hieu</label>
                            <select name="categoryId" class="form-select" aria-label="Default select example">
                                <c:forEach items="${requestScope.thuonghieu}" var="c">
                                    <option value="${c.idth}">${c.nameth}</option>
                                </c:forEach>
                            </select>
                        </div>

                    </div>
                    <div class="modal-footer">
                        <a class="btn btn-outline-dark" href="manager">Cancel</a>
                       
                        <input type="submit" onclick="abc()" class="btn btn-success" value="Add" >
                       
                    </div>
                </form>
            </div>
        </div>



        <script>
            function abc() {
                alert("Thêm Thành Công");
            }
        </script>
        <%@include file="components/footerComponent.jsp" %>
    </body>
</html>
