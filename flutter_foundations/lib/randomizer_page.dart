import 'package:flutter/material.dart';

class Randomizer extends StatefulWidget {
  final int min, max;

  const Randomizer({
    super.key,
    required this.min,
    required this.max,
  });

  @override
  State<Randomizer> createState() => _RandomizerState();
}

class _RandomizerState extends State<Randomizer> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Randomizer'),
      ),
    );
  }
}
