<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
    <%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
	<%@page import="trial_2.Auction" %>
	<%@page import="trial_2.Jewels" %>
    
    
<!DOCTYPE html>
<html>
<head>
  <title>Bank</title>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
  <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.16.0/umd/popper.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.4.1/js/bootstrap.min.js"></script>
  <script>
	$(document).ready(function(){
		$("#Modal").modal('show');
	});
</script>
</head>

<!-- 
########
#-BODY-# 
########
-->

<body>

	<!-- 
	##########
	#-NAVBAR-# 
	##########
	-->

	<nav class="navbar navbar-expand-sm bg-dark navbar-dark">
	  <!-- Brand/logo -->
	  <a class="navbar-brand">Auction Notification</a>
	  
	  <!-- Links -->
	 	<ul class="nav navbar-nav ml-auto">
	  		<li class="nav-item">
	      		<a class="nav-link" href="bidder_reg.jsp" style="color: white;">Bidder Registration</a>
	    	</li>
	    	<li class="nav-item">
	      		<a class="nav-link" href="#">Home</a>
	    	</li>
	    	<li class="nav-item">
	      		<a class="nav-link" href="#">Logout</a>
	    	</li>
	  	</ul>
	</nav>
	
	<!-- 
	################
	#-MODAL/POP-UP-# 
	################
	-->
	
	<div class="modal modal fade" id="Modal">
		<div class="modal-dialog modal-xl">
			<div class="modal-content" style="border:grey 3px solid;">
	            
	        	<!-- Modal Header -->
	        	<div class="modal-header">
	          		<h4 class="modal-title">Latest Auction Notification</h4>
	          		<button type="button" class="close" data-dismiss="modal">&times;</button>
	        	</div>
	        	<!-- Modal body -->
		        <div class="modal-body">
			        <c:if test="${not empty listTotal['listModal']}">
			      		<c:forEach var="entry1" items="${listTotal['listModal']}">
			         	<table class="table" style="border:black 3px solid;">
			         		<thead class="thead-dark">
			      				<tr>
			      					<fmt:parseDate value="${entry1.key}" var="parsedCurrentDate" pattern="yyyy-MM-dd" />  
			        				<th colspan="4"><fmt:formatDate type="date" dateStyle="long" value="${parsedCurrentDate}" /></th>
			      				</tr>
			      			</thead>
				      		<tbody>
				      			<tr class="table-secondary">
				        			<td>Title</td>
				        			<td>Reference no.</td>
				        			<td>End of Bidder Registration</td>
				        			<td>Bid opening date</td>
				      			</tr>	
				      			<tr>		
									<c:forEach var="inter1" items = "${entry1.value}">
										<tr>
											<td><c:out value="${inter1.key.title}"/></td>
											<td><c:out value="${inter1.value.j_ID}"/></td>
											<td><c:out value="${inter1.value.reg_cls}"/></td>
											<td><c:out value="${inter1.value.bid_op}"/></td>
										</tr>
									</c:forEach>
								</tr>
				      		</tbody>
			         	</table>
					</c:forEach>
					</c:if>
			        <c:if test="${empty listTotal['listModal']}">
			        	<h5>No New Auction Notifications</h5>
					</c:if>
		        </div>
		        <!-- Modal footer -->
		        <div class="modal-footer">
		          <button type="button" class="btn btn-danger" data-dismiss="modal">Close</button>
		        </div>
			</div>
		</div>
	</div>
	
	<!-- 
	#########
	#-TABLE-# 
	#########
	-->

	<div class="container" style=" padding: 70px;">
	 	<h2>Auction Notification</h2>
	  	<table class="table" style="border:black 3px solid;">
	  		<c:forEach var="entry" items="${listTotal['listUser']}"> 
			<thead class="thead-dark">
		      	<tr>
		      		<fmt:parseDate value="${entry.key}" var="parsedCurrentDate" pattern="yyyy-MM-dd" /> 
		        	<th colspan="4"><fmt:formatDate type="date" dateStyle="long" value="${parsedCurrentDate}" /></th>
		      	</tr>
	    	</thead>
		    <tbody>
		  		<tr class="table-secondary">
			        <td>Title</td>
			        <td>Reference no.</td>
			        <td>End of Bidder Registration</td>
			        <td>Bid opening date</td>
		      	</tr>	
				<c:forEach var="inter" items = "${entry.value}">
					<tr>
						<td><c:out value="${inter.key.title}"/></td>
						<td><c:out value="${inter.value.j_ID}"/></td>
						<td><c:out value="${inter.value.reg_cls}"/></td>
						<td><c:out value="${inter.value.bid_op}"/></td>
					</tr>
				</c:forEach>
		    </tbody>
	    	</c:forEach>
	 	</table>
	 	<!-- bidder registration button -->
	  	<div class="form-group">
	    	<div style="text-align: center">
	      		<a type="button" class="btn btn-outline-primary btn-lg" href="bidder_reg.jsp">Bidder Registration</a>
	    	</div>
	  	</div>
	</div>
</body>
</html>
