import 'package:flutter/material.dart';

class MiddleContainer extends StatelessWidget {
  const MiddleContainer({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const Text(
          'You have pushed the button this many times:',
        ),
        Text(
          'Count:',
          style: Theme.of(context).textTheme.headlineMedium,
        ),
      ],
    );
  }
}
