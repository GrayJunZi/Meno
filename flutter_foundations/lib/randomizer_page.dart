import 'dart:math';

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
  int? _generatedNumber;
  final randomGenerator = Random();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Randomizer'),
      ),
      body: Center(
        child: Text(
          _generatedNumber?.toString() ?? 'Generate a Number',
          style: const TextStyle(fontSize: 42),
        ),
      ),
      floatingActionButton: FloatingActionButton.extended(
        onPressed: () {
          setState(() {
            // min = 10, max = 20
            // 10 + 20 + 1 - 10 = 21 -  1 = 20
            _generatedNumber = widget.min +
                randomGenerator.nextInt(widget.max + 1 - widget.min);
          });
        },
        label: const Text('Generate'),
      ),
    );
  }
}
