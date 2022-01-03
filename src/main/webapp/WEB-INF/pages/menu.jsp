<%-- 
    Document   : menu
    Created on : Jan 3, 2022, 3:33:27 PM
    Author     : adrian
--%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>

<!DOCTYPE html>
<div class="container">
    <nav class="navbar navbar-expand-md navbar-dark bg-dark">
        <div class="container-fluid">
            <a class="navbar-brand">Next Gen POS</a>
            <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarCollapse" aria-controls="navbarCollapse" aria-expanded="false" aria-label="Toggle navigation">
                <span class="navbar-toggler-icon"></span>
            </button>
            <div class="collapse navbar-collapse" id="navbarCollapse">
                <ul class="navbar-nav me-auto mb-2 mb-md-0">
                    <li class="nav-item ${activePage eq 'Products' ? 'active' : ''}">
                            <a class="nav-link" href="${pageContext.request.contextPath}/Products">Products</a>
                    </li>
                </ul>
            </div>
        </div>
    </nav>
</div>
