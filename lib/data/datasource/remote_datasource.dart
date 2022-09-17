import 'package:dio/dio.dart';
import 'package:tut_app/core/utils/constant.dart';
import 'package:tut_app/data/models/weather_model.dart';
import 'dart:convert';

abstract class BaseRemoteDataSource {
  Future<WeatherModel?> getWeatherMyCityName(String countryName);
}

class RemoteDataSource implements BaseRemoteDataSource {
  @override
  Future<WeatherModel?> getWeatherMyCityName(String countryName) async {
    try {
      var response = await Dio().get(
          '${AppConstant.baseUrl}/weather?q=$countryName&= ${AppConstant.appKey}');
      print(response);
      return WeatherModel.fromJson(response.data);
    } catch (e) {
      print(e);
      return null;
    }
  }
}
