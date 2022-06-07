<%@ page import="com.example.beburger.items.Cart" %>
<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>BIG BURGER</title>
    <link rel="preconnect" href="https://fonts.googleapis.com">
    <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
    <link href="https://fonts.googleapis.com/css2?family=Roboto:wght@400;900&display=swap" rel="stylesheet">
    <link rel="stylesheet" href="https://unicons.iconscout.com/release/v4.0.0/css/line.css">
    <style>
        <%@include file="../../css/style.css" %>
    </style>
    <style>
        <%@include file="../../css/main.css" %>
    </style>

</head>

<body>
<header>
    <div class="menu">
        <nav class="navbar">
            <h5 class="nav_branding"> <a href="" class="nav_link_">BIG BURGER</a></h5>
            <ul class="nav_menu">
                <%
                    Cart burgers = Cart.getInstance();
                %>
                <li class="nav_item"><a href="/bigburger/menu" class="nav_link">Меню</a></li>
                <li class="nav_item"><a href="/bigburger/delivery" class="nav_link">Доставка</a></li>
                <li class="nav_item item-cart"><a href="/bigburger/cart" class="nav_link cart"><i
                        class="uil uil-shopping-cart"></i>Корзина <div class="numb"> <%= String.valueOf(burgers.getGeneralSize()) %></div> </a></li>
            </ul>
        </nav>
    </div>
</header>

<main>
    <section class="main_burger">
        <img src="https://i.ibb.co/NnQP5Fk/1598980863473.png" class="imgburger" alt="">
        <div class="sec">
            <div class="main-div">
                <div class="line"></div>
                <div class="caption">Найкращі бургери у твоєму місті!</div>
                <div class=" endline"><div class="line"></div></div>
            </div>
            <a href="/bigburger/menu" class="button-link"><div class="trybutton"> Замовляй зараз!</div></a></div>
    </section>
    <section class="foods">
        <div class="hungry">
            <h3 class="hungry-heading">Відчуваєте голод? Зробіть розумний вибір!</h3>
            <p class="desc">Ми пропонуємо фаст-фуд, який подається у свіжому вигляді з найвищою якістю інгредієнтів: свіжа, нарізана вручну курка, булочки, випечені свіжими у власних пекарнях, та найсмачніші хот-доги з різноманітними начинками.</p>
        </div>
        <img class="hungry-img" src="https://avatanplus.com/files/resources/original/574efb329fae71550c853dde.png" alt="">
    </section>
    <section class="events-section">
        <h1 class="header">події</h1>
        <div class="events">
            <div class="event">
                <div class="birthday-img"></div>
                <div class="event_text">
                    <h2 class="event-heading">Проведи день народження смачно!</h2>
                    <p class="event-desc">У свій День народження Ви можете отримати від нас подарунок - безкоштовне замовлення вартістю до 600 грн!</p>
                </div>
            </div>
            <div class="event">
                <div class="birthday-img1"></div>
                <div class="event_text1">
                    <h2 class="event-heading">Літні знижки!</h2>
                    <p class="event-desc">У період з 27.06-03.07 діятиме знижка на всі бургери 15%! Не пропусти можливість насолодитися чудовим смаком наших бургерів у </p>
                </div>
            </div>
        </div>
    </section>
    <section class="thinking">
        <h3 class="hungry-heading1">Що люди говорять про нас?</h3>
        <div class="reviews">
            <div class="review1">
                <blockquote>"Вперше замовив у вас бургери. <br>
                    Все смачно, та чудово, великим + це гарне упакування , за це вам велике дякую 😊 <br>
                    Бургери смачні 👍 <br>
                    + Новий клієнт! Дякуємо за гарний вечір 😊"</blockquote>
                <p class="name">Іван</p>
            </div>
            <div class="review1">
                <blockquote>"Сьогодні  вкотре замовила  бургер і залишилась  мега задоволена! <br>
                    РЕКОМЕНДУЮ спробувати, це того  варте! <br>Доставили замовлення вчасно! "</blockquote>
                <p class="name">Марія</p>
            </div>
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
