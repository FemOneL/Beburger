<%@ page import="java.util.Random" %>
<%@ page import="java.util.Calendar" %>
<%@ page import="com.example.beburger.items.Cart" %>
<%@ page import="com.example.beburger.items.Burgers" %>
<%@ page import="java.util.List" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
    <meta charset="utf-8">
        <% Random random = new Random(); %>
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="preconnect" href="https://fonts.googleapis.com">
    <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
    <link href="https://fonts.googleapis.com/css2?family=Roboto:wght@400;900&display=swap" rel="stylesheet">
    <title>Замовлення</title>
    <style><%@include file="../../css/order.css"%></style>
</head>
<body>
    <%
        Cart cart = Cart.getInstance();
        request.setCharacterEncoding("utf-8");
        String name = request.getParameter("name");
        String phone = request.getParameter("phone");
        String adress = request.getParameter("adress");
        String type = request.getParameter("serviceType");
        String promo = request.getParameter("promocode");
        String res;
        int temp = Integer.parseInt(cart.getTotalCost());
        if (promo.equals("KN203")){
            res = "promocode valid (-50%)";
            temp /= 2;
        }else {
            res = "promocode invalid";
        }

    %>
    <div class="bill">
        <h1>Замовлення № <%= String.valueOf(random.nextInt(999)) %></h1>
        <p>Ім'я: <%= name  %></p>
        <p>Номер телефону: <%= phone %></p>
        <p>Адреса: <%= adress %> </p>
        <p>Спосіб оплати: <%= type %> </p>
        <p>Промокод: <%= res %></p>
        <p>До сплати: <%= String.valueOf(temp) %>  </p>
        <p>замовлення:</p>
        <c:forEach var="burger" items="${requestScope.Cart}">
            <p><c:out value="${burger.name}"/> - <c:out value="${burger.count}"/> </p>
        </c:forEach>
    </div>

</body>
</html>
