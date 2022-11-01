import 'package:flutter/material.dart';

import '../pages/weather_info_page.dart';

class SkeletonWidget extends StatelessWidget {
  const SkeletonWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: const WeatherInfoPage(),
    );
  }
}
