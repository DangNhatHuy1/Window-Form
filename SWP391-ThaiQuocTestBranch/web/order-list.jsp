<%-- 
    Document   : order-detail
    Created on : Feb 20, 2023, 4:00:37 PM
    Author     : dangn
--%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Order Page</title>
    </head>
    <body>
        <table width="100px" border="1">
            <tr>
                <th>Order ID</th>
                <th>User Name</th>
                <th>Address</th>
                <th>Order Status</th>
                <%-- kh de description vao day --%>
                <th>Date</th>
                <th>User ID</th>
            </tr>
            <c:forEach items="${requestScope.orders}" var="order">
                <tr>
                    <td>${order.orderID}</td>
                    <td>${order.fullName}</td>
                    <td>${order.address}</td>
                    <td>${order.status}</td>
                    <%-- kh de description vao day --%>
                    <td>${order.date}</td>
                    <td>${order.userID}</td>                               
                </tr>
            </c:forEach>
        </table>
    </body>
</html>
