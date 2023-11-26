import 'package:assignment_product/second%20page.dart';
import 'package:flutter/material.dart';
import 'package:assignment_product/main.dart';

class Firstpage extends StatefulWidget {
  @override
  State<Firstpage> createState() => _FirstpageState();
}

class _FirstpageState extends State<Firstpage> {
  @override
  Widget build(BuildContext context) {
    double screenW = MediaQuery.of(context).size.width;
    double screenH = MediaQuery.of(context).size.height;
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.greenAccent,
        title: Text(
          "E-COMMERCE",
          style: TextStyle(
              fontSize: 22, fontWeight: FontWeight.bold, color: Colors.black45),
        ),
      ),
      body: Column(
        // mainAxisAlignment: MainAxisAlignment.center,
        // crossAxisAlignment: CrossAxisAlignment.end,
        children: [
          Container(
            height: (10 / 802) * screenH,
          ),
          Container(
              height: (240 / 872) * screenH,
              decoration: BoxDecoration(color: Colors.white),
              child: Center(
                  child: Image.asset("assets/images/laptop.webp",
                      height: (200 / 802.9) * screenH,
                      width: (200 / 392.72) * screenW))),
          Container(
            height: (12 / 802.72) * screenH,
          ),
          Container(
            height: (120 / 872) * screenH,
            width: (350 / 372) * screenW,
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(10),
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  height: (10 / 872) * screenH,
                ),
                Padding(
                  padding:
                      EdgeInsets.symmetric(horizontal: (10 / 372) * screenW),
                  child: Text(
                    "৳ 99,500",
                    style: TextStyle(
                      color: Colors.black54,
                      fontWeight: FontWeight.bold,
                      fontSize: 25,
                    ),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.symmetric(
                      horizontal: (15 / 392.72) * screenW,
                      vertical: (6 / 872) * screenH),
                  child: Text(
                    "Lenovo IdeaPad Slim 5 14ABR8 Ryzen 5 7530U 14 inch WUXGA Laptop",
                    textAlign: TextAlign.justify,
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
                  ),
                ),
              ],
            ),
          ),

          Container(
            margin: EdgeInsets.symmetric(vertical: (4/872)*screenH),
            height: (280 / 872) * screenH,
            width: (350 / 372) * screenW,
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(10),
            ),
            child: Column(
              children: [
                //Container(height: (10/802)*screenH,),
                Padding(
                  padding:
                      EdgeInsets.symmetric(horizontal: (20 / 392.72) * screenW,vertical: (9/872)*screenH),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text("Highlights  ",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 18,color: Colors.grey.shade500),),
                      Divider(thickness: 1,),

                      Padding(
                        padding:  EdgeInsets.symmetric(vertical: (9/872)*screenH),
                        child: Text(
                          "1) Processor: AMD Ryzen 5 7530U (2.0GHz up to 4.5GHz\n\n2) Ram: 16GB DDR4 3200 MHz, Storage: 512GB M.2 PCIe Gen4 SSD\n\n3) Display: 14 inch WUXGA (1920x1200) IPS\n\n4) Features: Backlit Keyboard, Type-C, Privacy Shutter",
                          textAlign: TextAlign.justify,
                          style: TextStyle(
                            fontSize: 14,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),

          Container(
            height: (10 / 802) * screenH,
          ),


          GestureDetector(
            onTap: () {


              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => second_page()));

            },
            child: Container(
              width: (180 / 372) * screenW,
              height: (50 / 802) * screenH,
              decoration: BoxDecoration(

                color: Colors.white,
                border: Border.all(color: Colors.green,width: 2),
                borderRadius: BorderRadius.circular(25),
                boxShadow: [
                  BoxShadow(
                    spreadRadius: 1,
                    color: Colors.grey.shade400,
                    offset: Offset(0, 4),
                  ),
                ],

              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [


                  Icon(
                    Icons.shopping_cart,
                    color: Colors.green,
                    size: 25,
                    shadows: [
                      Shadow(color: Colors.grey.shade400, offset: Offset(0, 2))
                    ],
                  ),
                  Container(width: 10,),

                  Text(
                    "Buy Now!",
                    style: TextStyle(
                        color: Colors.green.shade300,
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                      shadows: [Shadow(
                        color: Colors.grey,
                        //blurRadius: 10,
                        offset: Offset(0, 2),

                      )],
                       ),
                  ),

                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
