import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:windy/core/usecases/consts.dart';
import '../provider/weather_info_provider.dart';
import '../widgets/custom_oval_shape_widget.dart';
import '../widgets/widgets.dart';

class LandingPage extends StatelessWidget {
  const LandingPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    return Scaffold(
      body: SizedBox(
        height: height,
        width: width,
        child: Stack(
          alignment: Alignment.center,
          children: [
            CustomOvalShapeWidget(height: height, width: width),
            Padding(
              padding: const EdgeInsets.all(50.0),
              child: Text(
                'Let\'s See\nThe Weather\nAround You',
                style: TextStyle(
                  color: bluishBlackColor,
                  fontWeight: FontWeight.w700,
                  fontSize: 60,
                ),
              ),
            ),
            Positioned(
              bottom: 80,
              child: CustomElevatedButtonWidget(
                buttonColor: bluishBlackColor,
                textColor: Colors.white,
                callback: () {
                  Provider.of<WeatherInfoProvider>(context, listen: false)
                      .failureOrInfo(context);
                  Navigator.of(context).push(
                    PageRouteBuilder(
                      transitionDuration: const Duration(milliseconds: 500),
                      pageBuilder: (context, animation, secondaryAnimation) =>
                          const SkeletonWidget(),
                    ),
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
