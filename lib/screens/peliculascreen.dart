import 'package:flutter/material.dart';
import 'package:peliculas_app/appbarhomewidget.dart';

class Peliculascreen extends StatelessWidget {
  const Peliculascreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const AppBarHome(),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
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
              children: [
                Column(
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
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}
