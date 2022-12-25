// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:velocity_x/velocity_x.dart';

import '../utils/Routes.dart';

class LoginPage extends StatefulWidget {
  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  String name = "";
  bool changeButton = false;

  final _formKey = GlobalKey<FormState>();
  moveToHome(BuildContext context) async {
    if (_formKey.currentState!.validate()) {
      // if formkey currentState is validated then it'll perform validation operation
      setState(() {
        // helps to change the state of widget
        changeButton = true;
      });
      await Navigator.pushNamed(context, MyRoutes.homePage);
      setState(() {
        // helps to change the state of widget
        changeButton = false;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Material(
        color: context.cardColor,
        child: SingleChildScrollView(
          child: Form(
            key: _formKey,
            child: Column(
              children: [
                Image.asset("assets/images/login_image.png", fit: BoxFit.cover),
                SizedBox(
                  height: 20.0, // creates a gap of 20 pixels from the image
                  //width: 30.0,
                  //  child: Text("wlc"),
                ),
                Text("Welcome $name",
                    style:
                        TextStyle(fontSize: 24, fontWeight: FontWeight.bold)),
                SizedBox(
                  height: 20.0,
                ),
                Padding(
                  // It adds padding/empty spaces around a widget/bunch of widgets.
                  padding: const EdgeInsets.symmetric(
                      vertical: 16.0, horizontal: 35.0),
                  child: Column(
                    children: [
                      TextFormField(
                        decoration: InputDecoration(
                          hintText: "Enter UserName",
                          labelText: "UserName",
                        ),
                        validator: (value) {
                          //validator func. provides a validation for username.
                          if (value!.isEmpty) {
                            return "Username can't be empty";
                          }
                          return null; // null means no error
                        },
                        onChanged: (value) {
                          name = value;
                          setState(
                              () {}); // whenever there is change in internal state setState method calls the build func. to change the UI
                        },
                      ),

                      TextFormField(
                        obscureText:
                            true, // hides the labeldata for security purposes
                        decoration: InputDecoration(
                          hintText: "Enter Password",
                          labelText: "Password",
                        ),
                        validator: (value) {
                          //validator func. provides a validation for username.
                          if (value!.isEmpty) {
                            return "Password can't be empty";
                          }
                          return null; // null means no error
                        },
                      ),

                      SizedBox(
                        height: 30.0,
                      ),

                      InkWell(
                        // Inkwell widget provides animation & ripple effect...
                        onTap: () => moveToHome(context),
                        //setState(() {
                        // helps to change the state of widget
                        //  changeButton = true;
                        //});
                        //await Navigator.pushNamed(context, MyRoutes.homePage);
                        //setState(() {
                        // helps to change the state of widget
                        //  changeButton = false;
                        //}); //we put await infront of async func to make the subsequence lines waiting for the future result & also to mark that the func. support await.
                        child: AnimatedContainer(
                          duration: Duration(milliseconds: 250),
                          width: changeButton ? 100 : 120,
                          height: 50,
                          alignment: Alignment.center,
                          //color: Colors.deepPurple,
                          child: changeButton
                              // ignore: prefer_const_constructors
                              ? Icon(
                                  Icons.done,
                                  color: Colors.white,
                                )
                              // ignore: prefer_const_constructors
                              : Text("Login",
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 18.0,
                                      fontWeight: FontWeight.bold)),
                          decoration: BoxDecoration(
                            color: Colors.deepPurple,
                            borderRadius:
                                BorderRadius.circular(changeButton ? 20 : 8),
                          ),
                        ),
                      ),
                      //ElevatedButton(
                      //  child: Text("Login"),
                      //  style: TextButton.styleFrom(minimumSize: Size(130, 40)),
                      //  onPressed: () {
                      //    Navigator.pushNamed(context, MyRoutes.homePage);
                      //  },
                      //),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ));
  }
}
