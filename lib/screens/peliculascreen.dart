import 'package:flutter/material.dart';
import 'package:peliculas_app/appbarhomewidget.dart';

class Peliculascreen extends StatelessWidget {
  const Peliculascreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const AppBarHome(),
      body: Padding (
        padding: const EdgeInsets.all(8.0),
        child:  Column (
          children: [
            const Center(
              child: Column(
                children: [
                  Text(
                    'Titulo',
                    style: TextStyle(fontSize: 50),
                  ),
                  Text(
                    '(Titulo original)',
                    style: TextStyle(fontSize: 25),
                  )
                ],
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      margin: const EdgeInsets.only(right: 8),
                      height: 250,
                      width: 200,
                      decoration: const BoxDecoration(

                          //imagen
                          color: const Color.fromARGB(31, 19, 19, 19)),
                    ),
                    const Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text('8,4', style: TextStyle(fontSize: 22)),
                        SizedBox(
                          width: 10,
                        ),
                        Text('(987)', style: TextStyle(fontSize: 22)),
                        SizedBox(
                          width: 10,
                        ),
                        Text('93%', style: TextStyle(fontSize: 22)),
                        SizedBox(
                          width: 10,
                        )
                      ],
                    )
                  ],
                ),
                const Expanded(
                    child: const Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      children: [
                        Icon(Icons.nature),
                        SizedBox(
                          width: 10,
                        ),
                        Icon(Icons.access_alarm),
                        SizedBox(
                          width: 10,
                        ),
                        Icon(Icons.baby_changing_station),
                        SizedBox(
                          width: 10,
                        ),
                      ],
                    ),
                    Text(
                      'Duracion: 90 min',
                      style: TextStyle(fontSize: 25),
                    ),
                    Text(
                      'Año: 2024',
                      style: TextStyle(fontSize: 25),
                    ),
                    Text(
                      'Generos: si',
                      style: TextStyle(fontSize: 25),
                    ),
                  ],
                ))
              ],
            ),
            const SizedBox(
              height: 10,
            ),
            const Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text('Sinopsis',
                    style:
                        TextStyle(fontSize: 30, fontWeight: FontWeight.bold)),
                Text(
                  'El atardecer es un momento mágico del día. Cuando el sol comienza a descender, el cielo se pinta de tonos cálidos: naranjas, rosas y lilas se mezclan en un espectáculo de colores. Los pájaros regresan a sus nidos, y el aire se llena de una calma especial. Es un instante perfecto para reflexionar y disfrutar de la belleza que nos rodea, recordándonos que cada día trae su propio final y la promesa de un nuevo amanecer.',
                  style: TextStyle(fontSize: 20),
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}
