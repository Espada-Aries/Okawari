<%@page import="okawari_model.MenuDTO"%>
<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<link rel="apple-touch-icon" sizes="76x76"
	href="/project_okawari/bootstrap/assets/img/apple-icon.png">
<link rel="icon" type="image/png"
	href="/project_okawari/bootstrap/assets/img/favicon.png">
<meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1" />
<title>外部発注（本店）</title>
<meta
	content='width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=0, shrink-to-fit=no'
	name='viewport' />
<!--     Fonts and icons     -->
<link
	href="https://fonts.googleapis.com/css?family=Montserrat:400,700,200"
	rel="stylesheet" />
<link
	href="https://maxcdn.bootstrapcdn.com/font-awesome/latest/css/font-awesome.min.css"
	rel="stylesheet">
<!-- CSS Files -->
<link href="/project_okawari/bootstrap/assets/css/bootstrap.min.css"
	rel="stylesheet" />
<link
	href="/project_okawari/bootstrap/assets/css/paper-dashboard.css?v=2.0.0"
	rel="stylesheet" />
<!-- CSS Just for demo purpose, don't include it in your project -->
<link href="/project_okawari/bootstrap/assets/demo/demo.css"
	rel="stylesheet" />

</head>

<script type ="text/javascript">
	function inputCheck() {
		if (document.frm.stock_count.value.length == 0) {
			alert("注文数量を入れて下さい。");
			frm.stock_count.focus();
			return false;
		}

		if (document.frm.stock_cost.value.length == 0) {
			alert("卸売価格を入れて下さい。");
			frm.stock_cost.focus();
			return false;

		}
		if (document.frm.stock_price.value.length == 0) {
			alert("小売価格を入れて下さい。");
			frm.stock_price.focus();
			return false;
		}

		if (document.frm.stock_expiredate.value.length == 0) {
			alert("賞味期限を入れて下さい。");
			frm.stock_expiredate.focus();
			return false;

		}
		return true;
	}
</script>

<body class="">
	<div class="wrapper ">
		<div class="sidebar" data-color="white" data-active-color="danger">
			<!--
	        Tip 1: You can change the color of the sidebar using: data-color="blue | green | orange | red | yellow"
	    -->
			<div class="logo">
				<a href="mainPage.jsp" class="simple-text logo-normal"> <img
					src="/project_okawari/bootstrap/assets/img/okawari.png" />
				</a>
			</div>
			<div class="sidebar-wrapper">
				<ul class="nav">
					<c:if test="${session.user_auth == 2 }">
						<li><a href="/project_okawari/orderCustomerList.okawari"> <i
								class="nc-icon nc-bank"></i>
								<p>顧客の注文リスト</p>
						</a></li>
					</c:if>
					
					<c:if test="${session.user_auth == 2 }">
						<li><a href="/project_okawari/orderBranchForm.okawari"> <i
								class="nc-icon nc-bank"></i>
								<p>発注（支店->本店）</p>
						</a></li>
					</c:if>

					<li><a href="/project_okawari/orderBranchList.okawari"> <i
							class="nc-icon nc-diamond"></i>
							<p>発注リスト（支店）</p>
					</a></li>

					<c:if test="${session.user_auth == 2 }">
						<li><a
							href="/project_okawari/showBranchStock.okawari?user_id=${session.user_id}">
								<i class="nc-icon nc-pin-3"></i>
								<p>支店ストック</p>
						</a></li>
					</c:if>

					<c:if test="${session.user_auth == 1 }">
						<li><a
							href="/project_okawari/showHeadStock.okawari?user_id=${session.user_id}">
								<i class="nc-icon nc-bell-55"></i>
								<p>本店ストック</p>
						</a></li>
					</c:if>

					<c:if test="${session.user_auth == 1 }">
						<li><a href="/project_okawari/addMenuForm.okawari"> <i
								class="nc-icon nc-single-02"></i>
								<p>新メニュー登録</p>
						</a></li>
					</c:if>

					<c:if test="${session.user_auth == 1 }">
						<li><a href="/project_okawari/addStockHeadForm.okawari">
								<i class="nc-icon nc-tile-56"></i>
								<p>外部発注（本店）</p>
						</a></li>
					</c:if>

					<c:if test="${session.user_auth == 1 }">
						<li><a href="/project_okawari/registerBranchForm.okawari">
								<i class="nc-icon nc-caps-small"></i>
								<p>支店登録</p>
						</a></li>
					</c:if>

					<li><a href="/project_okawari/userList.okawari"> <i
							class="nc-icon nc-spaceship"></i>
							<p>お店をさがす</p>
					</a></li>

					<c:if test="${session.user_auth == 1 }">
						<li><a href="/project_okawari/showHeadSales.okawari"> <i
								class="nc-icon nc-bell-55"></i>
								<p>売り上げ</p>
						</a></li>
					</c:if>

					<c:if test="${session.user_auth == 2 }">
						<li><a href="/project_okawari/userProfit.okawari"> <i
								class="nc-icon nc-bell-55"></i>
								<p>売り上げ</p>
						</a></li>
					</c:if>

					<c:if test="${session.user_auth == 2 }">
						<li><a href="/project_okawari/customerOrderCancle.okawari">
								<i class="nc-icon nc-bell-55"></i>
								<p>取り消し</p>
						</a></li>
					</c:if>


				</ul>
			</div>
		</div>
		<div class="main-panel">
			<!-- Navbar -->
			<nav
				class="navbar navbar-expand-lg navbar-absolute fixed-top navbar-transparent">
			<div class="container-fluid">
				<div class="navbar-wrapper">
					<div class="navbar-toggle">
						<button type="button" class="navbar-toggler">
							<span class="navbar-toggler-bar bar1"></span> <span
								class="navbar-toggler-bar bar2"></span> <span
								class="navbar-toggler-bar bar3"></span>
						</button>
					</div>
					<a class="navbar-brand" href="mainPage.jsp">孤独のグルメ</a>
				</div>
				<div>
					<a href="logout.okawari"
						style="float: right; text-decoration: none;">ログアウト</a>
				</div>
			</div>
			</nav>
			<!-- End Navbar -->
			<!-- <div class="panel-header panel-header-sm">
  
  
</div> -->
			<div class="content">
				<div class="row">
					<div class="col-md-12">
						<div class="card">
							<div class="card-header">
								<h4 class="card-title">外部発注（本店）</h4>
							</div>
							<div class="card-body">
								<div class="table-responsive">
									<form name="frm" action="addStockHead.okawari" method="post">
										<table class="table">
											<thead class=" text-primary">
												<input type="hidden" name="stock_head_id"
													value="${session.user_id }" />
												<th class="text-center">メニュー</th>
												<th class="text-center">数量</th>
												<th class="text-center">卸売価格</th>
												<th class="text-center">小売価格</th>
												<th class="text-center">賞味期限</th>
											</thead>
											<tbody>
												<tr>
													<td><select name="stock_menu_num" class="form-control">
															<option value="">メニュー</option>
															<c:forEach var="list" items="${menuList }">
																<option value="${list.menu_num }">${list.menu_name }</option>
															</c:forEach>
													</select></td>
													<td><input type="text" name="stock_count"
														class="form-control" /></td>
													<td class="text-right"><input type="text"
														name="stock_cost" class="form-control" /></td>
													<td class="text-right"><input type="text"
														name="stock_price" class="form-control" /></td>
													<td><input type="text" name="stock_expiredate"
														class="form-control" placeholder="yy/MM/dd" /></td>
												</tr>
												<tr>
													<td colspan="5" align="center"><button type="submit" onclick = "javascript:return inputCheck()"
															class="btn btn-primary btn-round">注文</button></td>
												</tr>
											</tbody>

										</table>
									</form>
								</div>
							</div>
						</div>
					</div>
					<div class="col-md-12">
						<div class="card card-plain">
							<div class="card-header">
								<h4 class="card-title">本店在庫リスト</h4>

							</div>
							<div class="card-body">
								<div class="table-responsive">
									<form action="addStockHead.okawari" method="post">
										<table class="table">
											<thead class=" text-primary">
												<th class="text-center">メニュー番号</th>
												<th class="text-center">メニュー名</th>
												<th class="text-center">数量</th>
												<th class="text-center">卸売価格</th>
												<th class="text-center">小売価格</th>
												<th class="text-center">賞味期限</th>
											</thead>
											<tbody>
												<c:forEach var="stock" items="${stockList }"
													varStatus="status">
													<tr>
														<td align="center">${stock.stock_menu_num }</td>
														<c:set var="test" value="${stock.stock_menu_num }" />
														<%
															String menuName = "";
																List<MenuDTO> menuList = (List<MenuDTO>) request.getAttribute("menuList");
																for (int i = 0; i < menuList.size(); i++) {
																	if (((String.valueOf(menuList.get(i).getMenu_num()))
																			.equals(pageContext.getAttribute("test").toString()))) {
																		menuName = menuList.get(i).getMenu_name();
																		break;
																	}
																}
																request.setAttribute("menuName", menuName);
														%>
														<td align="center">${menuName }</td>
														<td align="center">${stock.stock_count }</td>
														<td align="center">${stock.stock_cost }</td>
														<td align="center">${stock.stock_price }</td>
														<td align="center">${stock.stock_expiredate }</td>
													</tr>
												</c:forEach>
											</tbody>
										</table>
									</form>
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>
			<footer class="footer footer-black  footer-white ">
			<div class="container-fluid">
				<div class="row">
					<nav class="footer-nav">

					</nav>
					<div class="credits ml-auto">
						<span class="copyright"> © <script>
							document.write(new Date().getFullYear())
						</script>, made with <i class="fa fa-heart heart"></i> Okawari
						</span>
					</div>
				</div>
			</div>
			</footer>
		</div>
	</div>
	<!--   Core JS Files   -->
	<script src="/project_okawari/bootstrap/assets/js/core/jquery.min.js"></script>
	<script src="/project_okawari/bootstrap/assets/js/core/popper.min.js"></script>
	<script
		src="/project_okawari/bootstrap/assets/js/core/bootstrap.min.js"></script>
	<script
		src="/project_okawari/bootstrap/assets/js/plugins/perfect-scrollbar.jquery.min.js"></script>
	<!—  Google Maps Plugin    —>
	<script src="https://maps.googleapis.com/maps/api/js?key=YOUR_KEY_HERE"></script>
	<!— Chart JS —>
	<script
		src="/project_okawari/bootstrap/assets/js/plugins/chartjs.min.js"></script>
	<!—  Notifications Plugin    —>
	<script
		src="/project_okawari/bootstrap/assets/js/plugins/bootstrap-notify.js"></script>
	<!— Control Center for Now Ui Dashboard: parallax effects, scripts for the example pages etc —>
	<script
		src="/project_okawari/bootstrap/assets/js/paper-dashboard.min.js?v=2.0.0"
		type="text/javascript"></script>
	<!— Paper Dashboard DEMO methods, don't include it in your project! —>
	<script src="/project_okawari/bootstrap/assets/demo/demo.js"></script>
</body>

</html>