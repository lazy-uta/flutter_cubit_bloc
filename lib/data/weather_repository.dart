import 'dart:math';

import 'package:flutter_bloc_cubit/data/data/weather.dart';

abstract class WeatherRepository{
  /// Throw [NetworkException]
  Future<Weather> fetchWeather(String cityName);
}

class FakeWeatherRepository implements WeatherRepository{
  @override
  Future<Weather> fetchWeather(String cityName) {
    // Simulate network delay
    return Future.delayed(
      Duration(seconds: 1),
      (){
        final random = Random();

        // Simulate some network exception 
        if ( random.nextBool()){
          throw NetworkException();
        }

        //Return "fetched" weather
        return Weather(
          cityName: cityName,
          //Teperature between 20 and 35.99
          temperatureCelsisus: 20 + random.nextInt(15) + random.nextDouble(),
        );
      }
    );
  }

}

class NetworkException implements Exception{}