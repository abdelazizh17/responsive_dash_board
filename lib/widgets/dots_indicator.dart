import 'package:flutter/material.dart';
import 'package:responsive_dash_board/widgets/custom_dots.dart';

class DotsIndicator extends StatelessWidget {
  const DotsIndicator({super.key, required this.currentIndex});
  final int currentIndex;
  @override
  Widget build(BuildContext context) {
    return Row(
      children: List.generate(
        3,
        (index) =>  Padding(
          padding: const EdgeInsets.only(right: 8),
          child: CustomDotsIndicator(isActive: index == currentIndex),
        ),
      ),
    );
  }
}
