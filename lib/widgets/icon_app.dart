import 'package:flutter/widgets.dart';
import 'package:sepedaa/utils/dimension.dart';

class IconApp extends StatelessWidget {
  final IconData icon;
  final Color backgroundColor;
  final Color iconColor;
  final double size;

  IconApp(
      {super.key,
      required this.icon,
      this.backgroundColor = const Color(0xFFfcf4e4),
      this.iconColor = const Color(0xFF756d54),
      this.size = 40});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: size,
      height: size,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(size / 2),
          color: backgroundColor),
      child: Icon(
        icon,
        color: iconColor,
        size: Dimension.iconSize16,
      ),
    );
  }
}
