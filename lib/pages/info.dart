//import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_demo/widget/drawer.dart';
import 'package:velocity_x/velocity_x.dart';
import 'package:animated_text_kit/animated_text_kit.dart';
// ignore: use_key_in_widget_constructors
class Information extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //backgroundColor: Image.asset("assets/images/wallpaper.jpg").color,
      appBar: AppBar(
        centerTitle: true,
        title: Text(
          "TechSpace",
          style: TextStyle(
              color: context.primaryColor,
              fontSize: 25,
              fontWeight: FontWeight.bold,
              fontStyle: FontStyle.italic),
        ),
        backgroundColor: context.cardColor,
      ),
      body: Center(
        child: Container(
          //stacks helps to display one widget over other
          padding: EdgeInsets.all(0.1),
          decoration: const BoxDecoration(
              image: DecorationImage(
                  image: AssetImage("assets/images/homepg.jpg"),
                  fit: BoxFit.cover)),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              //SizedBox(height: 50.0),
              SizedBox(
                height: 100,
                width: 400,
                child: AnimatedTextKit(animatedTexts: [
                  RotateAnimatedText(
                    "Welcome",duration: Duration(seconds: 3),
                    textStyle: TextStyle(fontSize: 38.5, color: Colors.white,fontWeight: FontWeight.bold,shadows: [
                      Shadow(
                        blurRadius: 3.5,
                        color: context.primaryColor,
                        // ignore: prefer_const_constructors
                        offset: Offset(5.0, 5.0),
                      ),]),
                  ),
                  RotateAnimatedText("To",duration: Duration(seconds: 3),
                      textStyle: TextStyle(fontSize: 38.5, color: Colors.white,fontWeight: FontWeight.bold,shadows: [
                      Shadow(
                        blurRadius: 3.5,
                        color: context.primaryColor,
                        // ignore: prefer_const_constructors
                        offset: Offset(5.0, 5.0),
                      ),])),
                  RotateAnimatedText("TechSpace",duration: Duration(seconds: 3),
                      textStyle: TextStyle(fontSize: 38.5, color: Colors.white,fontWeight: FontWeight.bold,shadows: [
                      Shadow(
                        blurRadius: 3.5,
                        color: context.primaryColor,
                        // ignore: prefer_const_constructors
                        offset: Offset(5.0, 5.0),
                      ),])),
                  RotateAnimatedText(
                    "Application..",duration: Duration(seconds: 3),
                    textStyle: TextStyle(fontSize: 38.5, color: Colors.white,fontWeight: FontWeight.bold,shadows: [
                      Shadow(
                        blurRadius: 3.5,
                        color: context.primaryColor,
                        // ignore: prefer_const_constructors
                        offset: Offset(5.0, 5.0),
                      ),]),
                  ),
                  RotateAnimatedText("The",duration: Duration(seconds: 3),
                      textStyle: TextStyle(fontSize: 38.5, color: Colors.white,fontWeight: FontWeight.bold,shadows: [
                      Shadow(
                        blurRadius: 3.5,
                        color: context.primaryColor,
                        // ignore: prefer_const_constructors
                        offset: Offset(5.0, 5.0),
                      ),])),
                  RotateAnimatedText("Space",duration: Duration(seconds: 3),
                      textStyle: TextStyle(fontSize: 38.5, color: Colors.white,fontWeight: FontWeight.bold,shadows: [
                      Shadow(
                        blurRadius: 3.5,
                        color: context.primaryColor,
                        // ignore: prefer_const_constructors
                        offset: Offset(5.0, 5.0),
                      ),])),
                  RotateAnimatedText(
                    "of",duration: Duration(seconds: 3),
                    textStyle: TextStyle(fontSize: 38.5, color: Colors.white,fontWeight: FontWeight.bold,shadows: [
                      Shadow(
                        blurRadius: 3.5,
                        color: context.primaryColor,
                        // ignore: prefer_const_constructors
                        offset: Offset(5.0, 5.0),
                      ),]),
                  ),
                  RotateAnimatedText("Tech Companies",duration: Duration(seconds: 3),
                      textStyle: TextStyle(fontSize: 38.5, color: Colors.white,fontWeight: FontWeight.bold,shadows: [
                      Shadow(
                        blurRadius: 3.5,
                        color: context.primaryColor,
                        // ignore: prefer_const_constructors
                        offset: Offset(5.0, 5.0),
                      ),])),
                ]),
              ),
              //Image.network("https://wallpaperaccess.com/full/2495155.jpg",fit: BoxFit.cover),
              //Text("Welcome to TechSpace trending companies...",style: TextStyle(fontSize: 15, fontStyle: FontStyle.italic,fontWeight: FontWeight.bold, color: context.cardColor),textAlign: TextAlign.center),
            ],
          ),
        ),
      ),
      //bottomNavigationBar: color(Colors.black),
      drawer: MyDrawer(),
    );
  }
}
