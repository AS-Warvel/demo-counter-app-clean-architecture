import 'package:demo_counter_app/features/counter/business/usecases/use_counter.dart';
import 'package:demo_counter_app/features/counter/data/repositories/counter_repo_impl.dart';
import 'package:flutter/material.dart';

class CounterProvider extends ChangeNotifier {
  int? currentValue;
  CounterProvider() {
    load();
  }

  Future<void> load() async {
    CounterRepoImpl repository = CounterRepoImpl();
    currentValue = await UseCounter(repository).getCounterValue();
    notifyListeners();
  }

  Future<void> onClickAddButton() async {
    CounterRepoImpl repository = CounterRepoImpl();
    UseCounter counterUser = UseCounter(repository);
    await counterUser.incrementCounter();
    currentValue = await counterUser.getCounterValue();
    notifyListeners();
  }

  Future<void> onClickMinusButton() async {
    CounterRepoImpl repository = CounterRepoImpl();
    UseCounter counterUser = UseCounter(repository);
    await counterUser.decrementCounter();
    currentValue = await counterUser.getCounterValue();
    notifyListeners();
  }
}
