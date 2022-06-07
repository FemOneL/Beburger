package com.example.beburger.servlets;

import com.example.beburger.items.Burgers;
import com.example.beburger.items.Cart;

import javax.servlet.*;
import javax.servlet.http.*;
import java.io.IOException;
import java.util.stream.Collectors;

public class CartServlet extends HttpServlet {
    private Cart burgers;

    @Override
    public void init() throws ServletException {
        burgers = Cart.getInstance();
    }

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        int cost = 0;
        cost = burgers.getCart().keySet().stream().filter(b -> !(b.getCount() < 1)).mapToInt(Burgers::getCost).sum();
        burgers.setTotalCost(String.valueOf(cost));
        req.setAttribute("burgers", burgers.getCart()
                .keySet()
                .stream()
                .filter(b -> b.getCount() > 0)
                .collect(Collectors.toList()));
        req.getRequestDispatcher("WEB-INF/view/cart.jsp").forward(req, resp);

    }

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        String burgerName = req.getParameter("name");
        if (!burgerName.equals("delete")) {
            burgers.getCart().put(Burgers.valueOf(burgerName), burgers.getCart().get(Burgers.valueOf(burgerName)) - 1);
            burgers.getCart().forEach(Burgers::counter);
        }else {
            burgers.getCart().keySet().forEach(p -> burgers.getCart().put(p, 0));
            burgers.getCart().forEach(Burgers::counter);
        }
        resp.sendRedirect("cartRedirect");
    }
}
