import 'package:clima_weather_app/services/location.dart';
import 'package:clima_weather_app/services/networking.dart';
import 'package:geolocator/geolocator.dart';

const apiKey = 'b390e706a11e93ff2d47b71244536ea5';
const openWeatherMapURL = 'https://api.openweathermap.org/data/2.5/weather';

class Weather {
  static Future<dynamic> getLocationWeather() async {
    Position position;
    position = await Location.getCurrentLocation()
        .timeout(const Duration(seconds: 5), onTimeout: () {
      print(
          'onTimeout() executed for getLocationWeather(), location data not available for device');
      return Position(longitude: 77.1069857, latitude: 28.6695721);
    });
    print(position.longitude);
    var weatherData = await Networking.getWeatherData(
        '$openWeatherMapURL?lat=${position.latitude}&lon=${position.longitude}&appid=$apiKey&units=imperial');
    print(weatherData);
    return weatherData;
  }

  static String getWeatherIcon(int condition) {
    if (condition < 300) {
      return '🌩';
    } else if (condition < 400) {
      return '🌧';
    } else if (condition < 600) {
      return '☔️';
    } else if (condition < 700) {
      return '☃️';
    } else if (condition < 800) {
      return '🌫';
    } else if (condition == 800) {
      return '☀️';
    } else if (condition <= 804) {
      return '☁️';
    } else {
      return '🤷‍';
    }
  }

  static String getMessage(int temp) {
    if (temp > 25) {
      return 'It\'s 🍦 time';
    } else if (temp > 20) {
      return 'Time for shorts and 👕';
    } else if (temp < 10) {
      return 'You\'ll need 🧣 and 🧤';
    } else {
      return 'Bring a 🧥 just in case';
    }
  }
}
