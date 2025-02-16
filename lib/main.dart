import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'package:pokedex/homepage.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(412, 832),
      builder: (context, child) => MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'pokedex ',
        theme: ThemeData.dark(
          
          useMaterial3: true,
         
        ),
        home: const HomePage(),
      ),
    );
  }
}

