import 'package:charmander/models/pokemon.dart';
import 'package:charmander/style.dart';
import 'package:flutter/material.dart';

class Home extends StatelessWidget {
  Pokemon _charmander = Pokemon(
    name: "Charmander",
    photo: "assets/images/charmander.png",
    description:
        "tem preferência por coisas quentes. Quando chove, dis-se que o vapor jorra da ponta da cauda",
    type: "Fogo",
    ability: "Chama",
    height: 0.6,
    weight: 8.5,
    weaknesses: ["Água", "Terra", "Rocha"],
  );
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(_charmander.name),
        backgroundColor: orangeTheme,
        centerTitle: true,
      ),
      body: Container(
        //para deixar tudo simetrico use:
        margin: EdgeInsets.symmetric(
          horizontal: 20,
          vertical: 5,
        ),
        child: Column(
          children: [
            Image.asset(
              _charmander.photo,
              width: 100,
            ),
          ],
        ),
      ),
    );
  }
}
