import 'package:fakwweatherapp/data/weather_repository.dart';
import 'package:fakwweatherapp/weather_notifier.dart';
import 'package:flutter_riverpod/all.dart';

final weatherRepositoryProvider =
    Provider<WeatherRepository>((ref) => FakeWeatherRepository());

final weatherNotifierProvider =
    StateNotifierProvider<WeatherNotifier, WeatherState>(
        (ref) => WeatherNotifier(ref.watch(weatherRepositoryProvider)));
