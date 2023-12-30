import 'package:flutter/material.dart';
import 'package:flutter_provider_experiment/bottom_container.dart';
import 'package:flutter_provider_experiment/middle_container.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
      ),
      home: Scaffold(
        appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
          title: const Text('Count:'),
      ),
        body: const Center(
          child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
              MiddleContainer(), BottomContainer()
          ],
        ),
      ),
      
      ),
    );
  }
}
