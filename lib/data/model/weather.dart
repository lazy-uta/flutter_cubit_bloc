
import 'package:flutter/cupertino.dart';
import 'package:meta/meta.dart';


class Weather{
  final String cityName;
  final double temperatureCelsisus;

  Weather({
    @required this.cityName,
    @required this.temperatureCelsisus
  });

  @override
  bool operator == (Object o ){
    if(identical(this, o)) return true;

    return o is Weather &&
    o.cityName == cityName &&
    o.temperatureCelsisus == temperatureCelsisus;

  }

  @override 
  int get hasCode => cityName.hashCode ^ temperatureCelsisus.hashCode;
}