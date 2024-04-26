import "package:flutter/material.dart";

import "../../main.dart";

class BottomBar extends StatefulWidget {
  @override
  _MyBottomBar createState() => _MyBottomBar();
}

class _MyBottomBar extends State<_MyBottomBar> {
  int selectedPage = 0;


  @override
    Widget build(BuildContext context) {
      return Scaffold(
        bottomNavigationBar: BottomNavigationBar(
          onTap: (int index) {
            switch (index) {
              case 0:
                Navigator.pushNamed(context, Home());


            }
          }
        ),
      final List<Widget> _widgetOptions = <Widget>[Home(), Create(), Profile(), Petitions(), Settings()];
      void _onItemTapped(int index) {
        setState(() {
          _selectedIndex = index;
        });
        }
      );
  }
}