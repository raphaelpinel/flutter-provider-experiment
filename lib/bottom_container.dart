import 'package:flutter/material.dart';
import 'package:flutter_provider_experiment/counter_button.dart';
import 'package:flutter_provider_experiment/models/count.dart';
import 'package:provider/provider.dart';

class BottomContainer extends StatelessWidget {
  const BottomContainer({super.key});
  @override
  Widget build(BuildContext context) {
    final counter = context.read<CountModel>();
    // or
    // final counter = Provider.of<CountModel>(context);
    return Padding(
      padding: const EdgeInsets.only(top: 40, bottom: 20),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          CounterButton(
            tooltip: 'Decrement',
            iconData: Icons.exposure_minus_1,
            onPressed: counter.decrement,
          ),
          CounterButton(
            tooltip: 'Increment',
            iconData: Icons.exposure_plus_1,
            onPressed: counter.increment,
          ),
          CounterButton(
            tooltip: 'Reset',
            iconData: Icons.exposure_zero,
            onPressed: counter.reset,
          ),
        ],
      ),
    );
  }
}
