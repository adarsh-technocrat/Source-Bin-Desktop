import 'package:flutter/material.dart';
import 'package:source_bin/components/text_content.dart';

class RightSection extends StatelessWidget {
  const RightSection({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Container(
        decoration: const BoxDecoration(),
        child: const SingleChildScrollView(child: TextContent()),
      ),
    );
  }
}
