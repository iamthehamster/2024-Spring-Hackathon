import "package:flutter/material.dart";

import "../../Theme/SunyTheme.dart";
import "../Home.dart";

class Settings extends StatelessWidget {
  const Settings({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar:
      AppBar(title: Text(
        'Settings',
        style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
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
                  labelText: "School Email(@stonybrook.edu)",
                )),
            TextField(
                decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  labelText: "Password",
                )),
            ElevatedButton(
              child: const Text(
                textAlign: TextAlign.center,
                style: TextStyle(color: Colors.white),
                'Save',
              ),
              style: ElevatedButton.styleFrom(
                  backgroundColor: SunyTheme.SunyDarkBlue()),              onPressed: (){Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => Home()),); },
            )
          ]
      ),

    );
  }
}