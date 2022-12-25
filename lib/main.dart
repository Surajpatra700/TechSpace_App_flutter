//import 'dart:html';
import 'package:flutter/material.dart';
import 'package:flutter_demo/pages/logginn_page.dart';
//import 'package:flutter_demo/pages/home_detail_page.dart';
import 'package:flutter_demo/utils/Routes.dart';
import 'package:flutter_demo/widget/themes.dart';
import 'package:velocity_x/velocity_x.dart';
//import 'package:google_fonts/google_fonts.dart';
import 'pages/home_page.dart';
import 'pages/login_page.dart';
import 'package:url_strategy/url_strategy.dart';

void main() {
  setPathUrlStrategy();
  runApp(MyApp());
}

// ignore: use_key_in_widget_constructors
class MyApp extends StatelessWidget {
  // stateless widget is a widget that doesn't allow change in state of UI.
  //int weeks = 1;
  @override // it overrides the method inside MyApp class
  Widget build(BuildContext context) {
    //context is an element that assigns location to the widget
    return MaterialApp.router(
      //MaterialApp,Material & Scaffold is a class that provides varios widget for designing of canvas
      //home: HomePage(),
      themeMode: ThemeMode.system,
      theme: MyTheme.lightTheme(context),
      darkTheme: MyTheme.darkTheme(context),
      // darkTheme: ThemeData(
      //   brightness: Brightness.dark,
      // ),
      debugShowCheckedModeBanner:
          false, // removes the debug symbol from the output page
      routeInformationParser: VxInformationParser(),
      routerDelegate: VxNavigator(routes: {
        "/": (_,__) => MaterialPage(child: LogginnPage()),
        MyRoutes.homePage: (_,__) => MaterialPage(child: HomePage()),
        MyRoutes.loginPage: (_,__) => MaterialPage(child: LoginPage()),
      }),
      //initialRoute: MyRoutes.homePage,
      // routes: {
      //   "/": (context) => LogginnPage(),
      //   MyRoutes.homePage: (context) => HomePage(),
      //   MyRoutes.loginPage: (context) => LoginPage(),
      // },
    );
  }
}