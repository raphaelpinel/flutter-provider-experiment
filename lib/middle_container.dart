import 'package:flutter/material.dart';
import 'package:flutter_provider_experiment/models/count.dart';
import 'package:provider/provider.dart';

class MiddleContainer extends StatelessWidget {
  const MiddleContainer({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const Text(
          'You have pushed the button this many times:',
        ),
        Consumer<CountModel>(builder: (context, count, child) {
          return Text(
            '${count.count}',
            style: Theme.of(context).textTheme.displayLarge,
          );
        }),
        Text(
          'Count:',
          style: Theme.of(context).textTheme.headlineMedium,
        ),
      ],
    );
  }
}
