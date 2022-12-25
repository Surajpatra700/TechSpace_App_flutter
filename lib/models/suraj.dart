//import 'package:flutter/material.dart';

class SurajModel {
  static List<Item> items = [   // List<Item> --> An indexable collection of objects with a length with name items.
    //Item(
    //  name: "Apple",
    //  tagline: "Think Different",
    //  desc:
    //      "Apple inc. designs,manufactures, & markets smartphones,tablets, personal computers(PC), portable & wearable devices. The company also offers soft. & related services, accesories, networking solutions, & third party digital content & application",
    //  valuation: "2.08 Trillion",
    //  color: "33505a",
    //  image:
    //      "assets/images/apple.jpg",
    //),

     Item(
       name: "Microsoft",
       tagline: "We believe in what people make possible",
       tagline2: "We believe in what people make possible.",
       desc:
          "Microsoft Corporation is an American multinational technology corporation producing computer software, consumer electronics, personal computers, and related services headquartered at the Microsoft Redmond campus located in Redmond, Washington, United States.",
       valuation: "2.01 Trillion",
       color: "33505a",
       image: "assets/images/microsoftt.webp",
     ),
  ];
}

class Item {
  final String name;
  final String tagline;
  final String tagline2;
  final String desc;
  final String valuation;
  final String color;
  final String image;

  Item(
      {required this.name,
      required this.tagline,
      required this.tagline2,
      required this.desc,
      required this.valuation,
      required this.color,
      required this.image});

  factory Item.fromMap(Map<String, dynamic> map) { //We have created a constructor Item in which we are importing data in form of Map containing key in string format & values are dynamic 
  // We need a factory constructor to implement the logic 1st then initialise the final variables
    // converting class from map
    // returning Item according to map
    return Item(
      name: map["name"],
      tagline: map["tagline"],
      tagline2: map["tagline2"],
      desc: map["desc"],
      valuation: map["valuation"],
      color: map["color"],
      image: map["image"],
    );
  }
// by the help of fromMap we are mapping our Item class final var with the keys of decoded json file.
// by the help of toMap we are setting(setdata) our decorded map keys as Item class variable
  toMap() => { //converting class to map
    "name" : name,
    "tagline" : tagline,
    "tagline2" : tagline2,
    "desc" : desc,
    "valuation": valuation,
    "color": color,
    "image": image,
  };
}
