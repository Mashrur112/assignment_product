import 'package:flutter/material.dart';
class second_page extends StatefulWidget{
  @override
  State<second_page> createState() => _second_pageState();
}

class _second_pageState extends State<second_page> {

  @override
  Widget build(BuildContext context) {
    double screenW=MediaQuery.of(context).size.width;
    double screenH=MediaQuery.of(context).size.height;
    return Scaffold(
      appBar: AppBar(),

      body: Column(

        children: [
          Container(height:(70/872)*screenH),
          Center(
            child: Container(
              height:(400/872)*screenH ,
              width: (370/392)*screenW,
              decoration: BoxDecoration(
                color: Colors.grey.shade200,
              ),
              child: Column(
                children: [
                  Text("Payment Method",style: TextStyle(fontWeight: FontWeight.bold),)
                ],
              ),
            ),
          )
        ],
      ),

    );
  }
}