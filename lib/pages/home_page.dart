// ignore_for_file: use_key_in_widget_constructors, unnecessary_new
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'dart:convert';
import 'package:flutter_demo/models/suraj.dart';
import 'package:flutter_demo/pages/home_detail_page.dart';
import 'package:velocity_x/velocity_x.dart';

class HomePage extends StatefulWidget {
  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final int weeks = 1;
  @override
  void initState() {
    // initState initialise the class & stores the data before the build method is called
    super.initState();
    loadData();
  }

  loadData() async {
    final surajJson = await rootBundle.loadString("assets/files/suraj.json");
    final decodedData = jsonDecode(
        surajJson); //jsonEncode convert json map object into string & jsonDecode convert string to json map file
    var productsData = decodedData[
        "products"]; //we require only products data inside our decoded data.
    SurajModel.items = List.from(productsData)
        .map<Item>((item) => Item.fromMap(item))
        .toList();
    setState(
        () {}); //Notify the framework/build method that the internal state of this object has changed.
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: context.cardColor,
      body: SafeArea(
        child: Container(
          // ignore: prefer_const_constructors
          decoration: context.isMobile?BoxDecoration(image: DecorationImage(image: AssetImage("assets/images/homepg.jpg"), fit: BoxFit.cover)): BoxDecoration(image: DecorationImage(image: AssetImage("assets/images/homme.jpg"), fit: BoxFit.cover)),
          padding: Vx.m32, // edgeinsets.all and provides a space of 32
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "TechSpace",
                style: TextStyle(
                    fontSize: 35,
                    shadows: [
                      Shadow(
                        blurRadius: 3.5,
                        color: context.primaryColor,
                        // ignore: prefer_const_constructors
                        offset: Offset(5.0, 5.0),
                      ),
                    ],
                    fontWeight: FontWeight.bold,
                    color: context.cardColor),
              ),
              Text(
                "Trending companies",
                style: TextStyle(
                    fontSize: 20,
                    shadows: [
                      Shadow(
                        blurRadius: 3.5,
                        color: context.primaryColor,
                        // ignore: prefer_const_constructors
                        offset: Offset(5.0, 5.0),
                      ),
                    ],
                    //fontWeight: FontWeight.bold,
                    color: context.cardColor),
              ),
              //"Trending companies".text.xl.color(context.primaryColor).make(),
              // ignore: prefer_const_constructors
              SizedBox(
                height: 30,
              ),
              if (SurajModel.items != null && SurajModel.items.isNotEmpty)
                SurajList().expand()
              else
                Center(
                  // ignore: prefer_const_constructors
                  child: CircularProgressIndicator().centered().expand(),
                )
            ],
          ),
        ),
      ),
    );
  }
}

class SurajList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return !context.isMobile?GridView.builder(
      // ignore: prefer_const_constructors
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2,crossAxisSpacing: 20),
      shrinkWrap:
          true, // Creates a scrollable, linear array of widgets that are created on demand.
      itemCount: SurajModel.items.length,
      itemBuilder: (context, index) {
        final suraj = SurajModel.items[index];
        return SurajItem(suraj: suraj);
      },
    ): ListView.builder(
      shrinkWrap:
          true, // Creates a scrollable, linear array of widgets that are created on demand.
      itemCount: SurajModel.items.length,
      itemBuilder: (context, index) {
        final suraj = SurajModel.items[index];
        return SurajItem(suraj: suraj);
      },
    );
  }
}

class SurajItem extends StatelessWidget {
  final Item suraj;

  const SurajItem({super.key, required this.suraj});

  @override
  Widget build(BuildContext context) {
    var children2 = [
          Hero(
            tag: Key(suraj.name.toString()),
            child: Image.asset(suraj.image)
                .box
                .roundedSM
                .p8
                .color(context.cardColor)
                .make()
                .p1()
                .wPCT(context: context, widthPCT: context.isMobile?40:30),
          ),
          Expanded(
              child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              suraj.name.text.medium.color(context.primaryColor).bold.make(),
              suraj.tagline.text.xs.make(),
              ButtonBar(
                alignment: MainAxisAlignment.spaceBetween,
                children: [
                  suraj.valuation.text
                      .color(context.primaryColor)
                      .xs
                      .bold
                      .make(),
                  new SizedBox(
                    width: 60.0,
                    height: 25.0,
                    child: ElevatedButton(
                        child: "open".text.xs.bold.make(),
                        onPressed: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: ((context) =>
                                      HomeDetailPage(suraj: suraj))));
                        },
            // GIVING DETAILS TO THIS BOX...
                        // style: const ButtonStyle(
                        //         backgroundColor: MaterialStatePropertyAll(Colors.deepPurple),
                        //         elevation: MaterialStatePropertyAll(10.5), shadowColor: Colors.redAccent),
                        // ),
                        style: ElevatedButton.styleFrom(backgroundColor: Colors.deepPurple,elevation: 10.8,shadowColor: Colors.blue),
                  ),
                  ),
                ],
              )
            ],
          ).p(context.isMobile?0:16)
          )
        ];
    return VxBox(
      // VxBox is similar to container
      child: context.isMobile?Row(
        children: children2,
      ): Column(children: children2),
    ).color(Color.fromARGB(133, 241, 214, 214)).roundedSM.square(100).make().py12(); //p stands for padding, y--> vertical axis & gives padding of 16 pixels
  }
}

//ListView.builder(  //Creates a scrollable, linear array of widgets that are created on demand.
        //   itemCount: SurajModel.items.length, //SurajModel.items.length,
        //   itemBuilder: (context, index) {
        //     return ItemWidget(
        //       item: SurajModel.items[index],
        //     );
        //   },
        // ),



      //   appBar: AppBar(
      //   title: Text(
      //     "             TechSpace",
      //     style: TextStyle(color: Colors.black,fontSize: 25,fontWeight: FontWeight.bold),
      //   ),
      // ),
      // body: Padding(
      //     padding: const EdgeInsets.all(16.0),
      //     child: GridView.builder(
      //       gridDelegate:   // gridDelegate helps to count the no of items to be placed in a row 
      //           SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2,mainAxisSpacing: 8,crossAxisSpacing: 6),
      //       itemBuilder: (context, index) {
      //         final item = SurajModel.items[index];
      //         return Card(
      //           clipBehavior: Clip.antiAlias, // gives a smoother look
      //           shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(6)),
      //           child: GridTile(
      //             header: Container(
      //               child: Center(
      //                 child: Text(item.name,style: TextStyle(color: Colors.white)), // wraped with center & ultimately wraped with container
      //                 ),
      //               padding: EdgeInsets.all(9),
      //               decoration: BoxDecoration(color: Colors.black54),
      //             ),
      //             child: Image.asset(item.image),
      //             footer: Center(child: Text(item.valuation)), // wraped with center
      //           ));
      //       },
      //       itemCount: SurajModel.items.length,
      //     )),
      // drawer: MyDrawer(),