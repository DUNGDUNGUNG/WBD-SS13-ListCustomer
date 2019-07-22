<%@ page import="java.util.ArrayList" %>
<%@ page import="com.codegym.Customer" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>$Title$</title>
</head>
<body>
<%
    ArrayList<Customer> listCustomer = new ArrayList<>();
    listCustomer.add(new Customer("le cong dung", "27-06-1999","Dak Nong","image/laptrinh.jpg"));
    listCustomer.add(new Customer("le cong dung", "27-06-1999","Dak Nong","image/laptrinh.jpg"));
    listCustomer.add(new Customer("le cong dung", "27-06-1999","Dak Nong","image/laptrinh.jpg"));
    listCustomer.add(new Customer("le cong dung", "27-06-1999","Dak Nong","image/laptrinh.jpg"));
    request.setAttribute("data",listCustomer);
%>
<form>
    <h1 align="center">List Customer</h1>
    <table border="1px solid #ccc" align="center" cellpadding="10">
        <tr>
            <th>Name</th>
            <th>Birthday</th>
            <th>Address</th>
            <th>Avatar</th>
        </tr>
        <c:forEach var="rows" items="${requestScope.data}">
            <tr>
                <td>${rows.getName()}</td>
                <td>${rows.getBirthday()}</td>
                <td>${rows.getAddress()}</td>
                <td><img src="${rows.getImage_src()}" alt="Img" style="width: 100px; height: auto;"></td>
            </tr>
        </c:forEach>
    </table>
</form>
</body>
</html>