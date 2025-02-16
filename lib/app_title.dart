import 'package:flutter/material.dart';

import 'package:pokedex/constants.dart';
import 'package:pokedex/ui_helper.dart';

class AppTitle extends StatefulWidget {
  const AppTitle({super.key});

  @override
  State<AppTitle> createState() => _AppTitleState();
}

class _AppTitleState extends State<AppTitle> {
  String PokeballimageUrl = "images/pokeball.png";
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: UiHelper.getAppTitleWidgetHeight(),
      
      child: Stack(
        children: [
          Padding(
            padding:  UiHelper.getDefaultPadding(),
            child: Align(
              alignment: Alignment.centerLeft,
              child: Text(Constants.title, style: Constants.getTitleTextStyle()),
            ),
          ),
          Align(
            alignment: Alignment.centerRight,
            child: Image.asset(
              PokeballimageUrl,
              width: UiHelper.getImageWidth(),
              
              fit: BoxFit.fitWidth,
            ),
          ),
        ],
      ),
    );
  }
}
