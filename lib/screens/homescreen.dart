import 'package:flutter/material.dart';
import 'package:peliculas_app/widgets/widgets.dart';
import '../widgets/buscarwidget.dart';

class MyWidget extends StatelessWidget {
  const MyWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return const Placeholder();
  }
}

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBarHome(),
      body: Padding(
        padding: const EdgeInsets.only(top: 20),
        child: Column(
            mainAxisSize: MainAxisSize.max,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              const Buscarwidget(),
              const SizedBox(
                height: 10,
              ),
              Expanded(
                  child: SingleChildScrollView(
                child: Column(
                  children: [
                    ListaPeliculaswidget('Ahora en cines'),
                    ListaPeliculaswidget('Mas populares'),
                    ListaPeliculaswidget('Mejor Valoradas'),
                    ListaPeliculaswidget('Proximamente'),
                  ],
                ),
              ))
            ]),
      ),
    );
  }
}
