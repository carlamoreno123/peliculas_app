import 'package:flutter/material.dart';
import 'package:peliculas_app/widgets/botonopcioneswidget.dart';

class AppBarHome extends StatelessWidget implements PreferredSizeWidget{
  const AppBarHome({super.key});

  @override
  Size get preferredSize => const Size.fromHeight(80);
  @override
  Widget build(BuildContext context) {
    return AppBar(
        title: const Text(
          'Películas',
          style: TextStyle(fontWeight: FontWeight.bold, fontSize: 30),
        ),
        centerTitle: true,
        elevation: 3,
        backgroundColor: const Color.fromARGB(255, 79, 111, 190),
        shadowColor: const Color.fromARGB(255, 104, 152, 192),
        toolbarHeight: 80,
        actions: [
          BotonOpciones(),
        ],
        leading: IconButton(
            onPressed: () {},
            icon: const Icon(
              Icons.home,
              size: 28,
            )));
  }
  
}
