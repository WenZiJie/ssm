<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core"  prefix="c"%>	
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
  <script type="text/javascript" src="/static/js/jquery-1.12.4.js"></script> 
</head>
<body>
<h1 id="${id}">${message}</h1>
<input type="hidden" value="${url}">
</body>
<script type="text/javascript">
	var val = $("h1").attr("id");
	var input = $("input").val();
	if(val==1){
		 setTimeout(function(){location.href=input},5000);
	}else {
		 setTimeout(function(){location.href=input},5000);
	}
</script>
</html>