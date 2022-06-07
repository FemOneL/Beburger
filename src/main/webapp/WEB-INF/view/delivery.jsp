<%@ page import="com.example.beburger.items.Cart" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>BIG BURGER</title>
    <link rel="stylesheet" href="https://unicons.iconscout.com/release/v4.0.0/css/line.css">
    <link rel="preconnect" href="https://fonts.googleapis.com">
    <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
    <link href="https://fonts.googleapis.com/css2?family=Roboto:wght@400;900&display=swap" rel="stylesheet">
    <style>
        <%@include file="../../css/style.css" %>
    </style>
    <style>
        <%@include file="../../css/main.css" %>
    </style>
    <style>
        <%@include file="../../css/delivery.css" %>
    </style>
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
    <div class="wrapper">
        <div class="form">
            <h1 class = "header">Доставка</h1>
            <form method="post" action="/bigburger/delivery" name="reservationForm" id="form" class="form_body">
                <div class="form_item">
                    <label for="formName" class="form_label">Ім'я:</label>
                    <input id="formName" type="text" name="name" class="form_input" required placeholder="Введіть ваше ім'я">
                </div>

                <div class="form_item">
                    <label for="formPhone" class="form_label">Номер телефону:</label>
                    <input id="formPhone" type="text" name="phone" class="form_input " required placeholder="Введіть номер телефону">
                </div>

                <div class="form_item">
                    <label for="formAdress" class="form_label">Адреса:</label>
                    <input id="formAdress" type="text" name="adress" class="form_input " required placeholder="Введіть вашу адресу">
                </div>

                <div class="form_item">
                    <div class="form_label">Спосіб оплати</div>
                    <select name="serviceType" class="select">
                        <option value="Карткою онлайн" selected>Картою онлайн</option>
                        <option value="Картою курєру" >Картою курєру</option>
                        <option value="Готівкою" >Готівкою</option>
                    </select>
                </div>
                <div class="form_item">
                    <label for="formAdress" class="form_label">Промокод:</label>
                    <input id="formAdres" type="text" name="promocode" class="form_input " required placeholder="Введіть промокод">
                </div>

                <div class="form_item">
                    <div class="checkbox">
                        <input id="formAgreement" checked type="checkbox"  name="agreement" class="checkbox_input _req">
                        <label for="formAgreement" class="checkbox_label"><span>Погоджуюсь з обробкою усіх данних.</span></label>
                    </div>
                </div>
                <h2 class="price_total">До сплати <%= burgers.getTotalCost() %> грн</h2>
                <button type="submit" class="form_button">Відправити</button>
            </form>
        </div>
    </div>
</main>

<div class = "map_div">
    <h2 class = "header2">Ви можете знайти нас на карті тут</h2>
    <iframe class = "map" src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d160.83198985957173!2d24.03088738890117!3d49.83659792425258!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x473add6f2f20e75b%3A0x591276d0a6e04612!2sBig%20Burger!5e0!3m2!1sen!2sde!4v1654457728097!5m2!1sen!2sde" style="border:0;" allowfullscreen="" loading="lazy" referrerpolicy="no-referrer-when-downgrade"></iframe>
</div>
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



