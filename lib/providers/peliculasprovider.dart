import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'package:peliculas_app/entities/pelicula.dart';
import 'package:peliculas_app/entities/populares.dart';

class Peliculasprovider extends ChangeNotifier {
  final String _apiKey = 'e43f45045b3a8ce3be6154ba868c44f3';
  final String _baseUrl = 'api.themoviedb.org';
  final String _language = 'es-ES';

  List<Pelicula> populares = [];
  List<Pelicula> proximamente = [];
  List<Pelicula> cines = [];
  List<Pelicula> mejorValoradas = [];
  
  PeliculasProvider() {
    getPopulares();
  }

  Future<void> getListas() async {
    List<String> listas = ['popular', 'upcoming', 'now_playing', 'top_rated'];
    for (String lista in listas) {
      final jsonData = await _getJsonData('3/movie/$lista', 1);
      final respuesta = Lista.fromJson(jsonDecode(jsonData));
      switch (lista) {
        case 'popular':
          populares = respuesta.resultados;
          break;
        case 'upcoming':
          proximamente = respuesta.resultados;
          break;
        case 'now_playing':
          cines = respuesta.resultados;
        case 'top_rated':
          mejorValoradas = respuesta.resultados;
          break;
      }
    }
  }

  Future<String> _getJsonData(String endpoint, int page) async {
    final url = Uri.https(_baseUrl, endpoint,
        {'api_key': _apiKey, 'language': _language, 'page': "$page"});

    final response = await http.get(url);
    return response.body;
  }

  getPopulares() async {
    final jsonData = await _getJsonData('3/movie/popular', 1);
    final popularesRespuesta = Populares.fromJson(jsonDecode(jsonData));
    populares = popularesRespuesta.resultados;
    notifyListeners();
  }
}
