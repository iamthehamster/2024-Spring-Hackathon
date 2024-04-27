import "package:flutter/material.dart";
import "package:fluttercopy/Screen/SignUpPopUp.dart";
import "package:fluttercopy/Theme/SunyTheme.dart";

import "BottomBar/BottomBar.dart";
import "BottomBar/Home.dart";

class LoginPage extends StatelessWidget {
  const LoginPage({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // bool knockKnock = false;
    // bool knockKnockStatus() {
    //   return knockKnock;
    // }
    return Scaffold(
      appBar:
      AppBar(title: Text(
        'Sign in',
        style: TextStyle(fontSize: 50, fontWeight: FontWeight.bold),
      ),
      ),
      body:
      Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            TextField(
                decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  labelText: "ID",
                )),
            TextField(
                decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  labelText: "Password",
                )),
            ElevatedButton(
              child: Text(
                textAlign: TextAlign.center,
                //controller
                //textInputAction
                'Sign Up',
                // style: TextStyle(fontSize: 30, color: Color(SunyTheme.SUNYTheme(1))),
              ),
              onPressed: () {showModalBottomSheet(context: context, builder: (BuildContext context) {
                return SignUpPopUp();
    }
    );
    },
            ),
            ElevatedButton(
              child: const Text(
                  textAlign: TextAlign.center,
                  'Log In (temp. log in anyway)',
              ),
              onPressed: (){
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => Home(),),
                );
                // knockKnock = true;
              },
            ),
          ]
      ),

    );
  }
}