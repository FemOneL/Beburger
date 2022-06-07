package com.example.beburger.servlets;

import com.example.beburger.items.Cart;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;
import java.io.IOException;
import java.util.stream.Collectors;

public class DeliveryServlet extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        req.getRequestDispatcher("WEB-INF/view/delivery.jsp").forward(req, resp);
    }

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        Cart cart = Cart.getInstance();
        req.setAttribute("Cart",  cart.getCart()
                .keySet()
                .stream()
                .filter(b -> b.getCount() != 0)
                .collect(Collectors.toList()));
        req.getRequestDispatcher("WEB-INF/view/order.jsp").forward(req, resp);
    }
}
