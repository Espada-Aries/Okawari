<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>

<head>
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title>Document</title>
    <style>
		body{
		  margin-top: 100px;
		  font-family: 'Trebuchet MS', serif;
		  line-height: 1.6
		}
		.container{
		  width: 500px;
		  margin: 0 auto;
		}
		 
		 
		 
		ul.tabs{
		  margin: 0px;
		  padding: 0px;
		  list-style: none;
		}
		ul.tabs li{
		  background: none;
		  color: #222;
		  display: inline-block;
		  padding: 10px 15px;
		  cursor: pointer;
		}
		 
		ul.tabs li.current{
		  background: #ededed;
		  color: #222;
		}
		 
		.tab-content{
		  display: none;
		  background: #ededed;
		  padding: 15px;
		}
		 
		.tab-content.current{
		  display: inherit;
		}
    </style>
    <script type="text/javascript">
		$(document).ready(function(){
			   
			  $('ul.tabs li').click(function(){
			    var tab_id = $(this).attr('data-tab');
			 
			    $('ul.tabs li').removeClass('current');
			    $('.tab-content').removeClass('current');
			 
			    $(this).addClass('current');
			    $("#"+tab_id).addClass('current');
			  })
			 
			})
	</script>
</head>

<body>

	 <div class="container">
 
	  <ul class="tabs">
	    <li class="tab-link current" data-tab="tab-1">ID探し</li>
	    <li class="tab-link" data-tab="tab-2">Password探し</li>
	  </ul>
	 
	  <div id="tab-1" class="tab-content current">
		 <form action="findIdPasswd.okawari" method="post">
	            <table>
	            	<tr>
	            	<td><font>支店名</font></td>
	            	<td><input type="text" name="user_name"></td>
	            	</tr>
	            	
	            	<tr>
	            	<td><font>支店長</font></td>
	            	<td><input type="text" name="user_manager"></td>
	            	</tr>
	            	
	            	<tr>
	            	<td><font>営業免許登録番号</font></td>
	            	<td><input type="text" name="user_businum"></td>
	            	</tr>
	            	
	            	<tr>
	            		<td colspan="2" align="center"><input type="submit" value="検索"></td>
	            	</tr>
	            </table>
	           </form>
	  </div>
	  <div id="tab-2" class="tab-content">
		 <form action="findIdPasswd.okawari" method="post">
		            <table>
		            	<tr>
			            	<td><font>ID</font></td>
			            	<td><input type="text" name="user_id"></td>
		            	</tr>
		            	
		            	<tr>
			            	<td><font>支店長</font></td>
			            	<td><input type="text" name="user_manager"></td>
		            	</tr>
		            	
		            	<tr>
			            	<td><font>営業免許登録番号</font></td>
			            	<td><input type="text" name="user_businum"></td>
		            	</tr>
		            	
		            	<tr>
		            		<td colspan="2" align="center"><input type="submit" value="検索"></td>
		            	</tr>
		            	
		            </table>
	            </form>
	  </div>
	  
	 
	</div>
      <script src="//cdnjs.cloudflare.com/ajax/libs/jquery/2.1.3/jquery.min.js"></script>
	  <script src="//static.codepen.io/assets/common/stopExecutionOnTimeout-41c52890748cd7143004e05d3c5f786c66b19939c4500ce446314d1748483e13.js"></script>
      <script type="text/javascript">
		$(document).ready(function(){
			   
			  $('ul.tabs li').click(function(){
			    var tab_id = $(this).attr('data-tab');
			 
			    $('ul.tabs li').removeClass('current');
			    $('.tab-content').removeClass('current');
			 
			    $(this).addClass('current');
			    $("#"+tab_id).addClass('current');
			  })
			 
			})
	</script>
</body>
</html>