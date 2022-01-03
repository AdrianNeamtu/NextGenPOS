<%-- 
    Document   : legume
    Created on : Jan 3, 2022, 7:15:24 PM
    Author     : adrian
--%>

<%@page contentType="text/html" pageEncoding="UTF-8" %>
<%@taglib prefix="t" tagdir="/WEB-INF/tags" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<t:pageTemplate pageTitle="Legume">
   <h1>Legume</h1> 
   <form method="POST" action="${pageContext.request.contextPath}/Legume">
   <c:forEach var="leguma" items="${legume}" varStatus="status">
        <div class="row">
            <div class="col-md">
                <input type="checkbox" name="leguma_ids" value="${leguma.id}"/>
            </div>
            <div class="col-md-3">
                ${leguma.name}
            </div>
            <div class="col-md-3">
                ${leguma.price}
            </div>
        </div>
    </c:forEach>
   </form>
    
</t:pageTemplate>
