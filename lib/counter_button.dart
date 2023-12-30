import 'package:flutter/material.dart';

class CounterButton extends StatelessWidget {
  const CounterButton(
      {super.key,
      required this.iconData,
      required this.tooltip,
      required this.onPressed});

  final IconData iconData;
  final String tooltip;
  final void Function() onPressed;

  @override
  Widget build(BuildContext context) {
    return FloatingActionButton(
      shape: const CircleBorder(),
      onPressed: onPressed,
      tooltip: tooltip,
      child: Icon(iconData),
    );
  }
}
