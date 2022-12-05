<%--
  Created by IntelliJ IDEA.
  User: bianca
  Date: 11/28/2022
  Time: 11:43 AM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@taglib prefix="t" tagdir="/WEB-INF/tags" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<t:pageTemplate pageTitle="user">
    <h1>Users</h1>
    <div class ="container text-center">
        <c:forEach var="users" items="${users}">

            <div class="row">
                <div class="col">
                        ${users.username}
                </div>
                <div class="col">
                        ${users.email}
                </div>

            </div>
        </c:forEach>

    </div>

</t:pageTemplate>

