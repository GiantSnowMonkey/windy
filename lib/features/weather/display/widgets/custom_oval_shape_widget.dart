import 'package:flutter/material.dart';
import 'package:windy/core/usecases/consts.dart';

class CustomOvalShapeWidget extends StatelessWidget {
  const CustomOvalShapeWidget({
    Key? key,
    required this.height,
    required this.width,
  }) : super(key: key);

  final double height;
  final double width;

  @override
  Widget build(BuildContext context) {
    return Positioned(
      top: height * -80 / 812,
      child: Hero(
        tag: 'Landing_Page_Animation',
        child: Container(
          height: height * 282 / 812,
          width: width * 434 / 375,
          decoration: BoxDecoration(
            color: bluishBlackColor,
            borderRadius: BorderRadius.all(
              Radius.elliptical(width * 434 / 375, height * 282 / 812),
            ),
          ),
        ),
      ),
    );
  }
}
