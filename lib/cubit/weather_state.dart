part of 'weather_cubit.dart';

@immutable
abstract class WeatherState{
  const WeatherState();
}

class WeatherLoading extends WeatherState{
  const WeatherLoading();
}

class WeatherLoaded extends WeatherState{
  final Weather weather;

  const WeatherLoaded(this.weather);

  @override
  bool operator == (Object o){
    if(identical(this, o)) return true;

    return o is WeatherLoaded && o.weather == weather;
  }

  @override
  // TODO: implement hashCode
  int get hashCode => weather.hashCode;

}

class WeatherError extends WeatherState{
  final String message;
  const WeatherError(this.message);

  bool operator == (Object o ){
    if (identical(this, o))return true;

    return o is WeatherError && o.message == message;
  }

  @override
  
  int get hashCode => message.hashCode;
}

class WeatherInitial extends WeatherState{

  const WeatherInitial();
}