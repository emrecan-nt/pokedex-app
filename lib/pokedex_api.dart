import 'dart:convert';
import 'package:dio/dio.dart';
import 'package:pokedex/model.dart';

class PokeApi {
  static const String _url =
      "https://raw.githubusercontent.com/Biuni/PokemonGo-pokedex/master/pokedex.json";
  static Future<List<PokemonModel>> getPokemonData() async {
    List<PokemonModel> _list = [];
    try {
      var result = await Dio().get(_url);
      var data = jsonDecode(result.data);
      var pokeList = data["pokemon"];
      if (pokeList is List) {
        _list = pokeList.map((e) => PokemonModel.fromJson(e)).toList();
      } else {
        return [];
      }
    } catch (e) {
      print("Hata: $e");
      return Future.error("Veri çekilemedi: $e");
    }

    return _list;
  }
}