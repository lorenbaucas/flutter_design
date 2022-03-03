import 'package:flutter/material.dart';

class Models {
  String name, season;
  int episode;
  String imgAddress;
  Color modelColor;
  Models({
    required this.name,
    required this.season,
    required this.episode,
    required this.imgAddress,
    required this.modelColor,
  });
}

final List<Models> animeModel = [
  Models(
    name: "Jujutsu Kaisen",
    season: "Temporada 1",
    episode: 22,
    imgAddress: "assets/images/jujutsu.png",
    modelColor: Colors.black,
  ),
  Models(
    name: "One Piece",
    season: "Kaido",
    episode: 1011,
    imgAddress: "assets/images/luffy.png",
    modelColor: Colors.blue,
  ),
  Models(
    name: "Naruto",
    season: "Boruto",
    episode: 104,
    imgAddress: "assets/images/boruto.png",
    modelColor: Color(0xffE66863),
  ),
  Models(
    name: "Mahoutsukai",
    season: "Temporada 1",
    episode: 6,
    imgAddress: "assets/images/mahou.png",
    modelColor: Color(0xffD7D8DC),
  ),
  Models(
    name: "Pokemon",
    season: "Alfa",
    episode: 4,
    imgAddress: "assets/images/pokemon.png",
    modelColor: Color(0xff37376B),
  ),
  Models(
    name: "Dragon Ball",
    season: "Super",
    episode: 8,
    imgAddress: "assets/images/goku.png",
    modelColor: Color(0xffE4E3E8),
  ),
  Models(
    name: "Digimon",
    season: "Temporada 1",
    episode: 14,
    imgAddress: "assets/images/digimon.png",
    modelColor: Colors.orange,
  ),
  Models(
    name: "Shingeki no Kyojin",
    season: "Final Season",
    episode: 5,
    imgAddress: "assets/images/eren.png",
    modelColor: Color(0xffDE0106),
  ),
];
