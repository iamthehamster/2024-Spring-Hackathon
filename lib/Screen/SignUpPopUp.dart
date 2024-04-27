import "package:flutter/material.dart";

class SignUpPopUp extends StatelessWidget {
  const SignUpPopUp({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar:
      AppBar(title: Text(
        'Sign in',
        style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
      ),
      ),
      body:
      Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Container(
              child: Flexible(
                child: TextField(
                  decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  labelText: "ID",
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
                          labelText: "School Email (@StonyBrook.edu)",
                        )
                    )
                ),
                width: MediaQuery.of(context).size.width*0.9,
            ),
            Container(
                child: Flexible(
                    child: TextField(
                        decoration: InputDecoration(
                          border: OutlineInputBorder(),
                          labelText: "Password",
                        )
                    )
                ),
                width: MediaQuery.of(context).size.width*0.9
            ),
            Container(
              child: ElevatedButton(
              child: const Text(
                textAlign: TextAlign.center,
                'Sign Up',
              ),
              onPressed: (){},
            ),
            width: MediaQuery.of(context).size.width*0.9,
            ),
            Container(),
          ]
      ),

    );

  }
}