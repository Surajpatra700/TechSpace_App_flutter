import 'package:flutter/material.dart';
import 'package:flutter_demo/models/suraj.dart';

class ItemWidget extends StatelessWidget {
  final Item item;

  const ItemWidget({super.key, required this.item}) : assert(item != null); //asserts would check wether the item is null/not

  @override
  Widget build(BuildContext context) {
    return Card(
      child: ListTile(
        onTap: () {
          // ignore: avoid_print
          print("${item.name} pressed");
        },
        leading: Image.asset(item.image),
        title: Text(item.name),
        subtitle: Text(item.tagline),
        trailing: Text("\$${item.valuation}",textScaleFactor: 1.0,style: TextStyle(color: Colors.deepPurple,fontWeight: FontWeight.bold),),
      ),
    );
  }
}