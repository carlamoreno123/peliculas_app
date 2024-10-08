import 'package:flutter/material.dart';
import 'package:peliculas_app/screens/homescreen.dart';

class Buscarwidget extends StatelessWidget {
  const Buscarwidget({super.key});

  @override
  Widget build(BuildContext context) {
    return const TextField(
      decoration: InputDecoration(
          labelStyle: TextStyle(
            fontSize: 30,
          ),
          labelText: 'Busqueda',
          prefixIcon: Icon(
            Icons.search,
            size: 30,
          ),
          hintText: 'Busca una película o actor...',
          enabledBorder: UnderlineInputBorder(
              borderSide: BorderSide(color: Colors.black))),
    );
  }
}
