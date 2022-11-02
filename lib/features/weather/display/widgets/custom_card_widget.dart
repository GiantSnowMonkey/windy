import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../../../../core/usecases/consts.dart';

class CustomCardsWidget extends StatelessWidget {
  const CustomCardsWidget(
      {required this.svgAssetName,
      required this.text,
      required this.size,
      super.key});

  final String svgAssetName;
  final String text;
  final Size size;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: size.height / 812 * 56,
      width: size.width / 375 * 168,
      padding: const EdgeInsets.all(16),
      decoration: BoxDecoration(
        color: bluishBlackColor,
        borderRadius: BorderRadius.circular(20),
      ),
      child: Row(
        children: [
          SvgPicture.asset(svgAssetName, height: 24 * size.height / 812),
          const SizedBox(
            width: 8,
          ),
          Text(
            text,
            style: const TextStyle(
              color: Colors.white,
              fontSize: 16,
            ),
          ),
        ],
      ),
    );
  }
}
