module com.example.coffeeservice.impl {
  requires com.example.coffeeservice;
  requires com.example.coffee;
  provides com.example.coffeeservice.CoffeeService
    with com.example.coffeeservice.impl.CoffeeServiceImpl;
}
