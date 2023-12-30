import 'package:flutter/material.dart';
import 'package:flutter_provider_experiment/counter_button.dart';

class BottomContainer extends StatelessWidget {
  const BottomContainer({super.key});
  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.only(top: 40, bottom: 20),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [CounterButton()],
      ),
    );
  }
}
