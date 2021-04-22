<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib prefix="t" tagdir="/WEB-INF/tags" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib uri="http://www.springframework.org/security/tags" prefix="security"%>
<t:app>
	<jsp:attribute name="body">
		<div class="container mt-5 mb-5">
				<div class="row">
				
					<div class="col-sm-6 offset-sm-3">
						<jsp:include page="/WEB-INF/components/alert.jsp" />
						<div class="card">
						  <div class="card-header">
						    Product Store
						  </div>
						  <div class="card-body">
							<c:if test="${pageContext.request.userPrincipal.name == null}">
								<a href="login" class="btn btn-primary">Login</a>
								<br>
							</c:if>
							<c:if test="${pageContext.request.userPrincipal.name != null}">
								<h2>Welcome: ${pageContext.request.userPrincipal.name}</h2>
								<a href="<c:url value="/logout" />" class="btn btn-danger">Logout</a>
					
								<security:authorize access="hasRole('ROLE_ADMIN')">
									<a href="admin/product/add" class="btn btn-secondary">Add New Product</a>
								</security:authorize>
								<security:authorize access="hasRole('ROLE_USER')">
									<a href="products" class="btn btn-primary">View All Products</a>
								</security:authorize>
							</c:if>
						  </div>
						</div>
						
					</div>
				</div>
			</div>
	</jsp:attribute>
</t:app>