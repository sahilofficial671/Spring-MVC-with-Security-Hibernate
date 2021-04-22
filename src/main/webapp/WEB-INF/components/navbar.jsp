<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<nav class="navbar navbar-dark navbar-expand-lg">
    <div class="container-fluid">
      <a class="navbar-brand" href="${pageContext.request.contextPath}">Product Store</a>
      <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbar-menu" aria-controls="#navbar-menu" aria-expanded="false" aria-label="Toggle navigation">
        <span class="navbar-toggler-icon"></span>
      </button>
      
      <div class="collapse navbar-collapse" id="navbar-menu">
	      	<ul class="navbar-nav me-auto mb-2 mb-lg-0">
	      		<li class="nav-item"><a class="nav-link" href="${pageContext.request.contextPath}/product/add">Add Product</a></li>
	       		<li class="nav-item"><a class="nav-link" href="${pageContext.request.contextPath}/products">View Products</a></li>
	       		<li class="nav-item"><a class="nav-link" href="${pageContext.request.contextPath}/product/order">Order Product</a></li>
	      	</ul>	
      </div>
 
     </div>
</nav>