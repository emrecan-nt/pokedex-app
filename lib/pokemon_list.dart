import 'package:flutter/material.dart';
import 'package:pokedex/model.dart';
import 'package:pokedex/pokedex_api.dart';

class PokemonList extends StatefulWidget {
  const PokemonList({super.key});

  @override
  State<PokemonList> createState() => _PokemonListState();
}

class _PokemonListState extends State<PokemonList> {
  late Future<List<PokemonModel>> _pokemonList;
    @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _pokemonList = PokeApi.getPokemonData();
  }
  @override
  Widget build(BuildContext context) {
    return FutureBuilder<List<PokemonModel>>(
      future: _pokemonList,
      builder: (context, snapshot) {
        if (snapshot.hasData) {
          List<PokemonModel> _listem = snapshot.data!;
          return ListView.builder(
              itemCount: _listem.length,
              itemBuilder: (context, index) {
                var oankiPokemon = _listem[index];
                return ListTile(
                  title: Text(oankiPokemon.name.toString()),
                );
              });
        } else if (snapshot.hasError) {
          return Center(
            child: Text("veri çekilemedi"),
          );
        } else {
          return Center(
            child: CircularProgressIndicator(),
          );
        }
      },
    );
  }
}