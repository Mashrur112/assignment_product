

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
        title: Text("Product Details",style: TextStyle(fontSize: 22,fontWeight: FontWeight.bold,color: Colors.white),),

      ),
      body: Column(),
    );
  }
}
