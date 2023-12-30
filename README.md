# Flutter Provider Experiment

A Flutter project to explore State management with Provider.

## How to use provider

1. Create a Model

example: in `lib/models/count.dart`
```
import 'package:flutter/material.dart';

class CountModel extends ChangeNotifier {
  int _count = 0;
  int get count => _count;
  int get count2 => _count * 2;

  void increment() {
    _count++;
    notifyListeners();
  }

  void decrement() {
    _count--;
    notifyListeners();
  }

  void reset() {
    _count = 0;
    notifyListeners();
  }
}
```

Notice the use of `notifyListeners()` in methods that should update the state.
`ChangeNotifier` seems to be available in Flutter, and doesn't come from Provider.

2. Add this as the top of the app, or where you plan to use the model

```
import 'package:provider/provider.dart';
import 'package:flutter_provider_experiment/models/count.dart';

runApp(ChangeNotifierProvider(
      create: (context) => CountModel(), child: const MyApp()));
```

3. Use this where you want to call methods that update the state:

for example in `/lib/bottom_container.dart`:
```
import 'package:provider/provider.dart';
import 'package:flutter_provider_experiment/models/count.dart';

onPressed: Provider.of<CountModel>(context).increment
```

4. If you want to consume the state, isolate a very small child widget that needs to be rerendered (if possible without children).
`/lib/middle_container.dart`:
```
import 'package:provider/provider.dart';
import 'package:flutter_provider_experiment/models/count.dart';

Consumer<CountModel>(builder: (context, count, child) {
          return Text(
            '${count.count}',
          )
})
```

