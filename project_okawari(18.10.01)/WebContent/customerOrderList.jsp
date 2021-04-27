<%@ page language="java" contentType="text/html; charset=utf-8"
   pageEncoding="utf-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>


<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<meta http-equiv="Content-Type" content="text/html; charset=euc-jp" />
<meta http-equiv="Content-Type" content="text/html; charset=Shift_JIS" />
<link rel="apple-touch-icon" sizes="76x76"
   href="/project_okawari/bootstrap/assets/img/apple-icon.png">
<link rel="icon" type="image/png"
   href="/project_okawari/bootstrap/assets/img/favicon.png">
<link href="https://fonts.googleapis.com/earlyaccess/mplus1p.css"
   rel="stylesheet" />

<meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1" />
<title>顧客注文リスト</title>
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

<link href="https://fonts.googleapis.com/css?family=Sawarabi+Mincho"
   rel="stylesheet">
</head>

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
                        <h4 class="card-title">顧客注文リスト</h4>
                     </div>
                     <div class="card-body">
                        <div class="table-responsive">
                           <table class="table">
                              <thead class=" text-primary">                              
                                 <th class="text-center">注文番号</th>
                                 <th class="text-center">注文日付</th>
                                 <th class="text-center">注文時間</th>
                                 <th class="text-center">メニュー番号</th>
                                 <th class="text-center">メニュー名</th>
                                 <th class="text-center">数量</th>
                                 <th class="text-center">小売価格</th>
                                 <th class="text-center">卸売価格</th>
                                 <th class="text-center">総額</th>
                              </thead>
                              <tbody>
                                 <c:forEach var="list" items="${list}">
                                    <tr>
                                       <td class="text-center">${list.order_num }</td>
                                       <td class="text-center">${list.order_date }</td>
                                       <td class="text-center" >${list.order_time }</td>
                                       <td class="text-center">${list.order_menu_num }</td>
                                       <td class="text-center">${list.order_menu_name }</td>
                                       <td class="text-center">${list.order_count }</td>
                                       <td class="text-center">${list.order_perprice }</td>
                                       <td class="text-center">${list.order_oriprice }</td>
                                       <td class="text-center">${list.order_totprice }</td>
                                       
                                    </tr>
                                 </c:forEach>

                              </tbody>
                           </table>

                        </div>
                     </div>
                  </div>
               </div>
            </div>
         </div>
         <footer class="footer footer-black  footer-white ">
            <div class="container-fluid">
               <div class="row">

                  <div class="credits ml-auto">
                     <span class="copyright"> © <script>
                        document.write(new Date().getFullYear())
                     </script>, made with <i class="fa fa-heart heart"></i>Okawari
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
   <!--  Google Maps Plugin    -->
   <script src="https://maps.googleapis.com/maps/api/js?key=YOUR_KEY_HERE"></script>
   <!-- Chart JS -->
   <script
      src="/project_okawari/bootstrap/assets/js/plugins/chartjs.min.js"></script>
   <!--  Notifications Plugin    -->
   <script
      src="/project_okawari/bootstrap/assets/js/plugins/bootstrap-notify.js"></script>
   <!-- Control Center for Now Ui Dashboard: parallax effects, scripts for the example pages etc -->
   <script
      src="/project_okawari/bootstrap/assets/js/paper-dashboard.min.js?v=2.0.0"
      type="text/javascript"></script>
   <!-- Paper Dashboard DEMO methods, don't include it in your project! -->
   <script src="/project_okawari/bootstrap/assets/demo/demo.js"></script>
</body>
</html>