module com.example.coffee.impl {
  requires com.example.coffee;
  provides com.example.coffee.Coffee
    with com.example.coffee.impl.DarkRoastCoffee,
      com.example.coffee.impl.LightRoastCoffee;
}
