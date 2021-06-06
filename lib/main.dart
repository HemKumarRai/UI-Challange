import 'package:flutter/material.dart';
import 'package:mi_card/UI_OFFICE/1st_page.dart';
import 'package:mi_card/family.dart';
import 'package:mi_card/home.dart';

void main() => runApp(UI());

//class MyApp extends StatelessWidget {
//  @override
//  Widget build(BuildContext context) {
//    return MaterialApp(
//      home: Scaffold(
//        backgroundColor: Colors.teal,
//        body: SafeArea(
//          child: Column(
//            mainAxisAlignment: MainAxisAlignment.center,
//            children: <Widget>[
//              CircleAvatar(
//                radius: 75.0,
//                backgroundImage: AssetImage("images/kan.jpg"),
//              ),
//              Text(
//                "Hem Kumar Rai",
//                style: TextStyle(
//                    fontSize: 45.0,
//                    fontWeight: FontWeight.bold,
//                    fontFamily: 'Head',
//                    color: Colors.white),
//              ),
//              Text(
//                "Student",
//                style: TextStyle(
//                    fontSize: 20.0,
//                    fontWeight: FontWeight.bold,
//                    fontFamily: 'Foot',
//                    color: Colors.white),
//              ),
//              SizedBox(
//                height: 20,
//                width: 250.0,
//                child: Divider(
//                  thickness: 2.0,
//                  color: Colors.teal.shade100,
//                ),
//              ),
//              Card(
//                margin: EdgeInsets.symmetric(horizontal: 15.0, vertical: 5.0),
//                color: Colors.white,
//                child: Padding(
//                    padding: const EdgeInsets.all(8.0),
//                    child: ListTile(
//                      leading: Icon(
//                        Icons.phone,
//                        size: 24,
//                        color: Colors.teal,
//                      ),
//                      title: Text(
//                        "+977-9863543459",
//                      ),
//                    )),
//              ),
//              Card(
//                elevation: 10.0,
//                margin: EdgeInsets.symmetric(horizontal: 15.0, vertical: 5.0),
//                color: Colors.white,
//                child: Padding(
//                    padding: const EdgeInsets.all(8.0),
//                    child: ListTile(
//                      leading: Icon(
//                        Icons.mail,
//                        size: 24,
//                        color: Colors.teal,
//                      ),
//                      title: Text(
//                        "hemkumarrai1999@gmail.com",
//                      ),
//                    )),
//              ),
//            ],
//          ),
//        ),
//      ),
//    );
//  }
//}
class UI extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "Hamro Nepal",
      theme: ThemeData(
          primaryColor: Colors.white, scaffoldBackgroundColor: Colors.white),
      home: Home(),
    );
  }
}

class Content extends StatefulWidget {
  @override
  _ContentState createState() => _ContentState();
}

class _ContentState extends State<Content> {
  String email, password;
  String em = '143@gmail.com';
  String pas = 'ilovemyfamily';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Container(
          height: 450,
          width: 350,

//          child: Material(
//            color: Colors.grey,
//            borderRadius: BorderRadius.only(
////              topLeft: Radius.circular(30.0),
//              bottomLeft: Radius.circular(180.0),
////              bottomRight: Radius.circular(30.0),
//            ),
//
////          borderRadius: BorderRadius.only(),
//          ),
          decoration: BoxDecoration(
            color: Colors.black12,
            borderRadius: BorderRadius.only(
              bottomLeft: Radius.circular(180.0),
            ),
            boxShadow: [
              BoxShadow(
                  color: Colors.red,
                  offset: Offset(9.0, 20.0),
                  blurRadius: 60.0),
            ],
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Center(
                child: Text(
                  "Login Here",
                  style: TextStyle(
                    fontFamily: 'Head',
                    fontWeight: FontWeight.bold,
                    fontSize: 25.0,
                    letterSpacing: 1.0,
                  ),
                ),
              ),
              SizedBox(
                height: 30.0,
              ),
              Text(
                "Email",
                style: TextStyle(
                  fontSize: 20,
                  letterSpacing: 1,
                  fontFamily: 'foot',
                  fontWeight: FontWeight.bold,
                ),
              ),
              Card(
                child: TextField(
                  style: TextStyle(
                    color: Colors.black,
                  ),
                  keyboardType: TextInputType.emailAddress,
                  textAlign: TextAlign.center,
                  decoration: InputDecoration(hintText: "Enter Your Email"),
                  onChanged: (value) {
                    email = value;
                  },
                ),
              ),
              SizedBox(
                height: 0.0,
              ),
              Text(
                "Password",
                style: TextStyle(
                    fontSize: 20,
                    letterSpacing: 1,
                    fontFamily: 'foot',
                    fontWeight: FontWeight.bold),
              ),
              Card(
                child: TextField(
                  onChanged: (value) {
                    password = value;
                  },
                  style: TextStyle(
                    color: Colors.black,
                  ),
                  obscureText: true,
                  textAlign: TextAlign.center,
                  decoration: InputDecoration(hintText: "Enter Your Password"),
                ),
              ),
              SizedBox(
                height: 40,
              ),
              Center(
                child: Container(
                  height: 50.0,
                  width: 300,
                  decoration: BoxDecoration(
                      color: Colors.pink,
                      borderRadius: BorderRadius.circular(30),
                      boxShadow: [
                        BoxShadow(
                            color: Colors.yellow,
                            offset: Offset(9.0, 20),
                            blurRadius: 40.0)
                      ]),
                  child: Center(
                    child: FlatButton(
                      onPressed: () async {
                        try {
                          if (email == null || password == null) {
                            return;
                          }
                          setState(() {
                            return;
                          });
                          if (email == em && password == pas) {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => FamilyFile()));
//                            GestureDetector(
//                              onTap: () {
//                                Navigator.push(
//                                    context,
//                                    MaterialPageRoute(
//                                        builder: (context) => FamilyFile()));
//                              },
//                            );
                          }
                        } catch (e) {
                          print(e);
                        }
                      },
                      child: Text(
                        "Log In",
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          fontFamily: 'foot',
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: 10,
              ),
              Center(
                  child: Text(
                'Create Account?',
                style: TextStyle(fontSize: 15),
              )),
              SizedBox(
                height: 5,
              ),
              Center(
                  child: Text(
                'Forgot Password?',
                style: TextStyle(fontSize: 15),
              )),
            ],
          ),
        ),
      ),
    );
  }
}
