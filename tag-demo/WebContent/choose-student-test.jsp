<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page import="java.util.*,com.elizaveta.jsp.tagdemo.*" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
    <%
    //just create som sample data ... normally provided by MVC
    	List<Student> data = new ArrayList<>();
    	
    	data.add(new Student("John", "Doe", false));
    	data.add(new Student("Maxwell", "Johnson", false));
    	data.add(new Student("Mary", "Public", true ));
    	
    	pageContext.setAttribute("myStudents", data);
 
    %>
<!DOCTYPE html>
<html>

<body>
	<table border="1">
	<tr>
		<th> First Name </th>
		<th> Last Name </th>
		<th> Gold Customer </th>
	</tr>
	
	<c:forEach var="tempStudent" items="${myStudents}">  
	<!-- will  actually call getters of the fields -->
		<tr>
		<td> ${tempStudent.firstName} </td>
		<td> ${tempStudent.lastName} </td>
		<td> 
			
			<c:choose>
				<c:when test="${tempStudent.goldCustomer}">
					Special Discount
				</c:when>
				
				<c:otherwise >
				no soup for you
			</c:otherwise>
			</c:choose>
	
		 </td>
		
		</tr>

	</c:forEach>
	</table>
	
	
</body>
</html>