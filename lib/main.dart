import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:provider_example/providers/heroes_info.dart';
import 'package:provider_example/providers/villanos_info.dart';
import 'package:provider_example/src/pages/home_page.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  /*@override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => HeroesInfo(),
      child: MaterialApp(
        title: 'Material App',
        initialRoute: 'home',
        routes: {
          'home': (context) => HomePage(),
        },
      ),
    );
  }*/

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(
          create: (context) => HeroesInfo(),
        ),
        ChangeNotifierProvider(
          create: (context) => VillanosInfo(),
        )
      ],
      child: MaterialApp(
        title: 'Material App',
        initialRoute: 'home',
        routes: {
          'home': (context) => HomePage(),
        },
      ),
    );
  }
}
