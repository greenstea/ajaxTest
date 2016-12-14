<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
<script type="text/javascript">
	window.onload = function(){
		var aNodes = document.getElementsByTagName("a");
		for(var i=0;i<aNodes.length;i++){
			aNodes[i].onclick = function(){
				//alert("123");
				var request = new XMLHttpRequest();
				var method = "GET";
				var url= this.href;
				
				request.open(method,url);
				request.send(null);
				
				request.onreadystatechange = function(){
					if(request.readyState == 4){
						if(request.status == 200 || request.status == 304){
							//1.数据格式为HTML
							//document.getElementById("details").innerHTML = request.responseText;
							//2.数据格式为XML,使用responseXML来获取
							//var result = request.responseXML;
							//3.数据格式为JSON，使用eval转换
							var result = request.responseText;
							var object = eval("("+result+")");
							
							//目标格式为
							/*
							<h2><a href="mailto:andy@clearleft.com">Andy Budd</a></h2>
							<a href="http://andybudd.com/">http://andybudd.com/</a>
							*/
							
			
							/* var name = result.getElementsByTagName("name")[0].firstChild.nodeValue;
							var website = result.getElementsByTagName("website")[0].firstChild.nodeValue;
							var email = result.getElementsByTagName("email")[0].firstChild.nodeValue; */
							
							var name = object.name;
							var website = object.website;
							var email = object.email;
							
							//alert(name);
							//alert(website);
							//alert(email);
							
							 var aNode = document.createElement("a");
							aNode.appendChild(document.createTextNode(name));
							aNode.href="mailto:"+email;
							
							var h2Node = document.createElement("h2");
							h2Node.appendChild(aNode);
							
							var aNode2 = document.createElement("a");
							aNode2.appendChild(document.createTextNode(website));
							aNode2.href=website;
							
							var detailsNode = document.getElementById("details");
							detailsNode.innerHTML="";
							detailsNode.appendChild(h2Node);
							detailsNode.appendChild(aNode2);
							 
						}
					}
				}
				return false;
			}
		}
	}

</script>
</head>
<body>
	<h1>People</h1>
	<!-- 数据格式为HTML -->
<!-- 	<ul>
		<li>
			<a href="andy.html">Andy</a>
		</li>
		<li>
			<a href="richard.html">Andy</a>
		</li>
		<li>
			<a href="jeremy.html">Andy</a>
		</li>
	</ul> -->
	<!-- 数据格式为XML -->
<!-- 		<ul>
		<li>
			<a href="andy.xml">Andy</a>
		</li>
		<li>
			<a href="richard.xml">Richard</a>
		</li>
		<li>
			<a href="jeremy.xml">Jeremy</a>
		</li>
	</ul> -->
	
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