import 'dart:math';

import 'package:flutter/material.dart';
import 'package:flutter_foundations/main.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class RandomizerPage extends ConsumerWidget {
  RandomizerPage({
    super.key,
  });

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final randomizer = ref.watch(randomizerProvider);

    return Scaffold(
      appBar: AppBar(
        title: const Text('Randomizer'),
      ),
      body: Center(
        child: Consumer(
          builder: (context, ref, child) {
            return Text(
              randomizer.generatedNumber?.toString() ?? 'Generate a number',
              style: const TextStyle(fontSize: 42),
            );
          },
        ),
      ),
      floatingActionButton: FloatingActionButton.extended(
        onPressed: () {
          // min = 10, max = 20
          // 10 + 20 + 1 - 10 = 21 -  1 = 20
          ref.read(randomizerProvider).generateRandomNumber();

          },
        label: const Text('Generate'),
      ),
    );
  }
}
