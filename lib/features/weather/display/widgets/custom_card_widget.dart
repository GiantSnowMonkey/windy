import 'package:flutter/material.dart';

import '../../../../core/usecases/consts.dart';

class CustomCardsWidget extends StatelessWidget {
  const CustomCardsWidget(
      {required this.icon, required this.text, required this.size, super.key});

  final IconData icon;
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
          Icon(
            icon,
            color: Colors.white,
          ),
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
