<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>

<head>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<title>Lazy-Products</title>
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet"
	href="<c:url value="/static/css/bootstrap.min.css"/>">
<link rel="stylesheet"
	href="<c:url value="/static/fontawesome-5.11.2/css/all.css"/>">
<link rel="stylesheet" href="<c:url value="/static/css/admin.css"/>">
<link rel="stylesheet"
	href="<c:url value="/static/css/datepicker3.css"/>">
<link rel="stylesheet"
	href="<c:url value="/static/css/product-detail.css"/>">

<!--Custom Font-->
<link
	href="https://fonts.googleapis.com/css?family=Montserrat&display=swap"
	rel="stylesheet">
</head>

<body>
	<nav class="navbar navbar-custom navbar-fixed-top" role="navigation">
		<div class="container-fluid">
			<div class="navbar-header">
				<button type="button" class="navbar-toggle collapsed"
					data-toggle="collapse" data-target="#sidebar-collapse">
					<span class="sr-only">Toggle navigation</span> <span
						class="icon-bar"></span> <span class="icon-bar"></span> <span
						class="icon-bar"></span>
				</button>
				<a class="navbar-brand" href="#"><span>Lazy</span>Admin</a>
				<ul class="nav navbar-top-links navbar-right">
					<li class="dropdown"><a class="dropdown-toggle count-info"
						data-toggle="dropdown" href="#"> <em class="fa fa-envelope"></em><span
							class="label label-danger">15</span>
					</a>
						<ul class="dropdown-menu dropdown-messages">
							<li>
								<div class="dropdown-messages-box">
									<a href="profile.jsp" class="pull-left"> <img alt="image"
										class="img-circle" src="http://placehold.it/40/30a5ff/fff">
									</a>
									<div class="message-body">
										<small class="pull-right">3 mins ago</small> <a href="#"><strong>John
												Doe</strong> commented on <strong>your photo</strong>.</a> <br />
										<small class="text-muted">1:24 pm - 25/03/2015</small>
									</div>
								</div>
							</li>
							<li class="divider"></li>
							<li>
								<div class="dropdown-messages-box">
									<a href="profile.jsp" class="pull-left"> <img alt="image"
										class="img-circle" src="http://placehold.it/40/30a5ff/fff">
									</a>
									<div class="message-body">
										<small class="pull-right">1 hour ago</small> <a href="#">New
											message from <strong>Jane Doe</strong>.
										</a> <br />
										<small class="text-muted">12:27 pm - 25/03/2015</small>
									</div>
								</div>
							</li>
							<li class="divider"></li>
							<li>
								<div class="all-button">
									<a href="#"> <em class="fa fa-inbox"></em> <strong>All
											Messages</strong>
									</a>
								</div>
							</li>
						</ul></li>
					<li class="dropdown"><a class="dropdown-toggle count-info"
						data-toggle="dropdown" href="#"> <em class="fa fa-bell"></em><span
							class="label label-info">5</span>
					</a>
						<ul class="dropdown-menu dropdown-alerts">
							<li><a href="#">
									<div>
										<em class="fa fa-envelope"></em> 1 New Message <span
											class="pull-right text-muted small">3 mins ago</span>
									</div>
							</a></li>
							<li class="divider"></li>
							<li><a href="#">
									<div>
										<em class="fa fa-heart"></em> 12 New Likes <span
											class="pull-right text-muted small">4 mins ago</span>
									</div>
							</a></li>
							<li class="divider"></li>
							<li><a href="#">
									<div>
										<em class="fa fa-user"></em> 5 New Followers <span
											class="pull-right text-muted small">4 mins ago</span>
									</div>
							</a></li>
						</ul></li>
				</ul>
			</div>
		</div>
		<!-- /.container-fluid -->
	</nav>
	<div id="sidebar-collapse" class="col-sm-3 col-lg-2 sidebar">
		<div class="profile-sidebar" type="button" data-toggle="modal"
			data-target="#account-settings">
			<div class="profile-userpic">
				<img src="http://placehold.it/50/30a5ff/fff" class="img-responsive"
					alt="">
			</div>
			<div class="profile-usertitle">
				<div class="profile-usertitle-name">Username</div>
				<div class="profile-usertitle-status">
					<span class="indicator label-success"></span>Online
				</div>
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
			<li><a href="${pageContext.request.contextPath}/admin"><em
					class="fas fa-tachometer-alt">&nbsp;</em> Dashboard</a></li>
			<li><a href="widgets.jsp"><em class="fa fa-calendar">&nbsp;</em>
					Widgets</a></li>
			<li class="active"><a
				href="${pageContext.request.contextPath}/admin/product"><em
					class="fab fa-product-hunt">&nbsp;</em> Product</a></li>
			<li><a href="${pageContext.request.contextPath}/admin/user"><em
					class="fa fa-toggle-off">&nbsp;</em> User Management</a></li>
			<li><a href="${pageContext.request.contextPath}/admin/category"><em
					class="fa fa-clone">&nbsp;</em> Category</a></li>
			<li class="parent "><a data-toggle="collapse" href="#sub-item-1">
					<em class="fa fa-navicon">&nbsp;</em> Multilevel <span
					data-toggle="collapse" href="#sub-item-1" class="icon pull-right"><em
						class="fa fa-plus"></em></span>
			</a>
				<ul class="children collapse" id="sub-item-1">
					<li><a class="" href="error404.jsp"> <span
							class="fa fa-arrow-right">&nbsp;</span> Error 404
					</a></li>
					<li><a class="" href="error505.jsp"> <span
							class="fa fa-arrow-right">&nbsp;</span> Error 500
					</a></li>
					<li><a class="" href="#"> <span class="fa fa-arrow-right">&nbsp;</span>
							Blank Page
					</a></li>
				</ul></li>
			<li><a href="login.jsp"><em class="fa fa-power-off">&nbsp;</em>
					Logout</a></li>
		</ul>
	</div>
	<!--/.sidebar-->
	<div class="modal" id="account-settings">
		<div class="modal-dialog modal-dialog-centered" type="document">
			<div class="modal-content">
				<div class="modal-header">Settings</div>
				<div class="modal-body">
					<%@ include file="account-settings.jsp"%>
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
				<li><a href="#"> <em class="fa fa-home"></em>
				</a></li>
				<li class="active">Products</li>
			</ol>
		</div>
		<!--/.row-->
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
						<div class="col-sm-9">Products</div>
						<div class="col-sm-3 btn-custom">
							<i id="btn-new-product" class="fas fa-plus" type="button"
								data-toggle="modal" data-backdrop="static" data-keyboard="false"
								data-target="#modal-add-group"></i> Add
						</div>
					</div>
					<div class="modal" id="modal-add-group">
						<div class="modal-dialog modal-dialog-centered modal-lg"
							type="document">
							<div class="modal-content">
								<div class="modal-header">
									<h2>
										<strong>Create New Product</strong>
									</h2>
								</div>


								<div class="modal-body">
									<form id="input-add-group" method="post"
										action="${pageContext.request.contextPath}/admin/product">

										<!--Div hiển thị form để nhập dữ liệu-->
										<div id="form-input">
											<div class="btn-up-down">
												<i class="fa fa-angle-double-right" type="button"
													data-toggle="collapse" data-target="#input-product"
													aria-hidden="true"></i> <span>Enter Product</span>
											</div>

											<div id="input-product" class="collapse">
												<input type="text" name="name"
													class="form-control input-text" required="required"
													placeholder="Enter name product"> <input
													type="text" name="description"
													class="form-control input-text" required="required"
													placeholder="Enter description">
												<textarea class="form-control input-text"
													name="description_detail" required="required"
													placeholder="Enter description detail" rows="3"></textarea>
												<input type="text" name="image"
													class="form-control input-text" required="required"
													placeholder="Enter link image"> <input type="text"
													name="price" class="form-control input-text"
													required="required" placeholder="Enter price (VND)">
												<input type="text" name="quantity"
													class="form-control input-text" required="required"
													placeholder="Enter quantity"> <select
													id="category-options" name="category"
													class="form-control input-text">
													<option value="1">Choose Category</option>
												</select>
											</div>

											<div class="btn-up-down">
												<i class="fa fa-angle-double-right" type="button"
													data-toggle="collapse" data-target="#input-product-detail"
													aria-hidden="true"></i> <span>Enter Product Detail</span>
											</div>

											<div id="input-product-detail" class="collapse">
												<input type="text" name="accessories"
													class="form-control input-text" required="required"
													placeholder="Enter Accessories"> <input type="text"
													name="guarantee" class="form-control input-text"
													required="required" placeholder="Enter Guarantee">
												<input type="text" name="image1"
													class="form-control input-text" required="required"
													placeholder="Enter Link Image1"> <input type="text"
													name="image2" class="form-control input-text"
													required="required" placeholder="Enter Link Image2">
												<input type="text" name="image3"
													class="form-control input-text" required="required"
													placeholder="Enter Link Image3"> <input type="text"
													name="image4" class="form-control input-text"
													required="required" placeholder="Enter Link Image4">
												<input type="text" name="image5"
													class="form-control input-text" required="required"
													placeholder="Enter Link Image5"> <input type="text"
													name="information" class="form-control input-text"
													placeholder="Enter Infomation">
											</div>
										</div>

<!--div review sản phẩm(hiển thị sản phẩm như xem chi tiết ở web) lấy dữ liệu được nhập từ div input-->
						<div class="modal-body" id="review-product-detail">
											<div>

												<div class="row w-100">
													<div class="col-lg-5">
														<img class="img-fluid" id="img-review">
													</div>
													<div class="col-lg-7">
														<div class="panel panel-default">
															<div class="panel-heading overflow-hidden"
																style="border-bottom: 1px solid rgba(0, 0, 0, 0.4);">
																<h2 id="name-review"></h2>
															</div>
															<div class="panel-body">
																<div class="row w-100"
																	style="border-bottom: 1px solid rgba(0, 0, 0, 0.3); padding: 20px;">
																	<div class="row w-100">
																		Giá:<span style="color: red;" id="price-review"></span>
																	</div>
																	<span class="fa fa-star checked"></span> <span
																		class="fa fa-star checked"></span> <span
																		class="fa fa-star checked"></span> <span
																		class="far fa-star"></span> <span class="far fa-star"></span>
																</div>

																<p style="font-size: 0.7em;">Số lượng</p>
																<div class="row w-100">
																	<div class="col-sm-4" id="quantity">
																		<div class="input-group" >
						
																				<div class="input-group-btn" >
																				<button
																					class="btn btn-outline-secondary border-none"
																					id="inc"
																					style="height:40px;border-radius: 0; border: 1px solid rgba(0, 0, 0, 0.2);"
																					type="button">
																					<i class="fas fa-plus"></i>
																				</button></div>
																				<div class="input-group-btn" >
																				<input type="text"
																					style="width: 40px;height:40px; border-radius: 0; border: 1px solid rgba(0, 0, 0, 0.2);"
																					class="form-control" value="1" id="quantity_">
																					</div>
																				<div class="input-group-btn" >
																				<button 
																					class="btn btn-outline-secondary border-none"
																					id="dsc"
																					style=" height:40px;border-radius: 0; border: 1px solid rgba(0, 0, 0, 0.2);"
																					type="button">
																					<i class="fas fa-minus"></i>
																				</button>
																				</div>

																		
																		</div>
																	
																	</div>
																	<div class="col-sm-8">
																		<button type="button" class="btn btn-primary">
																			<i class="fas fa-cart-plus"></i> Chọn mua
																		</button>
																	</div>
																</div>
															</div>
														</div>
													</div>
												</div>
												<div class="row w-100">
													<div class="panel panel-default col-lg-12">
														<div class="panel-heading"
															style="border-bottom: 1px solid rgba(0, 0, 0, 0.4);">
															<h2>Thông tin chi tiết sản phẩm</h2>
														</div>
														<div class="panel-body" ><p id="information-review"></p></div>
													</div>
												</div>
												<div class="row w-100">
													<div class="panel panel-default col-lg-12">
														<div class="panel-heading"
															style="border-bottom: 1px solid rgba(0, 0, 0, 0.4);">
															<h2>Mô tả sản phẩm</h2>
														</div>
														<div class="panel-body">
															<p id="description-detail-review"></p>
														</div>
													</div>
												</div>
											</div>
										</div>


										<div class="modal-footer">
											<!--Khi bấm button review thì đóng ẩn div để nhập dữ liệu mà hiển thị div để review-->
											<!--                                                Sau khi bấm thì nút review đổi tên thành nút back để quay lại div nhập dữ liệu-->
											<button class="btn btn-primary" type="button" id="btn-review">Review</button>
											<button type="submit" class="btn btn-primary"
												id="btn-add-group">Create</button>
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
									<div class="col-sm-1">
										<strong>ID</strong>
									</div>
									<div class="group-product-name col-sm-5">
										<strong>Name</strong>
									</div>
									<div class="col-sm-2">
										<strong>Price</strong>
									</div>
									<div class="col-sm-2">
										<strong>Quantity</strong>
									</div>
									<div class="col-sm-1">
										<strong>Status</strong>
									</div>
									<div class="col-sm-1">
									<i><strong>Detail</strong></i>
									</div>
								</div>
							</div>

							<c:forEach items="${productDto.listOfData}" var="product">
								<div class="panel panel-default">
									<div class="panel-body">
										<div class="col-sm-1">${product.productID}</div>
										<div class="group-product-name col-sm-5">${product.name}</div>
										<div class="col-sm-2">${product.price}</div>
										<div class="col-sm-2">${product.quantity}</div>
										<div class="col-sm-1">
											<c:choose>
												<c:when test="${product.status}">
													<button onclick="changeStatus(${product.productID})"
														class="btn btn-light">
														<i class="fa fa-check" aria-hidden="true"></i>
													</button>
												</c:when>
												<c:otherwise>
													<button onclick="changeStatus(${product.productID})"
														class="btn btn-light">
														<i class="fa fa-ban" aria-hidden="true"></i>
													</button>
												</c:otherwise>
											</c:choose>
										</div>
										<div class="col-sm-1">
											<a
												href="${pageContext.request.contextPath}/admin/product?productId=${product.productID}"
												class="btn btn-light"><i class="fa fa-eye"
												aria-hidden="true"></i></a>
										</div>
									</div>
								</div>
							</c:forEach>

							<!-- pagination -->
							<div class="container"
								<nav aria-label="pagination">
                                        <ul class="pagination">
                                            <c:if test="${productDto.currentPage == 1}">
                                                <li class="page-item disabled">
                                                    <a class="page-link" href="#" tabindex="-1">Previous</a>
                                                </li>
                                                <li class="page-item active">
                                                    <a class="page-link" href="${pageContext.request.contextPath}/admin/product?currentPage=1">1 <span class="sr-only">(current)</span></a>
                                                </li>
                                                <c:if test="${productDto.totalPages > 1}">
                                                    <li class="page-item"><a class="page-link" href="${pageContext.request.contextPath}/admin/product?currentPage=2">2</a></li>
                                                    </c:if>
                                                    <c:if test="${productDto.totalPages > 2}">
                                                    <li class="page-item"><a class="page-link" href="${pageContext.request.contextPath}/admin/product?currentPage=3">3</a></li>
                                                    </c:if>
                                                    <c:if test="${productDto.totalPages > 1}">
                                                    <li class="page-item">
                                                        <a class="page-link" href="${pageContext.request.contextPath}/admin/product?currentPage=2">Next</a>
                                                    </li>
                                                </c:if>
                                                <c:if test="${productDto.totalPages == 1}">
                                                    <li class="page-item disabled">
                                                        <a class="page-link" href="#">Next</a>
                                                    </li>
                                                </c:if>
                                            </c:if>

                                            <c:if test="${productDto.currentPage > 1}">
                                                <li class="page-item">
                                                    <a class="page-link" href="${pageContext.request.contextPath}/admin/product?currentPage=${productDto.currentPage-1}" tabindex="-1">Previous</a>
                                                </li>
                                                <li class="page-item"><a class="page-link" href="${pageContext.request.contextPath}/admin/product?currentPage=${productDto.currentPage-1}">${productDto.currentPage-1}</a></li>
                                                <li class="page-item active">
                                                    <a class="page-link" href="${pageContext.request.contextPath}/admin/product?currentPage=${productDto.currentPage}">${productDto.currentPage} <span class="sr-only">(current)</span></a>
                                                </li>
                                                <c:if test="${productDto.totalPages > productDto.currentPage}">
                                                    <li class="page-item"><a class="page-link" href="${pageContext.request.contextPath}/admin/product?currentPage=${productDto.currentPage+1}">${productDto.currentPage+1}</a></li>
                                                    </c:if>
                                                    <c:if test="${productDto.totalPages > productDto.currentPage}">
                                                    <li class="page-item">
                                                        <a class="page-link" href="${pageContext.request.contextPath}/admin/product?currentPage=${productDto.currentPage+1}">Next</a>
                                                    </li>
                                                </c:if>
                                                <c:if test="${productDto.totalPages <= productDto.currentPage}">
                                                    <li class="page-item disabled">
                                                        <a class="page-link" href="#">Next</a>
                                                    </li>
                                                </c:if>
                                            </c:if>                                          
                                        </ul>
                                    </nav></div>

							<div class="panel panel-default">
								<%--<%@ include file="pagination.jsp"%>--%>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
	<!--/.main-->


	<script
		src="<c:url value="/static/jquery-3.4.1/jquery-1.11.1.min.js"/>"></script>
	<script src="<c:url value="/static/jquery-3.4.1/chart.min.js"/>"></script>
	<script src="<c:url value="/static/jquery-3.4.1/chart-data.js"/>"></script>
	<script src="<c:url value="/static/jquery-3.4.1/easypiechart.js"/>"></script>
	<script
		src="<c:url value="/static/jquery-3.4.1/easypiechart-data.js"/>"></script>
	<script
		src="<c:url value="/static/jquery-3.4.1/bootstrap-datepicker.js"/>"></script>
	<script src="<c:url value="/static/jquery-3.4.1/custom.js"/>"></script>
	<script
		src="<c:url value="/static/bootstrap-4.0.0/js/bootstrap.min.js"/>"></script>
	<script>
                                                            $('#btn-new-product').click(function () {
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
                                                                    },
                                                                    error: function (x, e) {
                                                                        console.log(e)
                                                                    }
                                                                });
                                                            });

                                                            function changeStatus(productId) {
                                                                $.ajax({
                                                                    url: window.location.pathname.substring(0, window.location.pathname.indexOf("/", 2)) + '/admin/api/products',
                                                                    contentType: 'application/json;charset=utf-8',
                                                                    dataType: 'text',
                                                                    data: {
                                                                        productId: productId
                                                                    },
                                                                    type: 'DELETE',
                                                                    success: function (response) {
                                                                        if (response == 'ok') {
                                                                            location.reload();
                                                                        }
                                                                    },
                                                                    error: function (x, e) {
                                                                        alert(e);
                                                                    }
                                                                });
                                                            }
                                                            

                                                            $('#review-product-detail').hide();
                                                            $('#form-input').show();
                                                            $("#btn-review").show();
                                                            $('#btn-review').click(function name() {
                                                        	      var text =$(this).html();
                                                        	      if(text=="Review"){
                                                        	    	  $(this).text("Back");
                                                          	      
                                                          	        var name =$("input[name='name']").val();
                                                          	        var image=$("input[name='image']").val();
                                                          	        var price=$("input[name='price']").val();
                                                          	        var descriptionDetail=$("textarea[name='description_detail']").val();
                                                          	        var information=$("input[name='information']").val();
                                                          	       //alert(information);
                                                          	        $("#img-review").attr("src",image);
                                                          	        $("#name-review").text(name);
                                                          	        $("#price-review").text(price+" đ");
                                                          	        $("#description-detail-review").text(descriptionDetail);
                                                          	        $("#information-review").text(information);
                                                          	        $('#form-input').hide();
                                                      	            $('#review-product-detail').show(); 
                                                        	      }else{
                                                        	    	  $(this).text("Review");
                                                        	    	  $('#form-input').show();
                                                            	        $('#review-product-detail').hide(); 
                                                        	      }  
							                                });
                                                            

        </script>
</body>

</html>
