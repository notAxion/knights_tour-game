import 'package:flutter/material.dart';

class PlayGame extends StatefulWidget {
  const PlayGame({super.key});

  @override
  State<PlayGame> createState() => _PlayGameState();
}

class _PlayGameState extends State<PlayGame> {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text(
        "THE BOARD",
        textScaleFactor: 4.0,
      ),
    );
  }
}
