import '../repositories/counter_repo.dart';

class UseCounter {
  final CounterRepository repository;
  UseCounter(this.repository);

  Future<int> getCounterValue() async {
    int value = await repository.getCounterValue();

    return value;
  }

  Future<void> incrementCounter() async {
    int value = await repository.getCounterValue();
    value++;
    repository.setCounterValue(value);
  }

  Future<void> decrementCounter() async {
    int value = await repository.getCounterValue();
    value--;
    repository.setCounterValue(value);
  }
}
