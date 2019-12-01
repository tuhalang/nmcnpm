<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>

    <head>
        <meta charset="utf-8">
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <title>Lazy-Products</title>
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <link rel="stylesheet" href="<c:url value="/static/css/bootstrap.min.css"/>">
        <link rel="stylesheet" href="<c:url value="/static/fontawesome-5.11.2/css/all.css"/>">
        <link rel="stylesheet" href="<c:url value="/static/css/admin.css"/>">
        <link rel="stylesheet" href="<c:url value="/static/css/datepicker3.css"/>">

        <!--Custom Font-->
        <link href="https://fonts.googleapis.com/css?family=Montserrat&display=swap" rel="stylesheet">
    </head>

    <body>
        <nav class="navbar navbar-custom navbar-fixed-top" role="navigation">
            <div class="container-fluid">
                <div class="navbar-header">
                    <button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#sidebar-collapse"><span class="sr-only">Toggle navigation</span>
                        <span class="icon-bar"></span>
                        <span class="icon-bar"></span>
                        <span class="icon-bar"></span></button>
                    <a class="navbar-brand" href="#"><span>Lazy</span>Admin</a>
                    <ul class="nav navbar-top-links navbar-right">
                        <li class="dropdown">
                            <a class="dropdown-toggle count-info" data-toggle="dropdown" href="#">
                                <em class="fa fa-envelope"></em><span class="label label-danger">15</span>
                            </a>
                            <ul class="dropdown-menu dropdown-messages">
                                <li>
                                    <div class="dropdown-messages-box">
                                        <a href="profile.jsp" class="pull-left">
                                            <img alt="image" class="img-circle" src="http://placehold.it/40/30a5ff/fff">
                                        </a>
                                        <div class="message-body"><small class="pull-right">3 mins ago</small>
                                            <a href="#"><strong>John Doe</strong> commented on <strong>your photo</strong>.</a>
                                            <br /><small class="text-muted">1:24 pm - 25/03/2015</small></div>
                                    </div>
                                </li>
                                <li class="divider"></li>
                                <li>
                                    <div class="dropdown-messages-box">
                                        <a href="profile.jsp" class="pull-left">
                                            <img alt="image" class="img-circle" src="http://placehold.it/40/30a5ff/fff">
                                        </a>
                                        <div class="message-body"><small class="pull-right">1 hour ago</small>
                                            <a href="#">New message from <strong>Jane Doe</strong>.</a>
                                            <br /><small class="text-muted">12:27 pm - 25/03/2015</small></div>
                                    </div>
                                </li>
                                <li class="divider"></li>
                                <li>
                                    <div class="all-button">
                                        <a href="#">
                                            <em class="fa fa-inbox"></em> <strong>All Messages</strong>
                                        </a>
                                    </div>
                                </li>
                            </ul>
                        </li>
                        <li class="dropdown">
                            <a class="dropdown-toggle count-info" data-toggle="dropdown" href="#">
                                <em class="fa fa-bell"></em><span class="label label-info">5</span>
                            </a>
                            <ul class="dropdown-menu dropdown-alerts">
                                <li>
                                    <a href="#">
                                        <div><em class="fa fa-envelope"></em> 1 New Message
                                            <span class="pull-right text-muted small">3 mins ago</span></div>
                                    </a>
                                </li>
                                <li class="divider"></li>
                                <li>
                                    <a href="#">
                                        <div><em class="fa fa-heart"></em> 12 New Likes
                                            <span class="pull-right text-muted small">4 mins ago</span></div>
                                    </a>
                                </li>
                                <li class="divider"></li>
                                <li>
                                    <a href="#">
                                        <div><em class="fa fa-user"></em> 5 New Followers
                                            <span class="pull-right text-muted small">4 mins ago</span></div>
                                    </a>
                                </li>
                            </ul>
                        </li>
                    </ul>
                </div>
            </div>
            <!-- /.container-fluid -->
        </nav>
        <div id="sidebar-collapse" class="col-sm-3 col-lg-2 sidebar">
            <div class="profile-sidebar" type="button" data-toggle="modal" data-target="#account-settings">
                <div class="profile-userpic">
                    <img src="http://placehold.it/50/30a5ff/fff" class="img-responsive" alt="">
                </div>
                <div class="profile-usertitle">
                    <div class="profile-usertitle-name">Username</div>
                    <div class="profile-usertitle-status"><span class="indicator label-success"></span>Online</div>
                </div>
                <div class="clear"></div>
            </div>
            <div class="divider"></div>
            <form role="search">
                <div class="form-group">
                    <input type="text" class="form-control" placeholder="Search">
                </div>
            </form>
            <ul class="nav menu">
                <li><a href="${pageContext.request.contextPath}/admin"><em class="fas fa-tachometer-alt">&nbsp;</em> Dashboard</a></li>
                <li><a href="${pageContext.request.contextPath}/admin/order"><em class="fa fa-calendar">&nbsp;</em> Order</a></li>
                <li class="active"><a href="${pageContext.request.contextPath}/admin/product"><em class="fab fa-product-hunt">&nbsp;</em> Product</a></li>
                <li><a href="${pageContext.request.contextPath}/admin/user"><em class="fa fa-toggle-off">&nbsp;</em> User Management</a></li>
                <li><a href="${pageContext.request.contextPath}/admin/category"><em class="fa fa-clone">&nbsp;</em> Category</a></li>
                <li class="parent ">
                    <a data-toggle="collapse" href="#sub-item-1">
                        <em class="fa fa-navicon">&nbsp;</em> Multilevel <span data-toggle="collapse" href="#sub-item-1" class="icon pull-right"><em class="fa fa-plus"></em></span>
                    </a>
                    <ul class="children collapse" id="sub-item-1">
                        <li>
                            <a class="" href="error404.jsp">
                                <span class="fa fa-arrow-right">&nbsp;</span> Error 404
                            </a>
                        </li>
                        <li>
                            <a class="" href="error505.jsp">
                                <span class="fa fa-arrow-right">&nbsp;</span> Error 500
                            </a>
                        </li>
                        <li>
                            <a class="" href="#">
                                <span class="fa fa-arrow-right">&nbsp;</span> Blank Page
                            </a>
                        </li>
                    </ul>
                </li>
                <li><a href="${pageContext.request.contextPath}/logout"><em class="fa fa-power-off">&nbsp;</em> Logout</a></li>
            </ul>
        </div>
        <!--/.sidebar-->
        <div class="modal" id="account-settings">
            <div class="modal-dialog modal-dialog-centered" type="document">
                <div class="modal-content">
                    <div class="modal-header">Settings</div>
                    <div class="modal-body">
                        <%@ include file="account-settings.jsp" %>
                    </div>
                    <div class="modal-footer">
                        <button class="btn btn-primary">Save</button>
                        <button class="btn btn-primary" data-dismiss="modal">Close</button>
                    </div>
                </div>
            </div>
        </div>

        <div class="col-sm-9 col-sm-offset-3 col-lg-10 col-lg-offset-2 main">
            <div class="row">
                <ol class="breadcrumb">
                    <li>
                        <a href="#">
                            <em class="fa fa-home"></em>
                        </a>
                    </li>
                    <li class="active">Products / Details / ${product.singleData.productID}</li>
                </ol>
            </div>
            <!--/.row-->

            <div class="row">
                <div class="col-lg-12">
                    <form id="input-add-group" method="POST" action="${pageContext.request.contextPath}/admin/product">

                        <div class="btn-up-down">
                            <i class="fa fa-angle-double-right" type="button" data-toggle="collapse" data-target="#input-product" aria-hidden="true"></i>
                            <span>Product</span>
                        </div>

                        <div id="input-product" class="collapse">
                            <div class="form-group row">
                                <label class="col-sm-2 col-form-label label-custom">ProductID</label>
                                <div class="col-sm-10">
                                    <input type="text" name="productId" class="form-control" required="required" value="${product.singleData.productID}" readonly>
                                </div>
                            </div>
                            <div class="form-group row">
                                <label class="col-sm-2 col-form-label label-custom">Name</label>
                                <div class="col-sm-10">
                                    <input type="text" name="name" class="form-control" required="required" value="${product.singleData.name}">
                                </div>
                            </div>
                            <div class="form-group row">
                                <label class="col-sm-2 col-form-label label-custom">Description</label>
                                <div class="col-sm-10">
                                    <input type="text" name="description" class="form-control" required="required" value="${product.singleData.description}">
                                </div>
                            </div>
                            <div class="form-group row">
                                <label class="col-sm-2 col-form-label label-custom">Description Detail</label>
                                <div class="col-sm-10">
                                    <textarea type="text" name="description_detail" class="form-control" required="required" rows="3">${product.singleData.descriptionDetail}</textarea>
                                </div>
                            </div>
                            <div class="form-group row">
                                <label class="col-sm-2 col-form-label label-custom">Image</label>
                                <div class="col-sm-10">
                                    <input type="text" name="image" class="form-control" required="required" value="${product.singleData.image}">
                                </div>
                            </div>
                            <div class="form-group row">
                                <label class="col-sm-2 col-form-label label-custom">Price</label>
                                <div class="col-sm-10">
                                    <input type="text" name="price" class="form-control" required="required" value="${product.singleData.price}">
                                </div>
                            </div>
                            <div class="form-group row">
                                <label class="col-sm-2 col-form-label label-custom">Quantity</label>
                                <div class="col-sm-10">
                                    <input type="text" name="quantity" class="form-control" required="required" value="${product.singleData.quantity}">
                                </div>
                            </div>
                            <div class="form-group row">
                                <label class="col-sm-2 col-form-label label-custom">Category</label>
                                <div class="col-sm-10">
                                    <select id="category-options" name="category" class="form-control">
                                        <option value="${product.singleData.categoryID}">Choose Category</option>
                                    </select>
                                </div>
                            </div>
                        </div>

                        <div class="btn-up-down">
                            <i class="fa fa-angle-double-right" type="button" data-toggle="collapse" data-target="#input-product-detail" aria-hidden="true"></i>
                            <span>Product Detail</span>
                        </div>

                        <div id="input-product-detail" class="collapse">
                            <div class="form-group row">
                                <label class="col-sm-2 col-form-label label-custom">ProductDetailID</label>
                                <div class="col-sm-10">
                                    <input type="text" name="productDetailId" class="form-control" required="required" value="${product.singleData.productDetailID}" readonly>
                                </div>
                            </div>
                            <div class="form-group row">
                                <label class="col-sm-2 col-form-label label-custom">Accessories</label>
                                <div class="col-sm-10">
                                    <input type="text" name="accessories" class="form-control" required="required" value="${product.productDetail.accessories}">
                                </div>
                            </div>
                            <div class="form-group row">
                                <label class="col-sm-2 col-form-label label-custom">Guarantee</label>
                                <div class="col-sm-10">
                                    <input type="text" name="guarantee" class="form-control" required="required" value="${product.productDetail.guarantee}">
                                </div>
                            </div>
                            <div class="form-group row">
                                <label class="col-sm-2 col-form-label label-custom">Image1</label>
                                <div class="col-sm-10">
                                    <input type="text" name="image1" class="form-control" required="required" value="${product.productDetail.image1}">
                                </div>
                            </div>
                            <div class="form-group row">
                                <label class="col-sm-2 col-form-label label-custom">Image2</label>
                                <div class="col-sm-10">
                                    <input type="text" name="image2" class="form-control" required="required" value="${product.productDetail.image2}">
                                </div>
                            </div>
                            <div class="form-group row">
                                <label class="col-sm-2 col-form-label label-custom">Image3</label>
                                <div class="col-sm-10">
                                    <input type="text" name="image3" class="form-control" required="required" value="${product.productDetail.image3}">
                                </div>
                            </div>
                            <div class="form-group row">
                                <label class="col-sm-2 col-form-label label-custom">Image4</label>
                                <div class="col-sm-10">
                                    <input type="text" name="image4" class="form-control" required="required" value="${product.productDetail.image4}">
                                </div>
                            </div>
                            <div class="form-group row">
                                <label class="col-sm-2 col-form-label label-custom">Image5</label>
                                <div class="col-sm-10">
                                    <input type="text" name="image5" class="form-control" required="required" value="${product.productDetail.image5}">
                                </div>
                            </div>
                            <div class="form-group row">
                                <label class="col-sm-2 col-form-label label-custom">Information</label>
                                <div class="col-sm-10">
                                    <input type="text" name="information" class="form-control" required="required" value="${product.productDetail.information}">
                                </div>
                            </div>
                        </div>



                        <div class="modal-footer">
                            <button type="submit" class="btn btn-primary" id="btn-add-group">Update</button>
                        </div>
                    </form>
                </div>
            </div>
        </div>
        <!--/.main-->


        <script src="<c:url value="/static/jquery-3.4.1/jquery-1.11.1.min.js"/>"></script>
        <script src="<c:url value="/static/jquery-3.4.1/chart.min.js"/>"></script>
        <script src="<c:url value="/static/jquery-3.4.1/chart-data.js"/>"></script>
        <script src="<c:url value="/static/jquery-3.4.1/easypiechart.js"/>"></script>
        <script src="<c:url value="/static/jquery-3.4.1/easypiechart-data.js"/>"></script>
        <script src="<c:url value="/static/jquery-3.4.1/bootstrap-datepicker.js"/>"></script>
        <script src="<c:url value="/static/jquery-3.4.1/custom.js"/>"></script>
        <script src="<c:url value="/static/bootstrap-4.0.0/js/bootstrap.min.js"/>"></script>
        <script>
            $.ajax({
                url: window.location.pathname.substring(0, window.location.pathname.indexOf("/", 2)) + '/admin/api/categories',
                contentType: 'application/json;charset=utf-8',
                dataType: 'json',
                type: 'GET',
                success: function (response) {
                    $('#category-options').empty();
                    response.forEach((c, i) => {
                        $("#category-options").append("<option value='" + c['categoryID'] + "' >" + c['name'] + "</option>");
                    })
                    $('#category-options').val(${product.singleData.categoryID});
                },
                error: function (x, e) {
                    console.log(e)
                }
            });
        </script>
    </body>

</html>