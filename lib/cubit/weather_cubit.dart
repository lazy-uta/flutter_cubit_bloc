import 'package:bloc/bloc.dart';

part  'weather_state.dart';

class WeatherCubit extends Cubit<WeatherState>{
  WeatherCubit() : super(WeatherInitial());
  
}