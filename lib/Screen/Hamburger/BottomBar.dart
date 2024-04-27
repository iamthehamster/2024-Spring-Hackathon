import "package:flutter/material.dart";

import "../../main.dart";

class BottomBar extends StatefulWidget {
  State<BottomBar> createState() => _BottomBarState();
}
class _BottomBarState extends State<BottomBar> {

  int selectedIndex = 0;
  @override
    Widget build(BuildContext context) {
      return Scaffold(
        body: const Navigator(),
      );
  }
}