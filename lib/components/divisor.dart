import 'package:alubank/themes/theme_colors.dart';
import 'package:flutter/material.dart';

class Divisor extends StatelessWidget {
  const Divisor({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 1,
      decoration: BoxDecoration(border: Border.all(color: ThemeColors.divisor)),
    );
  }
}
