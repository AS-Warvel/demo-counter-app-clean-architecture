import 'package:demo_counter_app/features/counter/presentation/providers/counter_provider.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class CounterDecrementer extends StatelessWidget {
  const CounterDecrementer({super.key});

  @override
  Widget build(BuildContext context) {
    return Consumer<CounterProvider>(
      builder: (context, provider, child) => ElevatedButton(
          style: ElevatedButton.styleFrom(
            backgroundColor: Colors.blue,
          ),
          onPressed: () {
            provider.onClickMinusButton();
          },
          child: const Icon(
            Icons.remove,
            color: Colors.white,
          )),
    );
  }
}
