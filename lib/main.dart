import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'features/weather/display/pages/landing_page.dart';
import 'features/weather/display/provider/is_loading_provider.dart';
import 'features/weather/display/provider/weather_info_provider.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(
          create: (context) => WeatherInfoProvider(),
        ),
        ChangeNotifierProvider(
          create: (context) => IsLoadingProvider(),
        ),
      ],
      child: const MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Windy',
        home: LandingPage(),
      ),
    );
  }
}
