package com.example.beburger.servlets;
import com.example.beburger.items.Burgers;
import com.example.beburger.items.Cart;

import java.io.*;
import javax.servlet.ServletException;
import javax.servlet.http.*;

public class BurgerServlet extends HttpServlet {
    private Cart burgers;

    @Override
    public void init() throws ServletException {
         burgers = Cart.getInstance();
    }

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        req.getRequestDispatcher("WEB-INF/view/burgers.jsp").forward(req, resp);
    }

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        String name = req.getParameter("name");
        int number;
        try {
            number = Integer.parseInt(req.getParameter("number"));
        }catch (NumberFormatException e){
            number = 1;
        }
        if (number < 0)
            number = 1;
        burgers.getCart().put(Burgers.valueOf(name), burgers.getCart().getOrDefault(Burgers.valueOf(name), 0) + number);
        burgers.getCart().forEach(Burgers::counter);
        resp.sendRedirect("burgerRedirect");
    }
}