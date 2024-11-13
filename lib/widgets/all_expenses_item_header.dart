import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class AllExpensesItemHeader extends StatelessWidget {
  const AllExpensesItemHeader(
      {super.key,
      required this.image,
      required this.imageColor,
      required this.imageBackgroundColor});
  final String image;
  final Color imageBackgroundColor, imageColor;
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Container(
          width: 60,
          height: 60,
          decoration: ShapeDecoration(
            color: imageBackgroundColor,
            shape: const OvalBorder(),
          ),
          child: Center(
            child: SvgPicture.asset(
              image,
              colorFilter: ColorFilter.mode(imageColor, BlendMode.srcIn),
            ),
          ),
        ),
        const Spacer(),
        Transform.rotate(
          angle: -1.5708 * 2,
          child: Icon(
            Icons.arrow_back_ios_new_outlined,
            color: imageColor != Colors.white
                ? const Color(0xff064061)
                : Colors.white,
          ),
        )
      ],
    );
  }
}
