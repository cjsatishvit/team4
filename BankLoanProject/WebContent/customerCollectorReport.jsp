<%@include file="index.jsp" %>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>

	<div class="container">
		<br><br>
		<p class="font-weight-bolder text-left"><u>Customer Collector Report</u></p>
		<div class="container">
			<form action="GenerateReport">
				<div class="form-check form-check-inline col-md-4 float-right">
				  <input class="form-check-input" type="radio" name="inlineRadioOptions" id="inlineRadio1" value="option1">
				  <label class="form-check-label" for="inlineRadio1">View Individual Collector Report</label>
				</div>
				<div class="form-check form-check-inline col-md-4 float-right">
				  <input class="form-check-input" type="radio" name="inlineRadioOptions" id="inlineRadio2" value="option2">
				  <label class="form-check-label" for="inlineRadio2">Collectors report for Jewel loan</label>
				</div>
				<div class="form-check form-check-inline col-md-3 float-right">
				  <input class="form-check-input" type="radio" name="inlineRadioOptions" id="inlineRadio2" value="option3">
				  <label class="form-check-label" for="inlineRadio2">Collectors report for Credit loan</label>
				</div>
				<br><br>
				<div class="form-row">
					<div class="form-group col-md-1 float-right"></div>
					<div class="form-group col-md-4 float-right">
						From: <input type="date" class="datepicker" data-date-format="mm/dd/yyyy">
					</div>
					<div class="form-group col-md-4 float-right">
						To: <input type="date" class="datepicker" data-date-format="mm/dd/yyyy">
					</div>
					<div class="form-group col-md-3 float-right">
						<button type="submit" class="btn btn-dark">Generate Report</button>
					</div>
				</div>
			</form>
		</div>
	</div>
</body>
</html>