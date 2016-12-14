<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<script type="text/javascript" src="../js/jquery-3.1.1.min.js"></script>
<script type="text/javascript">
	
	$(function(){
		$(":input[name='username']").change(function(){
			//获取输入值
			var val = $(this).val();
			//输入值去掉空格
			val = $.trim(val);
			
			if(val !=""){	
				var url="${pageContext.request.contextPath }/validateUserName";
				
				var args = {"userName":val,"time":new Date()};
				$.post(url,args,function(data){
					$("#message").html(data);
				});
			}
		});	
	})

</script>
</head>
<body>
<form action="">
	用户名：	<input type="text" name="username"/><br/>
	<div id="message"></div>
	<input type="submit" value="注册"/>
	
</form>
</body>
</html>