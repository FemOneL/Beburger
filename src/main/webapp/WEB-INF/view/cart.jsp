<%@ page import="com.example.beburger.items.Cart" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>BIG BURGER</title>
    <link rel="stylesheet" href="https://unicons.iconscout.com/release/v4.0.0/css/line.css">
    <link rel="preconnect" href="https://fonts.googleapis.com">
    <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
    <link href="https://fonts.googleapis.com/css2?family=Roboto:wght@400;900&display=swap" rel="stylesheet">
    <style><%@include file="../../css/cart.css"%></style>
    <style><%@include file="../../css/style.css"%></style>
    <style><%@include file="../../css/main.css"%></style>
</head>
<body>
<header>
    <div class="menu">
        <nav class="navbar">
            <h5 class="nav_branding"> <a href="/bigburger/" class="nav_link_">BIG BURGER</a></h5>
            <ul class="nav_menu">
                <%
                    Cart burgers = Cart.getInstance();
                %>
                <li class="nav_item"><a href="/bigburger/menu" class="nav_link">Меню</a></li>
                <li class="nav_item"><a href="/bigburger/delivery" class="nav_link">Доставка</a></li>
                <li class="nav_item item-cart"><a href="/bigburger/cart" class="nav_link cart"><i
                        class="uil uil-shopping-cart"></i>Корзина <div class="numb"><%= String.valueOf(burgers.getGeneralSize()) %></div> </a></li>
            </ul>
        </nav>
    </div>
</header>
<main>
    <section class="cart_section">
        <div class="img_div">
            <img class="image" src="https://i.ibb.co/8m1qMNL/burger-in-cart.png">
        </div>
        <div class="cart_div">
            <h1 class="cart_header">Корзина</h1>
            <div class="price_line"></div>
            <div class="burgers_div">
                <form method="post" action="/bigburger/cart?name=delete">
                    <div class="remover">
                        <input type="submit" value="Clear" class="remover_s">
                    </div>
                </form>
                <c:forEach var="burger" items="${requestScope.burgers}">
                        <div class="item_div">
                            <div class="img">
                                <img class="form_image" src="<c:out value="${burger.imageUrl}"/>">
                                <div class="counter">
                                    <p class="item_p"><c:out value="${burger.count}"/></p>
                                </div>
                            </div>
                            <div class="info">
                                <div>
                                    <p class="item_n"><c:out value="${burger.name}"/> </p>
                                </div>
                                <div class="item_p_div">
                                    <p class="item_p"> <c:out value="${burger.cost}"/> грн</p>
                                </div>
                            </div>
                            <div class="delete">
                                <form method="post" action="/bigburger/cart?name=${burger.realName}">
                                    <input class="submit" type="submit" value=" x " name="remover">
                                </form>
                            </div>
                        </div>
                </c:forEach>
            </div>
            <div class="in_general_div">
                <h1 class="general_h1">Усього:</h1>
                <h1 class="curr_price"><%= burgers.getTotalCost() %> грн</h1>
            </div>
            <div class="bottom_line"></div>
            <form action="">
                <a href="/bigburger/delivery"><input type="button" class="buy_button" value="ЗАМОВИТИ"></a>
            </form>
        </div>
        <div class="img_div">
            <img class="image" src="https://i.ibb.co/XLHvvKM/souce.png">
        </div>
    </section>
</main>
<footer>
    <div class="footer">
        <div class="footer_contact">
            <h5 class="footer_contact_main_text">BIG BURGER</h5>
        </div>
        <div class="footer-info">
            <a class="list-item" href="/bigburger/">Головна</a>
            <a class="list-item" href="/bigburger/menu">Меню</a>
            <a class="list-item" href="/bigburger/delivery">Доставка</a>
            <a class="list-item" href="/bigburger/about">Про нас</a>
        </div>
        <div class="phone-info">
            <p class="phone">068-777-777-777</p>
            <p class="phone">093-000-001-010</p>
            <i class="uil uil-instagram"></i>
            <i class="uil uil-facebook-f"></i>

        </div>

    </div>
    <p class="copyright">© Всі права захищені 2022</p>
</footer>
</body>
</html>
