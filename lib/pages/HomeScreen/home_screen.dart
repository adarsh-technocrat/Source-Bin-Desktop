import 'package:bitsdojo_window/bitsdojo_window.dart';
import 'package:flutter/material.dart';
import 'package:source_bin/constants/colors.dart';
import 'package:source_bin/pages/Sections/right_section.dart';
import 'package:source_bin/widgets/windows_button.dart';

import '../Sections/left_section.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        elevation: 0,
        toolbarHeight: 32,
        backgroundColor: Colors.transparent,
        actions: [
          const Padding(
            padding: EdgeInsets.only(left: 10, top: 8),
            child: Text(
              "Source Bin",
              style: TextStyle(color: Colors.white, fontSize: 12),
            ),
          ),
          Expanded(child: MoveWindow()),
          const WindowButtons()
        ],
      ),
      body: SizedBox(
        child: Row(
          children: const [
            LeftSection(),
            RightSection(),
          ],
        ),
      ),
      floatingActionButton: TextButton(
          style: TextButton.styleFrom(
              backgroundColor: ConstColors.kLeftSideColor,
              padding: const EdgeInsets.only(
                  left: 50, right: 50, top: 20, bottom: 20)),
          onPressed: () {},
          child: const Text(
            "Save",
            style: TextStyle(fontSize: 20, color: Colors.white),
          )),
    );
  }
}
