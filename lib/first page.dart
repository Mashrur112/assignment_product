import 'package:flutter/material.dart';
import 'package:assignment_product/main.dart';

class Firstpage extends StatefulWidget{

  @override
  State<Firstpage> createState() => _FirstpageState();
}

class _FirstpageState extends State<Firstpage> {
  @override
  Widget build(BuildContext context) {
    double screenW=MediaQuery.of(context).size.width;
    double screenH=MediaQuery.of(context).size.height;
    // TODO: implement build
    return Scaffold(
      appBar:AppBar (
        backgroundColor: Colors.grey,
        title: Text("Product Details",style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),),

      ),
      body: Column(
       // mainAxisAlignment: MainAxisAlignment.center,
      // crossAxisAlignment: CrossAxisAlignment.end,
        children: [
          Container(height: (100/802)*screenH,),

          Center(child: Image.asset("assets/images/laptop.webp",height: (200/802.9)*screenH,width: (200/392.72)*screenW)),
          Container(height: (20/802.72)*screenH,),


          Padding(
            padding:  EdgeInsets.symmetric(horizontal: (15/392.72)*screenW),
            child: Text("Lenovo IdeaPad Slim 5 14ABR8 Ryzen 5 7530U 14 inch WUXGA Laptop",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20),),
          ),
        ],
      ),
    );
  }
}