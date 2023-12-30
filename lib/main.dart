import 'package:flutter/material.dart';
import 'package:flutter_provider_experiment/bottom_container.dart';
import 'package:flutter_provider_experiment/middle_container.dart';
import 'package:flutter_provider_experiment/models/count.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(ChangeNotifierProvider(
      create: (context) => CountModel(), child: const MyApp()));
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
          title: Consumer<CountModel>(
            builder: (context, someName, child) {
              return Text('Count x 2: ${someName.count2}');
            },
          ),
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
