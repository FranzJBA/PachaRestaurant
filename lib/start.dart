import 'package:flutter/material.dart';

//import 'login.dart';

class StartScreen extends StatefulWidget {
  @override
  StartScreenState createState() => StartScreenState();
}

class StartScreenState extends State<StartScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(    
      body: Stack(
        fit: StackFit.expand,
        children: <Widget>[
          Container(
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage('assets/bgStart.png',), fit: BoxFit.fill
              )
            ),
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: <Widget>[
              Expanded(
                child: Container(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Text(
                        "PACHA",
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 50.0,
                          fontWeight: FontWeight.bold
                        ),
                      ),
                      FlatButton(
                        color: Colors.orange,
                        textColor: Colors.white,
                        child: Text("EMPECEMOS", style: TextStyle(fontSize: 20.0),),
                        padding: EdgeInsets.all(10.0),
                        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(30.0)),
                        onPressed: (){
                         // Navigator.push(context, MaterialPageRoute(builder: (context) => LoginScreen()));
                        },
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ],
      )
    );
  }
}