import 'package:flutter/material.dart';

import 'login.dart';

class StartScreen extends StatefulWidget {
  @override
  StartScreenState createState() => StartScreenState();
}

class StartScreenState extends State<StartScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(    
      body: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage('assets/bgStart.png',), fit: BoxFit.fill
          )
        ),
        padding: EdgeInsets.all(30),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text("PACHA", 
            style: TextStyle(color: Colors.white, fontSize: 50, fontWeight: FontWeight.bold), textAlign: TextAlign.center,),
            SizedBox(height: 50,),
            Center(
              child: Container(
                padding: EdgeInsets.all(5),
                width: 160,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(50),
                  color: Colors.orange
                ),
                child: 
                FlatButton(
                  color: Colors.orange,
                    textColor: Colors.white,
                    child: Text("EMPECEMOS", style: TextStyle(fontSize: 15.0), textAlign: TextAlign.center,),
                    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(30.0)),
                    onPressed: (){
                    Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => LoginScreen()));
                    },
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}