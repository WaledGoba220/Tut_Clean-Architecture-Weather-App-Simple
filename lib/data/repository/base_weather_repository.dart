import 'package:tut_app/data/datasource/remote_datasource.dart';
import 'package:tut_app/domain/entities/weather.dart';
import 'package:tut_app/domain/repository/weather_repository.dart';

class WeatherRepository implements BaseWeatherRepository {

  final BaseRemoteDataSource baseRemoteDataSource;

  WeatherRepository(this.baseRemoteDataSource);

  @override
  Future<Weather> getWeatherByCityName(String countryName) async {
    return (await baseRemoteDataSource.getWeatherMyCityName(countryName))!;
  }
}
