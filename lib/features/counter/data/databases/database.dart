import 'package:demo_counter_app/features/counter/data/models/counter_model.dart';
import 'package:shared_preferences/shared_preferences.dart';

class CounterData {
  final SharedPreferences sharedPreferences;
  const CounterData({required this.sharedPreferences});
  CounterModel getCounter() {
    return CounterModel(value: sharedPreferences.getInt('value') ?? 0);
  }

  setCounter(CounterModel counter) {
    sharedPreferences.setInt('value', counter.value);
  }
}
