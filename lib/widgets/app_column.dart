import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:sepedaa/utils/colors.dart';
import 'package:sepedaa/utils/dimension.dart';
import 'package:sepedaa/widgets/big_text.dart';
import 'package:sepedaa/widgets/icon_text.dart';
import 'package:sepedaa/widgets/mini_text.dart';

class AppColumn extends StatelessWidget {
  final String text;
  const AppColumn({super.key, required this.text});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        BigText(
          text: text,
          size: Dimension.fontSize26,
        ),
        SizedBox(height: Dimension.height10),
        Row(
          children: [
            Wrap(
              children: List.generate(
                5,
                (index) => Icon(
                  Icons.star,
                  color: AppColors.starColor,
                  size: 15,
                ),
              ),
            ),
            SizedBox(
              width: 10,
            ),
            MiniText(text: "4.5"),
            SizedBox(
              width: 10,
            ),
            MiniText(text: "200"),
            SizedBox(
              width: 10,
            ),
            MiniText(text: "Reviews"),
          ],
        ),
        SizedBox(height: Dimension.height20),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            IconAndText(
              icon: Icons.circle_sharp,
              text: "Normal",
              iconColor: AppColors.iconColor1,
            ),
            IconAndText(
              icon: Icons.location_on,
              text: "3.4km",
              iconColor: AppColors.mainCo,
            ),
            IconAndText(
              icon: Icons.access_time_rounded,
              text: "1h",
              iconColor: AppColors.iconColor2,
            ),
          ],
        ),
      ],
    );
  }
}
