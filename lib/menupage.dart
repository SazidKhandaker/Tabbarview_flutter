import 'package:flutter/material.dart';

class Menupage extends StatelessWidget {
  const Menupage({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Color.fromARGB(255, 161, 134, 132),
      child: Image.network(
          "https://images02.nicepage.com/a1389d7bc73adea1e1c1fb7e/4ee27f6c1e835cdeae40d5a4/54-545849_dinner-food-png-freeuse-stock-plate-of-food.png"),
    );
  }
}
