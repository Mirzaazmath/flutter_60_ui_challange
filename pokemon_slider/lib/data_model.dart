import 'package:flutter/material.dart';

class PokemonData {
  final String name;
  final String image;
  final String type;
  final Color bgColor;

  PokemonData({
    required this.image,
    required this.name,
    required this.type,
    required this.bgColor,
  });
}

List<PokemonData>pokemonList=[
  PokemonData(image: "assets/balbasur.png", name: "Bulbasaur", type: "Grass Type",bgColor: Colors.green),
  PokemonData(image: "assets/charizard.png", name: "Charizard", type: "Fire Type",bgColor: Colors.orange),
  PokemonData(image: "assets/gengar.png", name: "Gengar", type: "Ghost Type",bgColor: Colors.deepPurple),
  PokemonData(image: "assets/squirtle.png", name: "Squirtle", type: "Water Type",bgColor: Colors.lightBlue),
  PokemonData(image: "assets/picachu.png", name: "Pikachu", type: "Electric Type",bgColor: Colors.amber),
];