// import '../entities/counter.dart';

abstract class CounterRepository {
  Future<int> getCounterValue();
  Future<void> setCounterValue(int value);
}
