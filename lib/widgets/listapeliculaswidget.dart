import 'package:flutter/material.dart';
import 'package:peliculas_app/widgets/widgets.dart';
import 'portadawidget.dart';

class ListaPeliculaswidget extends StatelessWidget {
  String? titulo;
  ListaPeliculaswidget(this.titulo, {super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                titulo!,
                style:
                    const TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
              ),
              Text(
                'Ver todas',
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
              ),
            ],
          ),
          Row(
            children: [
              Portadawidget(),
              SizedBox(
                width: 8,
              )
            ],
          ),
          Row(
            children: [
              Portadawidget(),
              SizedBox(
                width: 8,
              ),
              Row(
                children: [
                  Portadawidget(),
                  SizedBox(
                    width: 8,
                  )
                ],
              ),
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: [
                    Portadawidget(),
                    SizedBox(
                      width: 8,
                    ),
                  ],
                ),
              )
            ],
          )
        ],
      ),
    );
  }
}
