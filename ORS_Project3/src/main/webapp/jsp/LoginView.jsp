<%@page import="com.sunilOS.ORSProject3.util.ServletUtility"%>
<%@page import="com.sunilOS.ORSProject3.util.DataUtility"%>
<%@page import="com.sunilOS.ORSProject3.ctl.ORSView"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Rays Technologies</title>
    <link href= "<%=ORSView.APP_CONTEXT%>/img/title.png" rel= "icon" type="icon">
<Style>
.log1 {
margin-top:10px;
padding-top: 20px;
height: 70px;
}

.btn{
	transition: all .5s ease;
	width: 50%;
	border-radius: 30px;
	font-weight: 600;
	background-color: #fff;
	border: 1px solid #008080;
	margin-top: 1.5em;
	}
.p1 
{
	background-image: url('<%=ORSView.APP_CONTEXT%>/img/bg.jpg');
		background-size: 100%;
	
}


</Style>
</head>

<body class="p1">
<form method="post" action="<%=ORSView.LOGIN_CTL%>">
<jsp:useBean id="dto" class="com.sunilOS.ORSProject3.dto.UserDTO" scope="request"></jsp:useBean>

<%@include file="Header.jsp"%>
	<div class="container-fluid">
		<div class="row log1">
					<!-- Grid column -->
					<div class="col-md-4 mb-4"></div>
					<div class="col-md-4 mb-4">
						<div class="card " style="border-radius: 2rem;">
						<div class="card-body ">
							
								 <h2 class="card-title" align="center">LOGIN</h2>
								<!--Body--><br>
								<div>
									<H6 align="center">
										<%
											if (!ServletUtility.getSuccessMessage(request).equals("")) {
										%>
										<div class="alert alert-success alert-dismissible">
											<button type="button" class="close" data-dismiss="alert">&times;</button>
											<%=ServletUtility.getSuccessMessage(request)%>
										</div>
										<%
											}
										%>
									</H6>

									<H6 align="center">
										<%
											if (!ServletUtility.getErrorMessage(request).equals("")) {
										%>
										<div class="alert alert-danger alert-dismissible">
											<button type="button" class="close" data-dismiss="alert">&times;</button>
											<%=ServletUtility.getErrorMessage(request)%>
										</div>
										<%
											}
										%>

									</H6>
									<%
										String uri = (String) request.getAttribute("uri");
									%>
									<input type="hidden" name="id" value="<%=dto.getId()%>">
									<input type="hidden" name="createdBy"
										value="<%=dto.getCreatedBy()%>"> <input type="hidden"
										name="modifiedBy" value="<%=dto.getModifiedBy()%>"> <input
										type="hidden" name="createdDatetime"
										value="<%=DataUtility.getTimestamp(dto.getCreatedDatetime())%>">
									<input type="hidden" name="modifiedDatetime"
										value="<%=DataUtility.getTimestamp(dto.getModifiedDatetime())%>">
								</div>
							
								<div class="md-form">
								<span class="pl-sm-3"><b>Email Id</b><span
									style="color: red;">*</span></span> <br> <i
									class="fa fa-envelope prefix fa-5x  grey-text css"
									style="font-size: 1rem;"></i> <input type="text" name="email"
									id="defaultForm-pass" placeholder="Enter email"
									style="border: 2px solid #8080803b; width : 370px"
									value="<%=DataUtility.getStringData(dto.getEmail())%>">
								<font color="red" class="pl-sm-3"> <%=ServletUtility.getErrorMessage("email", request)%></font> <br>
								
								 <span class="pl-sm-3"><b>Password</b><span
									style="color: red;">*</span></span> <br> <i
									class="fa fa-lock prefix fa-5x grey-text css"
									style="font-size: 1rem;"></i>  <input type="password"
									name="password" placeholder="Enter password"
									id="defaultForm-pass" style="border: 2px solid #8080803b; width : 370px"
									value="<%=DataUtility.getStringData(dto.getPassword())%>">
								<font color="red" class="pl-sm-3"> <%=ServletUtility.getErrorMessage("password", request)%></font>


							</div>
						
								<div class="text-center">

									<input type="submit" name="operation"
										class="btn btn-success btn-sm" style="font-size: 15px"
										value="<%=LoginCtl.OP_SIGN_IN%>"> 
								</div>
								<div class="text-center">
									<a href="<%=ORSView.FORGOT_PASSWORD_CTL%>"
										style="color: black; font-size: 15px;"><b>Forget my
											password</b></a>
								</div>
								<input type="hidden" name="uri" value="<%=uri%>">
							</div>
						</div>
					</div>
					<div class="col-md-4 mb-4"></div>
				</div>

		</div>
	
	
		</form>

	<%@include file="Footer.jsp"%>
</body>
</body>
</html>