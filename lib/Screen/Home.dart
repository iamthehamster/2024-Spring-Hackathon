import "package:flutter/material.dart";

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
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Container(

                ),
            Container(
              child: Column(
                children: [
                  Container(

                ),
                Container(

                ),
              ]
              )
            ),
          ]
      ),

    );
  }
}