import 'package:flutter/material.dart';
import 'buscarwidget.dart';

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
      appBar: AppBar(
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
            IconButton(
                onPressed: () {},
                icon: const Icon(
                  Icons.more_vert,
                  size: 32,
                ))
          ],
          leading: IconButton(
              onPressed: () {},
              icon: const Icon(
                Icons.home,
                size: 28,
              ))),
      body: Padding(
        padding: const EdgeInsets.only(top: 20),
        child: Column(
            mainAxisSize: MainAxisSize.max,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              const Buscarwidget(),
              const SizedBox(
                height: 10,
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          'Más populares',
                          style: TextStyle(
                              fontWeight: FontWeight.bold, fontSize: 20),
                        ),
                        Text(
                          'Ver todas',
                          style: TextStyle(
                              fontWeight: FontWeight.bold, fontSize: 20),
                        ),
                      ],
                    ),
                    Row(
                      children: [
                        Container(
                          height: 180,
                          width: 120,
                          decoration: BoxDecoration(

                              //imagen
                              color: Colors.black12),
                        ),
                        SizedBox(
                          width: 8,
                        )
                      ],
                    ),
                    Row(
                      children: [
                        Container(
                          height: 180,
                          width: 120,
                          decoration: BoxDecoration(

                              //imagen
                              color: Colors.black12),
                        ),
                        SizedBox(
                          width: 8,
                        ),
                        Row(
                          children: [
                            Container(
                              height: 180,
                              width: 120,
                              decoration: BoxDecoration(

                                  //imagen
                                  color: Colors.black12),
                            ),
                            SizedBox(
                              width: 8,
                            )
                          ],
                        ),
                        SingleChildScrollView(
                          scrollDirection: Axis.horizontal,
                          child: Row(
                            children: [
                              Container(
                                height: 180,
                                width: 120,
                                decoration: BoxDecoration(

                                    //imagen
                                    color: Colors.black12),
                              ),
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
              )
            ]),
      ),
    );
  }
}
