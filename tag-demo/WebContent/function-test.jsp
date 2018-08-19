<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>

<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Testing functions tag</title>
</head>
<body>
<c:set var = "data" value = "luv2code" />
	
	Length of the string <b> ${data} </b> : ${fn:length(data)}
	<br/> <br/>
	Uppercade version of the string <b> ${data} :</b> ${fn:toUpperCase(data)}
	<br/> <br/>
	Does the string <b> ${data} </b> starts with <b> luv ? :</b> ${fn:startsWith(data, "luv")}

</body>
</html>