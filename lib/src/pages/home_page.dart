import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:provider_example/providers/heroes_info.dart';
import 'package:provider_example/widgets/floating_action.dart';
import 'package:provider_example/widgets/text_data.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final heroesInfo = Provider.of<HeroesInfo>(context);
    return Container(
      child: Scaffold(
        appBar: AppBar(
          title: Center(
            child: Text(heroesInfo.heroe),
          ),
        ),
        body: Center(
          child: TextData(),
        ),
        floatingActionButton: FloatingAction(),
      ),
    );
  }
}
