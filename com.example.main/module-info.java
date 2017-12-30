module com.example.main {
  requires com.example.coffee;
  requires com.example.coffeeservice;
  uses com.example.coffee.Coffee;
  uses com.example.coffeeservice.CoffeeService;
}
