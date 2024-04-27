import "package:flutter/material.dart";

import "../Home.dart";
import "Create.dart";
import "Petitions.dart";
import "Profile.dart";
import "Settings.dart";

class HamburgerMenu extends StatefulWidget {
  @override
  _HamburgerMenu createState() {
    return _HamburgerMenu();
  }
}

class _HamburgerMenu extends State<HamburgerMenu> {

  @override
  Widget build(BuildContext context) {
    return Drawer(
          child: ListView(
            //paddingL EdgeInsets.zero,
              children: [
                //accountName: Text();
                //accountEmail: Text();
                ListTile(
                    title: Text('Home'),
                    onTap: (){
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => Home(),),);}),
                ListTile(
                    title: Text('Create'),
                    onTap: (){
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => Create(),),);}),
                ListTile(
                    title: Text('Profile'),
                    onTap: (){
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => Profile(),),);}),
                ListTile(
                    title: Text('Petitions'),
                    onTap: (){
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => Petitions(),),);}),
                ListTile(
                    title: Text('Settings'),
                    onTap: (){
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => Settings(),),);}),
              ]
          )
    );
  }
}

