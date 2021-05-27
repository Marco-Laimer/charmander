import 'package:charmander/main.dart';
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
        //para deixar o container ocupando o maximo da tela faça:
        width: MediaQuery.of(context).size.width,
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
            Text(
              _charmander.description,
              textAlign: TextAlign.justify,
              style: TextStyle(
                fontSize: 12,
              ),
            ),
            SizedBox(
              height: 15,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Image.asset("assets/images/bola_azul.png"),
                SizedBox(
                  width: 20,
                ),
                Image.asset("assets/images/bola_vermelha.png")
              ],
            ),
          ],
        ),
      ),
    );
  }
}
