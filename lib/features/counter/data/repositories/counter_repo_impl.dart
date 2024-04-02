import 'package:demo_counter_app/features/counter/business/repositories/counter_repo.dart';
import 'package:demo_counter_app/features/counter/data/databases/database.dart';
import 'package:demo_counter_app/features/counter/data/models/counter_model.dart';
import 'package:shared_preferences/shared_preferences.dart';

class CounterRepoImpl implements CounterRepository {
  @override
  Future<int> getCounterValue() async {
    final prefs = await SharedPreferences.getInstance();

    CounterModel model = CounterData(sharedPreferences: prefs).getCounter();
    return model.value;
  }

  @override
  Future<void> setCounterValue(int value) async {
    CounterModel counter = CounterModel(value: value);
    CounterData(
      sharedPreferences: await SharedPreferences.getInstance(),
    ).setCounter(counter);
  }
}
