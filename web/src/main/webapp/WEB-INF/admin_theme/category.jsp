<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>

    <head>
        <meta charset="utf-8">
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <title>Lazy - Category</title>
        <meta charset="utf-8">
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
                    <div class="profile-usertitle-name">${USER.username}</div>
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
                <li><a href="${pageContext.request.contextPath}/admin/product"><em class="fab fa-product-hunt">&nbsp;</em> Products</a></li>
                <li><a href="${pageContext.request.contextPath}/admin/user"><em class="fa fa-toggle-off">&nbsp;</em> User Management</a></li>
                <li class="active"><a href="${pageContext.request.contextPath}/admin/category"><em class="fa fa-clone">&nbsp;</em> Category</a></li>
                <li class="parent">
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
                    <form id="form-change-password" action="${pageContext.request.contextPath}/admin/api/account" method="post">
                        <div class="modal-body">
                            <%@ include file="account-settings.jsp" %>
                        </div>
                        <div class="modal-footer">
                            <button type="submit" class="btn btn-primary">Save</button>
                            <button class="btn btn-primary" data-dismiss="modal">Close</button>
                        </div>
                    </form>
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
                    <li class="active">Category</li>
                </ol>
            </div>

            <div class="row">
                <div class="col-lg-12">
                    <div class="panel panel-default">
                        <div class="panel-body">
                            <form id="search-product">
                                <input placeholder="Search">
                            </form>
                            <div class="show-products"></div>
                        </div>
                    </div>
                </div>
            </div>
            <div class="row">
                <div class="col-lg-12">
                    <div class="panel panel-default">
                        <div class="panel-heading">
                            <div class="col-sm-9">Category</div>
                            <div class="col-sm-3 btn-custom"><i class="fas fa-plus" type="button" data-toggle="modal" data-backdrop="static" data-keyboard="false" data-target="#modal-add-group"></i> New</div>
                        </div>
                        <div class="modal" id="modal-add-group">
                            <div class="modal-dialog modal-dialog-centered modal-lg" type="document">
                                <div class="modal-content">
                                    <div class="modal-header"><h2><strong>Create new category</strong></h2></div>
                                    <div class="modal-body">
                                        <form method="post" action="${pageContext.request.contextPath}/admin/category">
                                            <input type="text" name="name" class="form-control" aria-describedby="nameHelp" placeholder="Enter name category">
                                            <br>
                                            <input type="text" name="image" class="form-control" aria-describedby="nameHelp" placeholder="Enter link image">
                                            <div class="modal-footer">
                                                <button type="submit" class="btn btn-primary" id="btn-add-group">Create</button>
                                                <button class="btn btn-primary" data-dismiss="modal">Cancel</button>
                                            </div>
                                        </form>
                                    </div>

                                </div>
                            </div>
                        </div>

                        <div class="panel-body panel-group">
                            <div class="panel-group">
                                <div class="panel panel-default">
                                    <div class="panel-body">
                                        <div class="col-sm-1"><strong>ID</strong></div>
                                        <div class="col-sm-2"><strong>Name</strong></div>
                                        <div class="col-sm-8"><strong>Image</strong></div>
                                        <div class="col-sm-1"><strong>Edit</strong></div>
                                    </div>
                                </div>
                                <c:forEach items="${categoryDto.listOfData}" var="category">
                                    <div class="panel panel-default">
                                        <div class="panel-body">
                                            <div class="col-sm-1"> ${category.categoryID}</div>
                                            <div class="col-sm-2"> ${category.name}</div>
                                            <div class="col-sm-8"> ${category.image}</div>
                                            <div class="col-sm-1">
                                                <button onclick="edit(${category.categoryID})" class="btn btn-light" data-toggle="modal" data-backdrop="static" data-keyboard="false" data-target="#modal-edit"><i class="fas fa-tools"></i></button>
                                            </div>
                                        </div>
                                    </div>
                                </c:forEach>
                                <div class="modal" id="modal-edit">
                                    <div class="modal-dialog modal-dialog-centered modal-lg" type="document">
                                        <div class="modal-content">
                                            <div class="modal-header"><h2><strong>Edit category</strong></h2></div>
                                            <div class="modal-body">
                                                <form method="post" action="${pageContext.request.contextPath}/admin/category">
                                                    <input id="categoryId" type="text" name="categoryId" class="form-control" aria-describedby="nameHelp" placeholder="Enter name category" readonly="true">
                                                    <br>
                                                    <input id="categoryName" type="text" name="name" class="form-control" aria-describedby="nameHelp" placeholder="Enter name category">
                                                    <br>
                                                    <input id="categoryImage" type="text" name="image" class="form-control" aria-describedby="nameHelp" placeholder="Enter link image">
                                                    <div class="modal-footer">
                                                        <button type="submit" class="btn btn-primary" id="btn-add-group">Update</button>
                                                        <button class="btn btn-primary" data-dismiss="modal">Cancel</button>
                                                    </div>
                                                </form>
                                            </div>

                                        </div>
                                    </div>
                                </div>
                                <!-- pagination -->
                                <div class="container"
                                     <nav aria-label="pagination">
                                        <ul class="pagination">
                                            <c:if test="${categoryDto.currentPage == 1}">
                                                <li class="page-item disabled">
                                                    <a class="page-link" href="#" tabindex="-1">Previous</a>
                                                </li>
                                                <li class="page-item active">
                                                    <a class="page-link" href="${pageContext.request.contextPath}/admin/category?currentPage=1">1 <span class="sr-only">(current)</span></a>
                                                </li>
                                                <c:if test="${categoryDto.totalPages > 1}">
                                                    <li class="page-item"><a class="page-link" href="${pageContext.request.contextPath}/admin/category?currentPage=2">2</a></li>
                                                    </c:if>
                                                    <c:if test="${categoryDto.totalPages > 2}">
                                                    <li class="page-item"><a class="page-link" href="${pageContext.request.contextPath}/admin/category?currentPage=3">3</a></li>
                                                    </c:if>
                                                    <c:if test="${categoryDto.totalPages > 1}">
                                                    <li class="page-item">
                                                        <a class="page-link" href="${pageContext.request.contextPath}/admin/category?currentPage=2">Next</a>
                                                    </li>
                                                </c:if>
                                                <c:if test="${categoryDto.totalPages == 1}">
                                                    <li class="page-item disabled">
                                                        <a class="page-link" href="#">Next</a>
                                                    </li>
                                                </c:if>
                                            </c:if>

                                            <c:if test="${categoryDto.currentPage > 1}">
                                                <li class="page-item">
                                                    <a class="page-link" href="${pageContext.request.contextPath}/admin/category?currentPage=${categoryDto.currentPage-1}" tabindex="-1">Previous</a>
                                                </li>
                                                <li class="page-item"><a class="page-link" href="${pageContext.request.contextPath}/admin/category?currentPage=${categoryDto.currentPage-1}">${categoryDto.currentPage-1}</a></li>
                                                <li class="page-item active">
                                                    <a class="page-link" href="${pageContext.request.contextPath}/admin/category?currentPage=${categoryDto.currentPage}">${categoryDto.currentPage} <span class="sr-only">(current)</span></a>
                                                </li>
                                                <c:if test="${categoryDto.totalPages > categoryDto.currentPage}">
                                                    <li class="page-item"><a class="page-link" href="${pageContext.request.contextPath}/admin/category?currentPage=${categoryDto.currentPage+1}">${categoryDto.currentPage+1}</a></li>
                                                    </c:if>
                                                    <c:if test="${categoryDto.totalPages > categoryDto.currentPage}">
                                                    <li class="page-item">
                                                        <a class="page-link" href="${pageContext.request.contextPath}/admin/category?currentPage=${categoryDto.currentPage+1}">Next</a>
                                                    </li>
                                                </c:if>
                                                <c:if test="${categoryDto.totalPages <= categoryDto.currentPage}">
                                                    <li class="page-item disabled">
                                                        <a class="page-link" href="#">Next</a>
                                                    </li>
                                                </c:if>
                                            </c:if>                                          
                                        </ul>
                                    </nav>
                                </div>
                            </div>
                        </div>
                    </div>
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
        <script
    src="<c:url value="/static/js/admin-account.js"/>"></script>

        <script>

                                                    function edit(categoryId) {
                                                        $.ajax({
                                                            url: window.location.pathname.substring(0, window.location.pathname.indexOf("/", 2)) + '/admin/api/categories',
                                                            contentType: 'application/json;charset=utf-8',
                                                            dataType: 'json',
                                                            data: {
                                                                categoryId: categoryId
                                                            },
                                                            type: 'get',
                                                            success: function (response) {
                                                                console.log(response);
                                                                $('#categoryId').val(response['categoryID']);
                                                                $('#categoryName').val(response['name']);
                                                                $('#categoryImage').val(response['image']);
                                                            },
                                                            error: function (x, e) {
                                                                alert(e);
                                                            }
                                                        })
                                                    }
        </script>
    </body>

</html>