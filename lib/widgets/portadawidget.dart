import 'package:flutter/material.dart';

class Portadawidget extends StatelessWidget {
  const Portadawidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(right: 8),
      height: 180,
      width: 120,
      decoration: BoxDecoration(

          //imagen
          color: const Color.fromARGB(31, 79, 71, 71)),
    );
  }
}
