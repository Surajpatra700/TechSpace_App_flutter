import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:velocity_x/velocity_x.dart';

import '../utils/Routes.dart';

// ignore: use_key_in_widget_constructors
class LogginnPage extends StatefulWidget {
  @override
  State<LogginnPage> createState() => _LogginnPageState();
}

class _LogginnPageState extends State<LogginnPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: context.cardColor,
      body: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
              image: AssetImage("assets/images/wal.jpg"), fit: BoxFit.cover),
        ),
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: SingleChildScrollView(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                SizedBox(
                  height: 10.0,
                ),
                Image.asset(
                  "assets/images/log.png",
                  alignment: Alignment.center,
                  opacity: const AlwaysStoppedAnimation(0.75),
                  fit: BoxFit.contain,
                  height: 300.0,
                  width: 180.0,
                ),
                const SizedBox(height: 10.0),
                Text("TechSpace",
                    style: TextStyle(
                        fontSize: 18.5,
                        color: Colors.black,
                        fontWeight: FontWeight.bold)),
                Text("Login to your App",
                    style: TextStyle(
                        color: Colors.black,
                        fontSize: 30.0,
                        fontWeight: FontWeight.bold)),
                SizedBox(
                  height: 44,
                ),
                TextField(
                  keyboardType: TextInputType.emailAddress,
                  decoration: InputDecoration(
                    hintText: "User Email",
                    prefixIcon: Icon(Icons.mail, color: Colors.black),
                  ),
                ),
                const SizedBox(height: 26.0),
                // ignore: prefer_const_constructors
                TextField(
                  obscureText: true,
                  // ignore: prefer_const_constructors
                  decoration: InputDecoration(
                    hintText: "User Password",
                    prefixIcon: Icon(Icons.lock, color: Colors.black),
                  ),
                ),
                // ignore: prefer_const_constructors
                SizedBox(
                  height: 12.0,
                ),
                Text(
                  "forget password?",
                  style: TextStyle(color: Colors.blue),
                ),
                // ignore: prefer_const_constructors
                SizedBox(
                  height: 55.0,
                ),
                // Container(
                //   width: double.infinity,
                //   child: RawMaterialButton(onPressed: (() {})),
                // )
                // ignore: prefer_const_constructorss
                Center(
                    child: SizedBox(
                        height: 42,
                        width: 230,
                        child: ElevatedButton(
                            onPressed: (() {
                              //Navigator.pushNamed(context, MyRoutes.homePage);
                              context.vxNav.push(Uri.parse(MyRoutes.homePage));
                            }),
                            style: ElevatedButton.styleFrom(backgroundColor: Colors.deepPurple,
                                elevation: 20.0, shadowColor: Colors.redAccent),
                            // ignore: prefer_const_constructorss
                            child: Text("Login",
                                // ignore: prefer_const_constructorss
                                style: TextStyle(color: Colors.white))))),
                SizedBox(
                  height: 15,
                ),
                Center(
                    child: SizedBox(
                        height: 42,
                        width: 230,
                        child: ElevatedButton.icon(
                            //style: ButtonStyle(elevation: 10.0),
                            onPressed: (() {}),
                            style: ElevatedButton.styleFrom(
                                backgroundColor: Colors.lightBlue,
                                elevation: 20.0,
                                shadowColor: Colors.redAccent),
                            icon: Icon(CupertinoIcons.chart_bar_square),
                            // ignore: prefer_const_constructorss
                            label: Text("Sign in with Twitter",
                                // ignore: prefer_const_constructorss
                                style: TextStyle(color: Colors.white))))),

                SizedBox(
                  height: 15,
                ),
                Center(
                    child: SizedBox(
                        height: 42,
                        width: 230,
                        child: ElevatedButton.icon(
                            //style: ButtonStyle(elevation: 10.0),
                            onPressed: (() {}),
                            style: ElevatedButton.styleFrom(
                                backgroundColor: Colors.green,
                                elevation: 20.0,
                                shadowColor: Colors.redAccent),
                            icon: Icon(CupertinoIcons.phone_fill),
                            // ignore: prefer_const_constructorss
                            label: Text("Sign in with whatsapp",
                                // ignore: prefer_const_constructorss
                                style: TextStyle(color: Colors.white))))),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

// step 1: Create a main layout of the app(omly the UI)
// step 2: Login to your firebase console (if you dont have an account you can create one)
// step 3: Create a new firebase project
// step 4: Let's add firebase dependencies for flutter.