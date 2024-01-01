import 'package:flutter/cupertino.dart';

class MiniText extends StatelessWidget {
  Color? color;
  final String text;
  double size;
  double heig = 1.5;
  MiniText({
    super.key,
    this.color = const Color(0xFFccc7c5),
    required this.text,
    this.size = 12,
    this.heig = 1.2,
  });

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: TextStyle(
        color: color,
        fontFamily: 'Roboto',
        fontSize: size,
        height: heig,
      ),
    );
  }
}
