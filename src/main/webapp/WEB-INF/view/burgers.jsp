<%@ page import="com.example.beburger.items.Cart" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html lang="en">
<head>
    <meta charset="utf-8"/>
    <meta http-equiv="X-UA-Compatible" content="IE=edge"/>
    <meta name="viewport" content="width=device-width, initial-scale=1.0"/>
    <title>BIG BURGER</title>
    <link
            rel="stylesheet"
            href="https://unicons.iconscout.com/release/v4.0.0/css/line.css"
    />
    <link rel="preconnect" href="https://fonts.googleapis.com">
    <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
    <link href="https://fonts.googleapis.com/css2?family=Roboto:wght@400;900&display=swap" rel="stylesheet">
    <style>
        <%@include file="../../css/style.css" %>
    </style>
    <style>
        <%@include file="../../css/burgers.css" %>
    </style>
</head>
<body>
<header>
    <div class="menu">
        <nav class="navbar">
            <h5 class="nav_branding">
                <a href="/bigburger/" class="nav_link_">BIG BURGER</a>
            </h5>
            <ul class="nav_menu">
                <%
                    Cart burgers = Cart.getInstance();
                %>
                <li class="nav_item">
                    <a href="/bigburger/menu" class="nav_link">Меню</a>
                </li>
                <li class="nav_item">
                    <a href="/bigburger/delivery" class="nav_link">Доставка</a>
                </li>
                <li class="nav_item item-cart">
                    <a href="/bigburger/cart" class="nav_link cart"
                    ><i class="uil uil-shopping-cart"></i>Корзина
                        <div class="numb"><%= String.valueOf(burgers.getGeneralSize()) %>
                        </div>
                    </a>
                </li>
            </ul>
        </nav>
    </div>
</header>
<main>
    <h1 class="header">бургер-меню</h1>
    <section class="burger_section">
        <section class="burger">
            <div class="borderline">
                <div class="description">
                    <div class="burger_name">МЕКСИКАНО</div>
                    <div class="burger_contain">
                        Булка з сезамом / яловичина / цибуля / гострий перець / листя
                        салату / подвійний сир чеддер / соус чилі *
                    </div>
                    <div class="burger_weight">
                        <p class="burger_weight1">Маса:</p>
                        <p class="burger_weight2">470 гр</p>
                    </div>
                    <form method="post" action="?name=Mexicano">
                        <button type="submit" class="burger_order">
                            <div class="burger_price">
                                <div class="price">175 грн</div>
                            </div>
                            <p class="text">ЗАМОВИТИ</p>
                        </button>
                        <div class="under_btn">
                            <div class="burger_spicy">дуже гострий</div>
                            <label>
                                <input class="menu_number" type="number" value="1" name="number">
                            </label>
                        </div>
                    </form>
                </div>
                <div>
                    <img
                            class="burger_pic"
                            src="https://i.ibb.co/7pTpxNq/mexicano.png"
                            class=""
                            alt="img_burger"
                    />
                </div>
            </div>
        </section>
        <section class="burger">
            <div class="borderline">
                <div class="description">
                    <div class="burger_name">класичний</div>
                    <div class="burger_contain">
                        Булка з сезамом / яловичина / листя салату / солений огірок /
                        цибуля / помідори *
                    </div>
                    <div class="burger_weight">
                        <p class="burger_weight1">Маса:</p>
                        <p class="burger_weight2">430 гр</p>
                    </div>
                    <form method="post" action="?name=Clasic">
                        <button type="submit" class="burger_order">
                            <div class="burger_price">
                                <div class="price">160 грн</div>
                            </div>
                            <p class="text">ЗАМОВИТИ</p>
                        </button>
                        <div class="under_btn">
                            <div class="burger_notspicy">негострий</div>
                            <label>
                                <input class="menu_number" type="number" value="1" name="number">
                            </label>
                        </div>
                    </form>
                </div>
                <div>
                    <img
                            class="burger_pic"
                            src="https://i.ibb.co/fYTyVPg/classic.png"
                            class=""
                            alt="img_burger"
                    />
                </div>
            </div>
        </section>
        <section class="burger">
            <div class="borderline">
                <div class="description">
                    <div class="burger_name">Сулугуні</div>
                    <div class="burger_contain">
                        Булка з сезамом / яловичина з сулугуні всередині / листя салату
                        / солений огірок / цибуля / помідори *
                    </div>
                    <div class="burger_weight">
                        <p class="burger_weight1">Маса:</p>
                        <p class="burger_weight2">460 гр</p>
                    </div>
                    <form method="post" action="?name=Suluguni">
                        <button type="submit" class="burger_order">
                            <div class="burger_price">
                                <div class="price">165 грн</div>
                            </div>
                            <p class="text">ЗАМОВИТИ</p>
                        </button>
                        <div class="under_btn">
                            <div class="burger_notspicy">негострий</div>
                            <label>
                                <input class="menu_number" type="number" value="1" name="number">
                            </label>
                        </div>
                    </form>
                </div>
                <div>
                    <img
                            class="burger_pic"
                            src="https://i.ibb.co/hfcthXD/suluguni.png"
                            class=""
                            alt="img_burger"
                    />
                </div>
            </div>
        </section>
        <section class="burger">
            <div class="borderline">
                <div class="description">
                    <div class="burger_name">Вегетаріано</div>
                    <div class="burger_contain">
                        Булка з сезамом / котлета з нуту /листя салату / помідори / солені огірки / цибуля / домашній
                        майонез *
                    </div>
                    <div class="burger_weight">
                        <p class="burger_weight1">Маса:</p>
                        <p class="burger_weight2">440 гр</p>
                    </div>
                    <form method="post" action="?name=Vegeteriano">
                        <button type="submit" class="burger_order">
                            <div class="burger_price">
                                <div class="price">155 грн</div>
                            </div>
                            <p class="text">ЗАМОВИТИ</p>
                        </button>
                        <div class="under_btn">
                            <div class="burger_notspicy">негострий</div>
                            <label>
                                <input class="menu_number" type="number" value="1" name="number">
                            </label>
                        </div>
                    </form>
                </div>
                <div>
                    <img
                            class="burger_pic"
                            src="https://i.ibb.co/hBQBMB8/vegetarian.png"
                            class=""
                            alt="img_burger"
                    />
                </div>
            </div>
        </section>
        <section class="burger">
            <div class="borderline">
                <div class="description">
                    <div class="burger_name">Барбекю</div>
                    <div class="burger_contain">
                        Булка з сезамом / яловичина / класичний соус BBQ / цибуля / листя салату / хрумкий бейкон / соус
                        чилі *
                    </div>
                    <div class="burger_weight">
                        <p class="burger_weight1">Маса:</p>
                        <p class="burger_weight2">490 гр</p>
                    </div>
                    <form method="post" action="?name=Bbq">
                        <button type="submit" class="burger_order">
                            <div class="burger_price">
                                <div class="price">175 грн</div>
                            </div>
                            <p class="text">ЗАМОВИТИ</p>
                        </button>
                        <div class="under_btn">
                            <div class="burger_spicy">гострий</div>
                            <label>
                                <input class="menu_number" type="number" value="1" name="number">
                            </label>
                        </div>
                    </form>
                </div>
                <div>
                    <img
                            class="burger_pic"
                            src="https://i.ibb.co/q5HSg8X/bbq.png"
                            class=""
                            alt="img_burger"
                    />
                </div>
            </div>
        </section>
        <section class="burger">
            <div class="borderline">
                <div class="description">
                    <div class="burger_name">лососевий</div>
                    <div class="burger_contain">
                        Булка з сезамом / стейк з лосося / листя айсберг / огірок /цибуля / домашній соус тартар *
                    </div>
                    <div class="burger_weight">
                        <p class="burger_weight1">Маса:</p>
                        <p class="burger_weight2">475 гр</p>
                    </div>
                    <form method="post" action="?name=Salmon">
                        <button type="submit" class="burger_order">
                            <div class="burger_price">
                                <div class="price">190 грн</div>
                            </div>
                            <p class="text">ЗАМОВИТИ</p>
                        </button>
                        <div class="under_btn">
                            <div class="burger_notspicy">негострий</div>
                            <label>
                                <input class="menu_number" type="number" value="1" name="number">
                            </label>
                        </div>
                    </form>
                </div>
                <div>
                    <img
                            class="burger_pic"
                            src="https://i.ibb.co/fMtvt9H/salmon.png"
                            class=""
                            alt="img_burger"
                    />
                </div>
            </div>
        </section>
    </section>

    <h2 class="header">Напої</h2>
    <section class="drinks_section">
        <section class="drink">
            <div class="borderline_drink">
                <div class="drink_description">
                    <div class="drink_name">Cola</div>
                    <div class="burger_weight">
                        <p class="burger_weight1">Об'єм:</p>
                        <p class="burger_weight2">0.5 л</p>
                    </div>
                    <form method="post" action="?name=Cola">
                        <button type="submit" class="burger_order">
                            <div class="burger_price">
                                <div class="price">30 грн</div>
                            </div>
                            <p class="text">ЗАМОВИТИ</p>
                        </button>
                        <div class="under_btn">
                            <div class="burger_spicy">газований</div>
                            <label>
                                <input class="menu_number" type="number" value="1" name="number">
                            </label>
                        </div>
                    </form>
                </div>
                <div>
                    <img
                            class="drink_pic"
                            src="https://i.ibb.co/RptX5Xq/cola05.png"
                            class=""
                            alt="img_drink"
                    />
                </div>
            </div>
        </section>
        <section class="drink">
            <div class="borderline_drink">
                <div class="drink_description">
                    <div class="drink_name">fanta</div>
                    <div class="burger_weight">
                        <p class="burger_weight1">Об'єм:</p>
                        <p class="burger_weight2">0.5 л</p>
                    </div>
                    <form method="post" action="?name=Fanta">
                        <button type="submit" class="burger_order">
                            <div class="burger_price">
                                <div class="price">30 грн</div>
                            </div>
                            <p class="text">ЗАМОВИТИ</p>
                        </button>
                        <div class="under_btn">
                            <div class="burger_spicy">газований</div>
                            <label>
                                <input class="menu_number" type="number" value="1" name="number">
                            </label>
                        </div>
                    </form>
                </div>
                <div>
                    <img
                            class="drink_pic2"
                            src="https://i.ibb.co/kc442Mg/fanta.png"
                            class=""
                            alt="img_drink"
                    />
                </div>
            </div>
        </section>
        <section class="drink">
            <div class="borderline_drink">
                <div class="drink_description">
                    <div class="drink_name">sprite</div>
                    <div class="burger_weight">
                        <p class="burger_weight1">Об'єм:</p>
                        <p class="burger_weight2">0.5 л</p>
                    </div>
                    <form method="post" action="?name=Sprite">
                        <button type="submit" class="burger_order">
                            <div class="burger_price">
                                <div class="price">30 грн</div>
                            </div>
                            <p class="text">ЗАМОВИТИ</p>
                        </button>
                        <div class="under_btn">
                            <div class="burger_spicy">газований</div>
                            <label>
                                <input class="menu_number" type="number" value="1" name="number">
                            </label>
                        </div>
                    </form>
                </div>
                <div>
                    <img
                            class="drink_pic"
                            src="https://i.ibb.co/z81x56X/sprite.png"
                            class=""
                            alt="img_drink"
                    />
                </div>
            </div>
        </section>
        <section class="drink">
            <div class="borderline_drink">
                <div class="drink_description">
                    <div class="drink_name">Лимонад</div>
                    <div class="burger_weight">
                        <p class="burger_weight1">Об'єм:</p>
                        <p class="burger_weight2">0.33 л</p>
                    </div>
                    <form method="post" action="?name=Limonade">
                        <button type="submit" class="burger_order">
                            <div class="burger_price">
                                <div class="price">34 грн</div>
                            </div>
                            <p class="text">ЗАМОВИТИ</p>
                        </button>
                        <div class="under_btn">
                            <div class="burger_spicy">газований</div>
                            <label>
                                <input class="menu_number" type="number" value="1" name="number">
                            </label>
                        </div>
                    </form>
                </div>
                <div>
                    <img
                            class="drink_pic"
                            src="https://i.ibb.co/m8CDnHJ/limonade.png"
                            class=""
                            alt="img_drink"
                    />
                </div>
            </div>
        </section>
        <section class="drink">
            <div class="borderline_drink">
                <div class="drink_description">
                    <div class="drink_name">BORJOMI</div>
                    <div class="burger_weight">
                        <p class="burger_weight1">Об'єм:</p>
                        <p class="burger_weight2">0.5 л</p>
                    </div>
                    <form method="post" action="?name=Borjomi">
                        <button type="submit" class="burger_order">
                            <div class="burger_price">
                                <div class="price">40 грн</div>
                            </div>
                            <p class="text">ЗАМОВИТИ</p>
                        </button>
                        <div class="under_btn">
                            <div class="burger_spicy">газований</div>
                            <label>
                                <input class="menu_number" type="number" value="1" name="number">
                            </label>
                        </div>
                    </form>
                </div>
                <div>
                    <img
                            class="drink_pic3"
                            src="https://i.ibb.co/4jr8ztj/borjomi.png"
                            class=""
                            alt="img_drink"
                    />
                </div>
            </div>
        </section>
        <section class="drink">
            <div class="borderline_drink">
                <div class="drink_description">
                    <div class="drink_name_other">Моршинська негазована</div>
                    <div class="burger_weight">
                        <p class="burger_weight1">Об'єм:</p>
                        <p class="burger_weight2">0.33 л</p>
                    </div>
                    <form method="post" action="?name=Morshinska">
                        <button type="submit" class="burger_order">
                            <div class="burger_price">
                                <div class="price">32 грн</div>
                            </div>
                            <p class="text">ЗАМОВИТИ</p>
                        </button>
                        <div class="under_btn">
                            <div class="burger_notspicy">негазований</div>
                            <label>
                                <input class="menu_number" type="number" value="1" name="number">
                            </label>
                        </div>
                    </form>
                </div>
                <div>
                    <img
                            class="drink_pic3"
                            src="https://i.ibb.co/qjZhNxf/morshinska.png"
                            class=""
                            alt="img_drink"
                    />
                </div>
            </div>
        </section>
    </section>

    </section>
    <h3 class="header">Соуси</h3>
    <section class="sauce_section">
        <section class="sauce">
            <div class="borderline_sauce">
                <div class="drink_description">
                    <div class="drink_name">Кетчуп</div>
                    <div class="burger_weight">
                        <p class="burger_weight1">Вага:</p>
                        <p class="burger_weight2">50 г</p>
                    </div>
                    <form method="post" action="?name=Ketchup">
                        <button type="submit" class="burger_order">
                            <div class="burger_price">
                                <div class="price">9 грн</div>
                            </div>
                            <p class="text">ЗАМОВИТИ</p>
                        </button>
                        <div class="under_btn">
                            <div class="burger_notspicy">негострий</div>
                            <label>
                                <input class="menu_number" type="number" value="1" name="number">
                            </label>
                        </div>
                    </form>
                </div>
                <div>
                    <img
                            class="sauce_pic"
                            src="https://i.ibb.co/hWnVhQH/ketchup.png"
                            class=""
                            alt="img_drink"
                    />
                </div>
            </div>
        </section>
        <section class="sauce">
            <div class="borderline_sauce">
                <div class="drink_description">
                    <div class="drink_name">Барбекю</div>
                    <div class="burger_weight">
                        <p class="burger_weight1">Вага:</p>
                        <p class="burger_weight2">50 г</p>
                    </div>
                    <form method="post" action="?name=BbqSauce">
                        <button type="submit" class="burger_order">
                            <div class="burger_price">
                                <div class="price">11 грн</div>
                            </div>
                            <p class="text">ЗАМОВИТИ</p>
                        </button>
                        <div class="under_btn">
                            <div class="burger_notspicy">негострий</div>
                            <label>
                                <input class="menu_number" type="number" value="1" name="number">
                            </label>
                        </div>
                    </form>
                </div>
                <div>
                    <img
                            class="sauce_pic"
                            src="https://i.ibb.co/q9tYkCd/bbqsauce.png"
                            class=""
                            alt="img_drink"
                    />
                </div>
            </div>
        </section>
        <section class="sauce">
            <div class="borderline_sauce">
                <div class="drink_description">
                    <div class="sauce_name_other">Cолодкий чилі</div>
                    <div class="burger_weight">
                        <p class="burger_weight1">Вага:</p>
                        <p class="burger_weight2">50 г</p>
                    </div>
                    <form method="post" action="?name=Sweetchili">
                        <button type="submit" class="burger_order">
                            <div class="burger_price">
                                <div class="price">13 грн</div>
                            </div>
                            <p class="text">ЗАМОВИТИ</p>
                        </button>
                        <div class="under_btn">
                            <div class="burger_spicy">гострий</div>
                            <label>
                                <input class="menu_number" type="number" value="1" name="number">
                            </label>
                        </div>
                    </form>
                </div>
                <div>
                    <img
                            class="sauce_pic"
                            src="https://i.ibb.co/5FwqHfH/sweetchili.webp"
                            class=""
                            alt="img_drink"
                    />
                </div>
            </div>
        </section>
        <section class="sauce">
            <div class="borderline_sauce">
                <div class="drink_description">
                    <div class="drink_name">Тартар</div>
                    <div class="burger_weight">
                        <p class="burger_weight1">Вага:</p>
                        <p class="burger_weight2">50 г</p>
                    </div>
                    <form method="post" action="?name=Tartar">
                        <button type="submit" class="burger_order">
                            <div class="burger_price">
                                <div class="price">11 грн</div>
                            </div>
                            <p class="text">ЗАМОВИТИ</p>
                        </button>
                        <div class="under_btn">
                            <div class="burger_notspicy">негострий</div>
                            <label>
                                <input class="menu_number" type="number" value="1" name="number">
                            </label>
                        </div>
                    </form>
                </div>
                <div>
                    <img
                            class="sauce_pic"
                            src="https://i.ibb.co/NFZxtpP/tartar.webp"
                            class=""
                            alt="img_drink"
                    />
                </div>
            </div>
        </section>
        <section class="sauce">
            <div class="borderline_sauce">
                <div class="drink_description">
                    <div class="sauce_name_other">Медово-гірчичний</div>
                    <div class="burger_weight">
                        <p class="burger_weight1">Вага:</p>
                        <p class="burger_weight2">50 г</p>
                    </div>
                    <form method="post" action="?name=Honey">
                        <button type="submit" class="burger_order">
                            <div class="burger_price">
                                <div class="price">15грн</div>
                            </div>
                            <p class="text">ЗАМОВИТИ</p>
                        </button>
                        <div class="under_btn">
                            <div class="burger_spicy">гострий</div>
                            <label>
                                <input class="menu_number" type="number" value="1" name="number">
                            </label>
                        </div>
                    </form>
                </div>
                <div>
                    <img
                            class="sauce_pic"
                            src="https://i.ibb.co/WfpB9Mz/honey.png"
                            class=""
                            alt="img_drink"
                    />
                </div>
            </div>
        </section>
        <section class="sauce">
            <div class="borderline_sauce">
                <div class="drink_description">
                    <div class="sauce_name_other">Супер-гострий</div>
                    <div class="burger_weight">
                        <p class="burger_weight1">Вага:</p>
                        <p class="burger_weight2">50 г</p>
                    </div>
                    <form method="post" action="?name=Superhot">
                        <button type="submit" class="burger_order">
                            <div class="burger_price">
                                <div class="price">15грн</div>
                            </div>
                            <p class="text">ЗАМОВИТИ</p>
                        </button>
                        <div class="under_btn">
                            <div class="burger_spicy">гострий</div>
                            <label>
                                <input class="menu_number" type="number" value="1" name="number">
                            </label>
                        </div>
                    </form>
                </div>
                <div>
                    <img
                            class="sauce_pic"
                            src="https://i.ibb.co/bg7P2FZ/superhot.png"
                            class=""
                            alt="img_drink"
                    />
                </div>
            </div>
        </section>
    </section>
    </section>
    <div class="additional">*Є можливість заміни інгредієнтів в складі бургера. Уточнюйте інформацію в оператора під час
        оформлення замовлення!
    </div>
    </section>
</main>
<footer>
    <div class="footer">
        <div class="footer_contact">
            <h5 class="footer_contact_main_text">BIG BURGER</h5>
        </div>
        <div class="footer-info">
            <a class="list-item" href="">Головна</a>
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

