import "package:flutter/cupertino.dart";
import "package:flutter/material.dart";
import "package:fluttercopy/Screen/SignUpPopUp.dart";
import "package:fluttercopy/Theme/SunyTheme.dart";

import "Home.dart";

class LoginPage extends StatelessWidget {
  const LoginPage({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // bool knockKnock = false;
    // bool knockKnockStatus() {
    //   return knockKnock;
    // }
    return Scaffold(
      body:
      Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Container(
              //padding: const EdgeInsets.all(90.0),
              height: MediaQuery.of(context).size.height * 0.1
            ),
            Container(
              child: Text("Sign In", style: TextStyle(fontSize: 50, fontWeight: FontWeight.bold),)
            ),
            Container(
                height: MediaQuery.of(context).size.height * 0.001
            ),
            Container(
                child: Flexible(
                    child: TextField(
                        decoration: InputDecoration(
                          border: OutlineInputBorder(),
                          labelText: "ID",
                          hintStyle: TextStyle(color: SunyTheme.SunyDarkBlue()),
                        )
                    )
                ),
                width: MediaQuery.of(context).size.width*0.9
            ),
            Container(
              child: Flexible(
              child: TextField(
              decoration: InputDecoration(
              border: OutlineInputBorder(),
              labelText: "Password",
                hintStyle: TextStyle(color: SunyTheme.SunyDarkBlue()),
              )
            )
          ),
            width: MediaQuery.of(context).size.width*0.9,
            ),
            Container(),
            ElevatedButton(
              child: Text(
                textAlign: TextAlign.center,

                //controller
                //textInputAction
                'Sign Up',
                  style: TextStyle(color: Colors.white)
              ),
              style: ElevatedButton.styleFrom(
                  backgroundColor: SunyTheme.SunyDarkBlue()),
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
                style: TextStyle(color: Colors.white)
              ),
              style: ElevatedButton.styleFrom(
              backgroundColor: SunyTheme.SunyDarkBlue()),
              onPressed: (){
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => Home(),),
                );
                // knockKnock = true;
              },
            ),
            Container(
                height: MediaQuery.of(context).size.height * 0.1
            ),
          ]
      ),

    );
  }
}
