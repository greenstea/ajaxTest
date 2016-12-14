<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
<script type="text/javascript" src="../js/jquery-3.1.1.min.js"></script>
<script type="text/javascript">
	$(function(){
		$("a").click(function(){
			var url = this.href;
			var args = {"time":new Date()};
			//url
			//args：JSON格式
			//function:回调函数：当响应结束时，回调函数被触发，响应结果在data中
			$.get(url,args,function(data){
				var name = $(data).find("name").text();
				var website = $(data).find("website").text();
				var email = $(data).find("email").text();
				
				$("#details").empty().append(name+"<br>").append(website+"<br>").append(email);
			});
			
		return false;
		});
	});
		

</script>
</head>
<body>
	<!-- 数据格式为XML -->
		<ul>
		<li>
			<a href="andy.xml">Andy</a>
		</li>
		<li>
			<a href="richard.xml">Richard</a>
		</li>
		<li>
			<a href="jeremy.xml">Jeremy</a>
		</li>
	</ul>
		<div id="details"></div>
</body>
</html>