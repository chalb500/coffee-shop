package com.example.coffeeservice.impl;

import com.example.coffee.Coffee;
import com.example.coffeeservice.CoffeeService;

public class CoffeeServiceImpl implements CoffeeService {
  public String makeCoffee(Coffee coffee) {
    return "Made you a cup of " + coffee.getName() + ".";
  }
}
