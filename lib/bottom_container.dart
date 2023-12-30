import 'package:flutter/material.dart';
import 'package:flutter_provider_experiment/counter_button.dart';
import 'package:flutter_provider_experiment/models/count.dart';
import 'package:provider/provider.dart';

class BottomContainer extends StatelessWidget {
  const BottomContainer({super.key});
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 40, bottom: 20),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          CounterButton(
            tooltip: 'Decrement',
            iconData: Icons.exposure_minus_1,
            onPressed: Provider.of<CountModel>(context).decrement,
          ),
          CounterButton(
            tooltip: 'Increment',
            iconData: Icons.exposure_plus_1,
            onPressed: Provider.of<CountModel>(context).increment,
          ),
          CounterButton(
            tooltip: 'Reset',
            iconData: Icons.exposure_zero,
            onPressed: Provider.of<CountModel>(context).reset,
          ),
        ],
      ),
    );
  }
}
