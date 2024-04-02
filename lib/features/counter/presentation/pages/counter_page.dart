import 'package:demo_counter_app/features/counter/presentation/providers/counter_provider.dart';
import 'package:demo_counter_app/features/counter/presentation/widgets/counter_display.dart';
import 'package:demo_counter_app/features/counter/presentation/widgets/counter_incrementer.dart';
import 'package:demo_counter_app/features/counter/presentation/widgets/counter_decrementer.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class CounterPage extends StatelessWidget {
  const CounterPage({super.key});

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => CounterProvider(),
      child: Scaffold(
        backgroundColor: Theme.of(context).scaffoldBackgroundColor,
        appBar: AppBar(
          backgroundColor: Theme.of(context).primaryColorLight,
          title: const Text('Counter'),
        ),
        body: const Stack(children: [
          CounterDisplay(),
          Align(
              alignment: Alignment.bottomRight,
              child: Padding(
                padding: EdgeInsets.all(16.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    CounterDecrementer(),
                    SizedBox(
                      width: 20,
                    ),
                    CounterIncrementer(),
                  ],
                ),
              )),
        ]),
      ),
    );
  }
}
