import 'package:flutter/material.dart';
class second_page extends StatefulWidget{
  @override
  State<second_page> createState() => _second_pageState();
}

class _second_pageState extends State<second_page> {
  String d_value="Choose a Payment Method";

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
                color: Colors.white,
              ),
              child: Column(
                children: [
                  Text("Payment Method",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 24,shadows: [Shadow(color: Colors.grey.shade300,offset: Offset(0,3))]),),
                  DropdownButton(
                    value:d_value ,
                      onChanged: (String ? n_value){
                      setState(() {
                        d_value=n_value!;
                      });
                  },
                    items: [
                      DropdownMenuItem<String>(value:"Choose a Payment Method",child: Text("Choose a Payment Method")),
                      DropdownMenuItem<String>(value: "two",child: Text("two")),
                    ],
                  ),
                ],
              ),
            ),
          )
        ],
      ),

    );
  }
}