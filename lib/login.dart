import 'package:flutter/material.dart';

// import 'home.dart';

class LoginScreen extends StatefulWidget {
  @override
  LoginScreenState createState() => LoginScreenState();
}

class LoginScreenState extends State<LoginScreen> {

  String email, pass;
  
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
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text("Iniciar Sesión", 
            style: TextStyle(color: Colors.white, fontSize: 40, fontWeight: FontWeight.bold),),
            SizedBox(height: 30,),
            Container(
              padding: EdgeInsets.all(10),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                color: Colors.white
              ),
              child: Column(
                children: <Widget>[
                  Container(
                    decoration: BoxDecoration(
                      border: Border(bottom: BorderSide(color: Colors.grey[300]))
                    ),
                    child: TextField(
                        // onSaved: (value) => email = value,
                        decoration: InputDecoration(
                        border: InputBorder.none,
                        hintStyle: TextStyle(color: Colors.grey.withOpacity(.8)),
                        hintText: "Nombre de Usuario o Email"
                      ),
                    ),
                  ),                  
                  Container(
                    decoration: BoxDecoration(
                    ),
                    child: TextField(
                        // onSaved: (value) => pass = value,
                        decoration: InputDecoration(
                        border: InputBorder.none,
                        hintStyle: TextStyle(color: Colors.grey.withOpacity(.8)),
                        hintText: "Contraseñaaa",
                      ),
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(height: 40),
            Center(
              child: Container(
                padding: EdgeInsets.all(5),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(50),
                  color: Colors.orange
                ),
                child: 
                FlatButton(
                  color: Colors.orange,
                    textColor: Colors.white,
                    child: Text("INICIAR SESION", style: TextStyle(fontSize: 15.0), textAlign: TextAlign.center,),
                    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(30.0)),
                    onPressed: (){

                      // return Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => HomeScreen()));

                      // if (email. == "franz_tj_@hotmail.com" && pass == "123456") {
                      //   // print(email);
                      //   return Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => LoginScreen()));
                      // } else { 
                      //   return AlertDialog(
                      //     title: Text('Rewind and remember'),
                      //     content: SingleChildScrollView(
                      //       child: ListBody(
                      //         children: <Widget>[
                      //           Text('Nombre de Usuario o Contraseña Incorrectos'),
                      //         ],
                      //       ),
                      //     ),
                      //   );
                      // }
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