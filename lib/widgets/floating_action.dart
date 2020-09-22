import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:provider_example/providers/heroes_info.dart';
import 'package:provider_example/providers/villanos_info.dart';

class FloatingAction extends StatelessWidget {
  const FloatingAction({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final heroesInfo = Provider.of<HeroesInfo>(context);
    final villanosInfo = Provider.of<VillanosInfo>(context);
    return Column(
      mainAxisAlignment: MainAxisAlignment.end,
      children: [
        FloatingActionButton(
          child: Icon(
            Icons.person_add,
          ),
          backgroundColor: Colors.red,
          onPressed: () {
            heroesInfo.heroe = "IronMan";
            villanosInfo.villano = "El Mandarín";
          },
        ),
        SizedBox(
          height: 10,
        ),
        FloatingActionButton(
          child: Icon(
            Icons.person,
          ),
          backgroundColor: Colors.blue,
          onPressed: () {
            heroesInfo.heroe = "Capitán América";
            villanosInfo.villano = "Red Skull";
          },
        ),
      ],
    );
  }
}
