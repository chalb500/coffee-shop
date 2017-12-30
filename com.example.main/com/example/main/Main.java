package com.example.main;

import com.example.coffee.Coffee;
import com.example.coffeeservice.CoffeeService;
import java.util.ServiceLoader;

public class Main {
  public static void main(String[] args) {
      //Choose dark roast coffee, because that's the best
      ServiceLoader<Coffee> coffeeTypes = ServiceLoader.load(Coffee.class);
      Coffee coffee =null;
      for (Coffee coffeeType : coffeeTypes ) {
        if (coffeeType.getName().equals("Dark Roast Coffee")) {
          coffee = coffeeType;
          break;
        }
      }

      //Make the coffee
      ServiceLoader<CoffeeService> coffeeServiceTypes = ServiceLoader.load(CoffeeService.class);
      CoffeeService coffeeService = coffeeServiceTypes.iterator().next();
      String message = coffeeService.makeCoffee(coffee);

      //Inform the user that the coffee is done
      System.out.println(message);
  }
}
