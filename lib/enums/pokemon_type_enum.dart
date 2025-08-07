import 'package:flutter/material.dart';

enum PokemonTypeEnum {
  normal,
  fire,
  water,
  electric,
  grass,
  ice,
  fighting,
  poison,
  ground,
  flying,
  psychic,
  bug,
  rock,
  ghost,
  dragon,
  dark,
  steel,
  fairy,
  unknown;

  static final Map<String, PokemonTypeEnum> _mapping = {
    'normal': PokemonTypeEnum.normal,
    'fire': PokemonTypeEnum.fire,
    'water': PokemonTypeEnum.water,
    'electric': PokemonTypeEnum.electric,
    'grass': PokemonTypeEnum.grass,
    'ice': PokemonTypeEnum.ice,
    'fighting': PokemonTypeEnum.fighting,
    'poison': PokemonTypeEnum.poison,
    'ground': PokemonTypeEnum.ground,
    'flying': PokemonTypeEnum.flying,
    'psychic': PokemonTypeEnum.psychic,
    'bug': PokemonTypeEnum.bug,
    'rock': PokemonTypeEnum.rock,
    'ghost': PokemonTypeEnum.ghost,
    'dragon': PokemonTypeEnum.dragon,
    'dark': PokemonTypeEnum.dark,
    'steel': PokemonTypeEnum.steel,
    'fairy': PokemonTypeEnum.fairy,
  };



  static PokemonTypeEnum fromString(String? input) {
    final key = input?.toLowerCase().trim();
    return _mapping[key] ?? PokemonTypeEnum.unknown;
  }

  Color get color {
    switch (this) {
      case PokemonTypeEnum.normal:
        return Colors.brown[200]!;
      case PokemonTypeEnum.fire:
        return Colors.redAccent;
      case PokemonTypeEnum.water:
        return Colors.blueAccent;
      case PokemonTypeEnum.electric:
        return Colors.amber;
      case PokemonTypeEnum.grass:
        return Colors.green;
      case PokemonTypeEnum.ice:
        return Colors.cyanAccent;
      case PokemonTypeEnum.fighting:
        return Colors.orange;
      case PokemonTypeEnum.poison:
        return Colors.deepPurpleAccent;
      case PokemonTypeEnum.ground:
        return Colors.brown;
      case PokemonTypeEnum.flying:
        return Colors.lightBlueAccent;
      case PokemonTypeEnum.psychic:
        return Colors.pinkAccent;
      case PokemonTypeEnum.bug:
        return Colors.lightGreen;
      case PokemonTypeEnum.rock:
        return Colors.grey;
      case PokemonTypeEnum.ghost:
        return Colors.indigo;
      case PokemonTypeEnum.dragon:
        return Colors.indigoAccent;
      case PokemonTypeEnum.dark:
        return Colors.black54;
      case PokemonTypeEnum.steel:
        return Colors.blueGrey;
      case PokemonTypeEnum.fairy:
        return Colors.pink;
      case PokemonTypeEnum.unknown:
        return Colors.grey.shade300;
    }
  }
}
