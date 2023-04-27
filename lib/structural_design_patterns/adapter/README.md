# Adapter Design Pattern

The Adapter Design Pattern is a structural pattern that allows objects with incompatible interfaces to collaborate with each other. It acts as a bridge between two incompatible interfaces and allows them to work together.

## Problem

In software development, it is common to have classes that have different interfaces, which may cause problems when trying to use these classes together. For example, a client may need to use a third-party library that provides data in a format that is not compatible with the client's code. In this case, modifying the third-party library code to work with the client's code may not be possible or desirable.

## Solution

The Adapter Design Pattern provides a solution to this problem by creating an adapter object that converts the interface of one object into another interface that the client expects. The adapter object implements the interface of the client and delegates calls to the original object.

The Adapter Design Pattern consists of three main components:

- **Target interface:** This is the interface that the client expects to use. It defines the methods and properties that the client will use to interact with the adapter object.

- **Adapter:** This is the class that adapts the incompatible interface of the adaptee to the target interface. The adapter class implements the target interface and contains an instance of the adaptee class.

- **Adaptee:** This is the class that has the incompatible interface. It contains the functionality that the client needs to use but in a format that is not compatible with the target interface.

## Example

Here is an example of how the Adapter Design Pattern can be used in Dart. Let's say we have an existing `WeatherService` class that provides weather data for a given location:

```dart
class WeatherService {
  Future<Map<String, dynamic>> getWeatherData(String location) async {
    // This would be an API call to get weather data for the given location.
    // For the purpose of this example, we'll just return some dummy data.
    return {
      "location": location,
      "temperature": 20.0,
      "humidity": 50.0,
      "windSpeed": 10.0
    };
  }
}
```

Now, let's say we want to use the weather data in our application using a different interface. We can create a new interface `WeatherData` that defines the properties that we want to use:

```dart
abstract class WeatherData {
  String getLocation();
  double getTemperature();
  double getHumidity();
  double getWindSpeed();
}
```

We can then create an adapter class `WeatherDataAdapter` that adapts the `WeatherService` class to the `WeatherData` interface:

```dart
class WeatherDataAdapter implements WeatherData {
  final WeatherService _weatherService;
  final String _location;
  
  WeatherDataAdapter(this._weatherService, this._location);
  
  String getLocation() {
    return _location;
  }
  
  double getTemperature() {
    return _weatherService.getWeatherData(_location).then((data) => data["temperature"]);
  }
  
  double getHumidity() {
    return _weatherService.getWeatherData(_location).then((data) => data["humidity"]);
  }
  
  double getWindSpeed() {
    return _weatherService.getWeatherData(_location).then((data) => data["windSpeed"]);
  }
}
```

The `WeatherDataAdapter` class adapts the `WeatherService` class to the `WeatherData` interface by implementing the methods that return the weather data that we want to use.

Now, we can use the `WeatherDataAdapter` class to get the weather data for a location:

```dart
void main() async {
  WeatherService weatherService = WeatherService();
  WeatherData weatherData = WeatherDataAdapter(weatherService, "London");
