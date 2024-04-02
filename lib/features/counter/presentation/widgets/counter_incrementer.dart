import 'package:demo_counter_app/features/counter/presentation/providers/counter_provider.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class CounterIncrementer extends StatelessWidget {
  const CounterIncrementer({super.key});

  @override
  Widget build(BuildContext context) {
    return Consumer<CounterProvider>(
      builder: (context, provider, child) => ElevatedButton(
          style: ElevatedButton.styleFrom(
            backgroundColor: Colors.red,
          ),
          onPressed: () {
            provider.onClickAddButton();
          },
          child: const Icon(
            Icons.add,
            color: Colors.white,
          )),
    );
  }
}
