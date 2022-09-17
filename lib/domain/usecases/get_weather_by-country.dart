import 'package:tut_app/domain/repository/weather_repository.dart';

class GetWeatherByCountryName {

  final BaseWeatherRepository repository;

  GetWeatherByCountryName(this.repository);


  execute(String cityName)async{
    return await repository.getWeatherByCityName(cityName);
  }

}
