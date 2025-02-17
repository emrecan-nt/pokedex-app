import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:pokedex/constants.dart';
import 'package:pokedex/model.dart';
import 'package:pokedex/ui_helper.dart';

class PokenameType extends StatelessWidget {
  final PokemonModel pokemon;
  const PokenameType({super.key, required this.pokemon});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 0.05.sh),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Expanded(
                child: Text(
                  pokemon.name ?? "",
                  style: Constants.getPokemonNameTextStyle(),
                ),
              ),
              Text(
                "#${pokemon.num}",
                style: Constants.getPokemonNameTextStyle(),
              )
            ],
          ),
          SizedBox(
            height: 20,
          ),
          Chip(
              label: Text(pokemon.type?.join(' ,') ?? "  ",
                  style: Constants.getTypeChipTextStyle())),
        ],
      ),
    );
  }
}
