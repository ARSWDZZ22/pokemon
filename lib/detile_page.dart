import 'package:flutter/material.dart';
import 'model/pokemon.dart';
import 'widget/pokemon_card_widget.dart';

class DetailPage extends StatefulWidget {
  final Pokemon pokemon;
  const DetailPage({super.key, required this.pokemon});

  @override
  State<DetailPage> createState() => _DetailPageState();
}

class _DetailPageState extends State<DetailPage> {
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
