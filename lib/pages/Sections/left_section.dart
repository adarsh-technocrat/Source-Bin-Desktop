import 'package:flutter/material.dart';
import 'package:source_bin/constants/colors.dart';

class LeftSection extends StatelessWidget {
  const LeftSection({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 200,
      child: Container(
        decoration: const BoxDecoration(color: ConstColors.kLeftSideColor),
        child: Column(
          children: [],
        ),
      ),
    );
  }
}
