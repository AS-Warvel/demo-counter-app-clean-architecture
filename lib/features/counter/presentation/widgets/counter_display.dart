import 'package:demo_counter_app/features/counter/presentation/providers/counter_provider.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class CounterDisplay extends StatelessWidget {
  const CounterDisplay({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Card(
        color: Theme.of(context).indicatorColor,
        child: SizedBox(
          height: 150,
          width: 300,
          child: Consumer<CounterProvider>(
              builder: (context, provider, child) =>
                  Center(child: Text('${provider.currentValue}'))),
        ),
      ),
    );
  }
}
