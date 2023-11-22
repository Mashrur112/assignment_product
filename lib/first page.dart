

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

      body: Column(
       // mainAxisAlignment: MainAxisAlignment.center,
      // crossAxisAlignment: CrossAxisAlignment.end,
        children: [
          Container(height: (30/802)*screenH,),

          Center(child: Image.asset("assets/images/laptop.webp",height: (200/802.9)*screenH,width: (200/392.72)*screenW)),
          Container(height: (20/802.72)*screenH,),


          Padding(
            padding:  EdgeInsets.symmetric(horizontal: (15/392.72)*screenW),
            child: Text("Lenovo IdeaPad Slim 5 14ABR8 Ryzen 5 7530U 14 inch WUXGA Laptop",textAlign:TextAlign.justify,style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20),),

          ),
          Container(height: (20/802)*screenH,),
          Padding(
            padding:  EdgeInsets.symmetric(horizontal: (30/392.72)*screenW),
            child: Text("1) Processor: AMD Ryzen 5 7530U (2.0GHz up to 4.5GHz\n\n2) Ram: 16GB DDR4 3200 MHz, Storage: 512GB M.2 PCIe Gen4 SSD\n\n3) Display: 14 inch WUXGA (1920x1200) IPS\n\n4) Features: Backlit Keyboard, Type-C, Privacy Shutter",textAlign: TextAlign.justify,style: TextStyle(fontSize: 14,fontWeight: FontWeight.w400,),),
          ),

          Padding(
            padding:  EdgeInsets.symmetric(horizontal:(40/392)*screenW,vertical: (10/802)*screenH ),
            child: Expanded(child: Divider(thickness: 1,)),
          ),
          Text("99,500৳",style: TextStyle(color: Colors.red,fontWeight: FontWeight.bold,fontSize: 25),),
          Container(height:(20/802)*screenH ,),
          GestureDetector(
            onTap: (){
              Navigator.push(context, MaterialPageRoute(builder: (context)=>second_page()));
            },
            child: Container(
              width: (200/372)*screenW,
              height: (50/802)*screenH,
              decoration: BoxDecoration(
                color: Color(0xff170f3b),
                borderRadius: BorderRadius.circular(26),
                boxShadow: [BoxShadow(
                  color: Colors.grey,
                  offset: Offset(0, 7),


                ),],
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Icon(Icons.shopify_outlined,color: Colors.lightBlueAccent,size: 35,),
                  Text("Buy Now!",style: TextStyle(color: Colors.white,fontSize: 20,fontWeight: FontWeight.bold),),
                ],
              ),
            ),
          )

        ],

      ),


    );
  }
}
