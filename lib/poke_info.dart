import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:pokedex/constants.dart';
import 'package:pokedex/model.dart';

class PokeInfo extends StatelessWidget {
  final PokemonModel pokemon;
  const PokeInfo({super.key, required this.pokemon});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.all(Radius.circular(10.w))),
      child: Padding(
        padding:  EdgeInsets.all(10.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        
          children: [
            _buildInfoRow("Name", pokemon.name),
            _buildInfoRow("Height", pokemon.height),
            _buildInfoRow("weight", pokemon.weight),
            _buildInfoRow("Spawntime", pokemon.spawnTime),
            _buildInfoRow("weaknesses", pokemon.weaknesses),
            _buildInfoRow("Pre Evolation", pokemon.prevEvolution),
            _buildInfoRow("Next Evolation", pokemon.nextEvolution),
          ],
        ),
      ),
    );
  }

  _buildInfoRow(String label, dynamic value) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(label,style: Constants.getPokemonInfolabelTextStyle(),),
        if (value is List && value.isNotEmpty)
          Text(value.join(','),style: Constants.getPokemonInfoTextStyle(),)
        else if (value == null)
          Text("not available",style: Constants.getPokemonInfoTextStyle(),)
        else
          Text(value,style: Constants.getPokemonInfoTextStyle(),)
      ],
    );
  }
}
