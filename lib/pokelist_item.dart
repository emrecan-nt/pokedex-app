import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:pokedex/constants.dart';
import 'package:pokedex/detail_page.dart';
import 'package:pokedex/model.dart';
import 'package:pokedex/pokemon_img.dart';
import 'package:pokedex/ui_helper.dart';

class PokelistItem extends StatelessWidget {
  final PokemonModel pokemon;
  const PokelistItem({Key? key, required this.pokemon}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        Navigator.of(context).push(MaterialPageRoute(
          builder: (context) => DetailPage(pokemon: pokemon),
        )
        );
      },
      child: Card(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(15.w),
        ),
        elevation: 3,
        shadowColor: Colors.white,
        color: UiHelper.getColorFromType(pokemon.type![0]),
        child: Padding(
          padding: UiHelper.getDefaultPadding(),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                pokemon.name ?? "N/A",
                style: Constants.getPokemonNameTextStyle(),
              ),
              Chip(label: Text(pokemon.type![0])),
              Expanded(child: PokemonImage(pokemon: pokemon)),
            ],
          ),
        ),
      ),
    );
  }
}
