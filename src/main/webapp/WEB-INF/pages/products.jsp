<%-- 
    Document   : products
    Created on : Jan 3, 2022, 4:02:58 PM
    Author     : adrian
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib prefix="t" tagdir="/WEB-INF/tags" %>

<!DOCTYPE html>
<t:pageTemplate pageTitle="Products">    
    <div class="container">
    <nav class="navbar navbar-expand-md navbar-light bg-light">
        <div class="container-fluid">
            <a class="navbar-brand">Products</a>
            <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarCollapse" aria-controls="navbarCollapse" aria-expanded="false" aria-label="Toggle navigation">
                <span class="navbar-toggler-icon"></span>
            </button>
            <div class="collapse navbar-collapse" id="navbarCollapse">
                <ul class="navbar-nav me-auto mb-2 mb-md-0">
                    <li class="nav-item ${activePage eq 'Products' ? 'active' : ''}">
                            <a class="nav-link" href="${pageContext.request.contextPath}/Legume">Legume</a>
                    </li>
                    <li class="nav-item ${activePage eq 'Products' ? 'active' : ''}">
                            <a class="nav-link">Fructe</a>
                    </li>
                    <li class="nav-item ${activePage eq 'Products' ? 'active' : ''}">
                            <a class="nav-link">Mezeluri</a>
                    </li>
                     <li class="nav-item ${activePage eq 'Products' ? 'active' : ''}">
                            <a class="nav-link">Lactate</a>
                    </li>
                </ul>
                            
            </div>
        </div>
    </nav>
</div>
</t:pageTemplate>
