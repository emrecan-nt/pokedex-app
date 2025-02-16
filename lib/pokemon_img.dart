import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:pokedex/model.dart';
import 'package:pokedex/ui_helper.dart';

class PokemonImage extends StatelessWidget {
  final PokemonModel pokemon;
  const PokemonImage({Key? key, required this.pokemon}) : super(key: key);

  @override
  Widget build(BuildContext Context) {
    String PokeballimageUrl = "images/pokeball.png";
    return Stack(
      children: [
        Align(
          alignment: Alignment.bottomRight,
          child: Image.asset(
            PokeballimageUrl,
            width: UiHelper.calculatePokeImgAndBallSize(),
            height: UiHelper.calculatePokeImgAndBallSize(),
            fit: BoxFit.fitHeight,
          ),
        ),
        Align(
          alignment: Alignment.bottomRight,
          child: CachedNetworkImage(
            imageUrl: pokemon.img ?? "",
            width: UiHelper.calculatePokeImgAndBallSize(),
            height: UiHelper.calculatePokeImgAndBallSize(),
            fit: BoxFit.fitHeight,
            placeholder: (context,url)=> const CircularProgressIndicator(
              color: Colors.redAccent,
            ),
          
          ),
        ),
      ],
    );
  }
}
