<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
<script type="text/javascript" src="../js/jquery-3.1.1.min.js"></script>
<script type="text/javascript">
	$(function(){
		$("a").click(function(){
			//使用load方法处理Ajax
			var url=this.href;
			$("#details").load(url);
			
			return false;			
		})
	})
	

</script>
	

</head>
<body>
	<!-- 数据格式为HTML -->
	 <ul>
		<li>
			<a href="andy.html">Andy</a>
		</li>
		<li>
			<a href="richard.html">Richard</a>
		</li>
		<li>
			<a href="jeremy.html">Jeremy</a>
		</li>
	</ul> 
	<div id="details"></div>
</body>
</html>