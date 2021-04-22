<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@taglib prefix="t" tagdir="/WEB-INF/tags" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<t:app>
	<jsp:attribute name="body">
		<div class="container mt-5 mb-5">
				<div class="row">
				
					<div class="col-sm-6 offset-sm-3">
						<jsp:include page="/WEB-INF/components/alert.jsp" />
						<c:if test="${not empty error}">
							<div class="error">${error}</div>
						</c:if>
						<c:if test="${not empty msg}">
							<div class="msg">${msg}</div>
						</c:if>
						<div class="card">
						  <div class="card-header">
						    Login
						  </div> 
						  <div class="card-body">
						 	<form name='loginForm' action="<c:url value='/login' />" method='POST'>
					
							  <table>
								<tr>
									<td>Username:</td>
									<td><input type='text' name='username' value=''></td>
								</tr>
								<tr>
									<td>Password:</td>
									<td><input type='password' name='password' /></td>
								</tr>
								<tr>
									<td colspan='2'><input name="submit" type="submit"
										value="submit" /></td>
								</tr>
							  </table>
					
							  <input type="hidden" name="${_csrf.parameterName}"
								value="${_csrf.token}" />
					
							</form>
						  </div>
						</div>
						
					</div>
				</div>
			</div>
	</jsp:attribute>
</t:app>