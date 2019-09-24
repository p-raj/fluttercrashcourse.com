import 'package:flutter/material.dart';
import 'package:fluttercrashcourse/models/location.dart';
import './style.dart';
import 'screens/locations/locations.dart';
import 'screens/location_detail/location_detail.dart';

const LocationsRoute = '/';
const LocationDetailRoute = '/location_details';

class App extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      onGenerateRoute: _routes(),
      theme: _theme()
    );
  }

  RouteFactory _routes() {
    return (settings) {
      final Map<String, dynamic> argumentas = settings.arguments;
      Widget screen;
      switch(settings.name) {
        case LocationsRoute:
          screen = Locations();
          break;
        case LocationDetailRoute:
          screen = LocationDetail(
            argumentas['id']
          );
      }
      return MaterialPageRoute(builder: (BuildContext context) => screen);
    };
  }

  ThemeData _theme() {
    return ThemeData(
        appBarTheme: AppBarTheme(
          textTheme: TextTheme(
            title: AppBarTextStyle
          )
        ),
        textTheme: TextTheme(
          title: TitleTextStyle,
          body1: Body1TextStyle,
        )
      );
  }
}