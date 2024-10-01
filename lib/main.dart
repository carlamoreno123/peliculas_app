import 'package:flutter/material.dart';
import 'buscarwidget.dart';
import 'homescreen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Peliculas',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        // This is the theme of your application.
        //
        // TRY THIS: Try running your application with "flutter run". You'll see
        // the application has a purple toolbar. Then, without quitting the app,
        // try changing the seedColor in the colorScheme below to Colors.green
        // and then invoke "hot reload" (save your changes or press the "hot
        // reload" button in a Flutter-supported IDE, or press "r" if you used
        // the command line to start the app).
        //
        // Notice that the counter didn't reset back to zero; the application
        // state is not lost during the reload. To reset the state, use hot
        // restart instead.
        //
        // This works for code too, not just values: Most code changes can be
        // tested with just a hot reload.
        colorScheme: ColorScheme.fromSeed(
            seedColor: const Color.fromARGB(255, 98, 179, 201)),
        useMaterial3: true,
      ),
      home: const HomeScreen(),
    );
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
              Container(
                child:  Text(
                  'Elemento 1 pero mucho mas largo',
                  style: TextStyle(fontSize: 20),
                ),
                height: 150,
                decoration: BoxDecoration(
                    color: const Color.fromARGB(255, 136, 81, 202)),
              ),
              SizedBox(
                height: 10,
              ),
              Container(
                child: Text(
                  'Elemento 2',
                  style: TextStyle(fontSize: 20),
                ),
                height: 200,
                decoration: BoxDecoration(
                    color: const Color.fromARGB(255, 136, 81, 202)),
              ),
              SizedBox(
                height: 10,
              ),
              Container(
                child: Text(
                  'Elemento 3',
                  style: TextStyle(fontSize: 20),
                ),
                height: 250,
                decoration: BoxDecoration(
                    color: const Color.fromARGB(255, 136, 81, 202)),
              ),
              SizedBox(
                height: 10,
              ),
            ]),
      ),
    );
  }
}
