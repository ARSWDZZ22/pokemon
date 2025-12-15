import 'package:flutter/material.dart';
import 'package:logger/logger.dart';
import '../model/pokemon.dart';

class PokemonCardWidget extends StatelessWidget {
  final Pokemon pokemon;
  final Logger _logger = Logger();

  const PokemonCardWidget({super.key, required this.pokemon});

  @override
  Widget build(BuildContext context) {
    _logger.d('Building card for ${pokemon.name}');
    return Card(
      child: ListTile(
        leading: Image.network(pokemon.imageUrl),
        title: Text(pokemon.name),
        subtitle: Text(pokemon.type),
      ),
    );
  }
}
