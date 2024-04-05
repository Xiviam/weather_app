import 'package:flutter/material.dart';
import 'package:weather_app/repositories/weather_service.dart';

class CurrentWeatheScreen extends StatefulWidget {
  const CurrentWeatheScreen({super.key});

  @override
  State<CurrentWeatheScreen> createState() => _CurrentWeatheScreenState();
}

class _CurrentWeatheScreenState extends State<CurrentWeatheScreen> {
  // Future<WeatherService>? _weather;
  @override
  void initState(){
  WeatherService().fetchWeather();
  super.initState();
}
  Widget build(BuildContext context) {
    return Scaffold();
  }
}