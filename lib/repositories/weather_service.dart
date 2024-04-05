import 'package:dio/dio.dart';
import 'package:weather_app/repositories/weather_model.dart';

class WeatherService{
  final Dio _dio = Dio();
  final api_key = 'a985e219b674b478fed7b640402afbf5';


  Future<WeatherResponce> fetchWeather() async {
    try{
      final response = await _dio.get('https://api.openweathermap.org/data/2.5/weather', queryParameters: {
        'lat' : 54.32,
        'lan': 48.30,
        'units': 'metric',
        'lang': 'ru',
        'appid': api_key,
      });
      final _weather = WeatherResponce.fromJson(response.data);
      print(_weather);
      return _weather;
    }
    catch (error) {
      throw Exception("Failed to load data: $error");
    }
  }
}