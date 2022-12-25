// ignore_for_file: sort_child_properties_last

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_demo/pages/home_page.dart';
import 'package:flutter_demo/pages/info.dart';
//import 'package:flutter_demo/widget/drawer.dart';
//import 'package:flutter_demo/widget/themes.dart';
import 'package:velocity_x/velocity_x.dart';
//import 'package:url_launcher/url_launcher.dart';
//import 'package:velocity_x/src/flutter/stepper.dart'; // checking
import '../models/suraj.dart';

class HomeDetailPage extends StatelessWidget {
  final Item suraj;
  //final url = "https://careers.google.com/";

  const HomeDetailPage({super.key, required this.suraj});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: context.cardColor,
      appBar: AppBar(
        centerTitle: true, // places the title of appBar in center
        title: Text(
          "TechSpace",
          textAlign: TextAlign.center,
          style: TextStyle(
              color: context.primaryColor,
              fontSize: 25,
              fontWeight: FontWeight.bold,
              fontStyle: FontStyle.italic),
        ),
        backgroundColor: context.cardColor,
        leading: IconButton(
            onPressed: () => Navigator.push(
                context, MaterialPageRoute(builder: ((context) => HomePage()))),
            icon: Icon(CupertinoIcons.back, color: context.primaryColor)),
      ),
      bottomNavigationBar: suraj.valuation.text.xl
          .align(TextAlign.right)
          .color(Colors.red)
          .bold
          .make()
          .px20(),
      body: SafeArea(
        child: Column(
          children: [
            Hero(
                    tag: Key(suraj.name.toString()),
                    child:
                        SizedBox(height: 25.0, child: Image.asset(suraj.image)))
                .h32(context),
            // ignore: prefer_const_constructors
            SizedBox(height: 10.0,),
            Expanded(
                child: SingleChildScrollView(
                  child: Container(
                              color: context.cardColor,
                              width: context.screenWidth,
                              child: Column(
                  children: [
                    suraj.name.text.xl4.color(context.primaryColor).bold.make(),
                    suraj.tagline2.text.medium
                        .color(context.backgroundColor)
                        .center
                        .make(),
                    suraj.desc.text.center.medium
                        .color(context.primaryColor)
                        .make()
                        .py24(),
                    // SizedBox(
                    //   height: 6,
                    // ),
                    "Visit below for more data".text.sm.color(context.backgroundColor).center.italic.make().py4(),
                    Column(
                      children: [
                        SizedBox(
                            height: 36.0,
                            width: 70.0,
                            child: ElevatedButton(
                                onPressed: (() {
                                  Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                          builder: ((context) => Information())));
                                }),
                                // ignore: prefer_const_constructors
                                child: Text(
                                  "Visit",
                                  // ignore: prefer_const_constructors
                                  style: TextStyle(fontWeight: FontWeight.bold)),
                                style: const ButtonStyle(
                                  backgroundColor: MaterialStatePropertyAll(Colors.deepPurple),
                                  elevation: MaterialStatePropertyAll(2.50),
                                ),
                                )),
                        // ignore: prefer_const_constructors
                        // SizedBox(height: 50.0,),
                        // suraj.desc.text.center.medium
                        // .color(context.primaryColor)
                        // .make()
                        // .py24(),
                      ],
                    )
                  ],
                              ),
                            ).p16(),
                )),
          ],
        ),
      ),
      //drawer: MyDrawer().color(Colors.white),
    );
  }
}
