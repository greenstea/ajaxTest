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
		
			var url=this.href;
			var args={"time":new Date()};
			
			$.getJSON(url,args,function(data){
				
				var name = data.name;
				var website = data.website;
				var email = data.email;
				
				$("#details").empty().append(name+"<br>").append(website+"<br>").append(email);
			});
			
			return false;
		});
	});
	
</script>
</head>
<body>
<!-- 数据格式为JSON -->
		<ul>
		<li>
			<a href="andy.json">Andy</a>
		</li>
		<li>
			<a href="richard.json">Richard</a>
		</li>
		<li>
			<a href="jeremy.json">Jeremy</a>
		</li>
	</ul>
	<div id="details"></div>
</body>
</html>