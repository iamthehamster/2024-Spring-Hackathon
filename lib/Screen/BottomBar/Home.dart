import "package:flutter/material.dart";
import "package:fluttercopy/Theme/SunyTheme.dart";

class Home extends StatelessWidget {
  const Home({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar:
      AppBar(
        title: Container(
          child: Image.asset('photos/SUNY_Korea_Logo.png')
          
        )
      ),
      body:
      Row(
          // mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
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