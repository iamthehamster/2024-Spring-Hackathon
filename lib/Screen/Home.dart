import "package:flutter/material.dart";
import "package:fluttercopy/Screen/Hamburger/HamburgerMenu.dart";
import "package:fluttercopy/Theme/SunyTheme.dart";

import "Hamburger/Create.dart";
import "Hamburger/Petitions.dart";
import "Hamburger/Profile.dart";
import "Hamburger/Settings.dart";

class Home extends StatelessWidget {
  const Home({ Key? key }) : super(key: key);


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar:
      AppBar(
        title: Container(
          child: Image.asset('photos/SUNY_Korea_Logo.png', height: MediaQuery.of(context).size.height*0.06 ,fit: BoxFit.fitHeight)
        ),
        centerTitle: true,
      ),
      drawer: HamburgerMenu(),
      body:
      Row(
          // mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            // TextField(
            //     decoration: InputDecoration(
            //       border: OutlineInputBorder(),
            //       labelText: "ID",
            //     )),
            Container(
              width: 100,
              height: 200,
              color: SunyTheme.SunyBlue(),
                ),
            Container(
              child: Column(
                children: [
                  Container(
                    width: 100,
                    height: 100,
                    color: SunyTheme.SunyDarkBlue(),
                ),
                Container(
                  width: 100,
                  height: 100,
                  color: SunyTheme.SunyLightBlue(),
                ),
              ]
              )
            ),
          ]
      ),

    );
  }
}
