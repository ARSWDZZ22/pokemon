import 'package:flutter/material.dart';
import 'model/pokemon.dart';

class DetilePage extends StatefulWidget {
  final Pokemon pokemon;
  const DetilePage({super.key, required this.pokemon});

  @override
  State<DetilePage> createState() => _DetilePageState();
}

class _DetilePageState extends State<DetilePage> {
  @override
  Widget build(BuildContext context) {
    final pokemon = widget.pokemon;

    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        leading: IconButton(
          icon: Icon(Icons.arrow_back_ios, color: Color(0xFF232447)),
          onPressed: () => Navigator.of(context).pop(),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(18.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            SizedBox(height: 20),
            Image.network(pokemon.imageUrl, height: 200, width: 200),
            SizedBox(height: 20),
            Text(
              pokemon.name,
              style: TextStyle(
                fontSize: 32,
                fontWeight: FontWeight.bold,
                color: Color(0xFF232447),
              ),
            ),
            SizedBox(height: 10),
            Text(
              'Type: ${pokemon.type}',
              style: TextStyle(fontSize: 20, color: Colors.grey[600]),
            ),
            SizedBox(height: 10),
            Text(
              'ID: ${pokemon.id}',
              style: TextStyle(fontSize: 18, color: Colors.grey[600]),
            ),
          ],
        ),
      ),
    );
  }
}
