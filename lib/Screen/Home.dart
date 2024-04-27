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
      Column(
          // mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Container(
              height: MediaQuery.of(context).size.width * 0.06,
            ),
            Container(
              child: Flexible(
                  child: TextField(
                      decoration: InputDecoration(
                        border: OutlineInputBorder(),
                        labelText: "Seach (#Tags)",
                        hintStyle: TextStyle(color: SunyTheme.SunyDarkBlue()),
                      )
                  )
              ),
              width: MediaQuery.of(context).size.width*0.94,
            ),
            Container(
              height: MediaQuery.of(context).size.width * 0.06,
            ),
            Container(
                child: Row(
                    children: [
                      Container(
                        width: MediaQuery.of(context).size.width * 0.03,
                      ),
                      GestureDetector(
                        child: Container(
                          width: MediaQuery.of(context).size.width * 0.45,
                          height: 400,
                          color: SunyTheme.SunyBlue(),
                          child: Text(
                            'Write a petition',
                              style: TextStyle(color: Colors.white),
                          )
                        ),
                        onTap:() { Navigator.push(context,
                          MaterialPageRoute(builder: (context) => Create(),),);}),
                      Container(
                        width: MediaQuery.of(context).size.width * 0.04,
                      ),
                      Container(
                        child: Column(
                          children: [
                          Container(width: MediaQuery.of(context).size.width * 0.45,
                            height: 155,
                            color: SunyTheme.SunyDarkBlue(),
                          ),
                            Container(
                              height: 20
                            ),
                            Container(
                              width: MediaQuery.of(context).size.width * 0.45,
                              height: 225,
                              color: SunyTheme.SunyLightBlue(),
                            ),
                            ]
                      ),
                      ),
                      Container(
                        width: MediaQuery.of(context).size.width * 0.03,
                      )
                    ]
                )
            ),
          ]
      ),

    );
  }
}
