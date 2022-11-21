import 'package:flutter/material.dart';

class People extends StatelessWidget {
  const People({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
        decoration: BoxDecoration(
      color: Colors.transparent,
      image: DecorationImage(
        image: NetworkImage(
          "https://images.unsplash.com/photo-1663948127729-383932170506?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=387&q=80",
        ),
        fit: BoxFit.cover,
      ),
    ));
  }
}
