package com.example.beburger.items;

import java.util.Map;
import java.util.concurrent.ConcurrentHashMap;

public class Cart {
    private static Cart instance;
    private Map<Burgers, Integer> cart;
    private String totalCost;

    private Cart(){
        cart = new ConcurrentHashMap<>();
        totalCost = "0";
    }

    public int getGeneralSize(){
        return cart.values()
                .stream()
                .filter(c -> c > 0)
                .mapToInt(value -> value)
                .sum();
    }

    public static Cart getInstance(){
        if (instance == null){
            instance = new Cart();
        }
        return instance;
    }

    public Map<Burgers, Integer> getCart(){
        return cart;
    }

    public String getTotalCost() {
        return totalCost;
    }

    public void setTotalCost(String totalCost) {
        this.totalCost = totalCost;
    }
}
