import 'dart:math';

import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';

class Randomizer extends HookWidget {
  final int min, max;
  final randomGenerator = Random();

  Randomizer({
    super.key,
    required this.min,
    required this.max,
  });

  @override
  Widget build(BuildContext context) {
    final generatedNumber = useState<int?>(null);
    return Scaffold(
      appBar: AppBar(
        title: const Text('Randomizer'),
      ),
      body: Center(
        child: Text(
          generatedNumber.value?.toString() ?? 'Generate a Number',
          style: const TextStyle(fontSize: 42),
        ),
      ),
      floatingActionButton: FloatingActionButton.extended(
        onPressed: () {
          // min = 10, max = 20
          // 10 + 20 + 1 - 10 = 21 -  1 = 20
          generatedNumber.value = min + randomGenerator.nextInt(max + 1 - min);
        },
        label: const Text('Generate'),
      ),
    );
  }
}
