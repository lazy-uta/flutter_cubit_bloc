import 'package:flutter/material.dart';
import 'package:flutter_bloc_cubit/data/data/weather.dart';

class WeatherSearchPage extends StatefulWidget {
  @override
  _WeatherSearchPageState createState() => _WeatherSearchPageState();
}

class _WeatherSearchPageState extends State<WeatherSearchPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Weather Search"),
      ),
      body: Container(
        padding: EdgeInsets.symmetric(vertical: 16),
        alignment: Alignment.center,

        // TODO: Implement with cubit
        child: buildInitialInput(),
      ),
    );
  } 

  Widget buildInitialInput(){
    return Center(
      child: CityInputField(),
    );
  }

  Widget buildloading(){
    return Center(
      child: CircularProgressIndicator(),
    );
  }

  Column buildColumnWithData ( Weather weather){
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        Text(
          weather.cityName,
          style : TextStyle(
            fontSize : 40,
            fontWeight : FontWeight.w700
          ),
        ),
        Text(
          //display the temperature with 1 decimal place
          "${weather.temperatureCelsisus.toStringAsFixed(1)} ^C",
          style: TextStyle(fontSize: 80),
        ),
        CityInputField()
      ],
    );
  }
}

class CityInputField extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Padding (
      padding: const EdgeInsets.symmetric(horizontal : 50),
      child: TextField(
        onSubmitted: (value) => submitCityName(context,value),
        
      ),
    );

  }
    
  }

  void submitCityName ( BuildContext context, String cityName){
    //TODO: Get Weather for the City 
  }