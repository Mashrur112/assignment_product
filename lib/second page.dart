import 'package:flutter/material.dart';

class second_page extends StatefulWidget {
  @override
  State<second_page> createState() => _second_pageState();
}

class _second_pageState extends State<second_page> {
  String d_value = "Choose a payment method";

  void pressed() {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return Expanded(
          child: AlertDialog(
            title: Text('Bkash'),
            content: Text('Payment Successful'),
          ),
        );
      },
    );
  }

  void pressed1() {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return Expanded(
          child: AlertDialog(
            title: Text('Rocket'),
            content: Text('Payment Successful'),
          ),
        );
      },
    );
  }

  void pressed2() {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return Expanded(
          child: AlertDialog(
            title: Text('VISA'),
            content: Text('Payment Successful'),
          ),
        );
      },
    );
  }

  void pressed3() {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return Expanded(
          child: AlertDialog(
            title: Text('MasterCard'),
            content: Text('Payment Successful'),
          ),
        );
      },
    );
  }

  void pressed4() {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return Expanded(
          child: AlertDialog(
            title: Text('AMEX'),
            content: Text('Payment Successful'),
          ),
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    double screenW = MediaQuery.of(context).size.width;
    double screenH = MediaQuery.of(context).size.height;
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Payment Method",
          style: TextStyle(
            fontWeight: FontWeight.bold,
            color: Colors.white,
            fontSize: 20,
          ),
        ),
        backgroundColor: Color(0xff265c7e),
      ),
      body: Column(
        children: [

          // Container(height: (70 / 872) * screenH),
          Center(
            child: Container(
              height: (770 / 872) * screenH,
              //width: (370 / 392) * screenW,
              decoration: BoxDecoration(
                //borderRadius: BorderRadius.circular(21),
                color: Color(0xff265c7e),
              ),

              child: Column(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Container(
                    width: (240/372)*screenW,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(15),
                     // border: Border.all(width: 1,color: Colors.white),
                    ),
                    child: Center(
                      child: DropdownButton(
                        value: d_value,
                        borderRadius: BorderRadius.circular(21),
                        onChanged: (String? n_value) {
                          setState(() {
                            d_value = n_value!;
                          });
                        },
                        items: [
                          DropdownMenuItem<String>(
                              value: "Choose a payment method",
                              child: Text("Choose a payment method")),
                          DropdownMenuItem<String>(
                              value: "Cash on Delivery",
                              child: Text("Cash on Delivery")),
                          DropdownMenuItem<String>(
                              value: "Online Payment",
                              child: Text("Online Payment")),
                          DropdownMenuItem<String>(
                              value: "POS on Delivery",
                              child: Text("POS on Delivery")),
                        ],
                      ),
                    ),
                  ),
                  Container(
                    height: (50/872)*screenH,
                  ),

                  Container(
                    height: (620 / 872) * screenH,

                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(21),
                    ),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [

                        Column(
                          //mainAxisAlignment: MainAxisAlignment.start,
                            children: [


                          Padding(
                            padding:  EdgeInsets.fromLTRB(0, 0, 150, 0),
                            child: Text("We Accept : ",style: TextStyle(fontSize: 23,color: Colors.grey,fontWeight: FontWeight.bold),),
                          ),
                          Container(height: (50/872)*screenH,),
                          Column(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              //Container(width: (0/392)*screenW,),
                              Row(
                                children: [
                                  Container(width: (90/373)*screenW,),
                                  Padding(
                                    padding:  EdgeInsets.fromLTRB(0, 0, 10, 0),
                                    child: GestureDetector(
                                        onTap: pressed,
                                        child: Image.asset(
                                          "assets/images/bkash.webp",
                                          height: (60 / 872) * screenH,
                                          width: (60 / 372) * screenW,
                                        )),
                                  ),
                                  Text("bkash",style: TextStyle(fontSize: 23,fontWeight: FontWeight.bold,color: Colors.black54,),),
                                ],
                              ),
                              Row(
                                children: [
                                  Container(width: (90/373)*screenW,),
                                  Padding(
                                    padding:  EdgeInsets.fromLTRB(0, 0, 10, 0),
                                    child: GestureDetector(
                                        onTap: pressed1,
                                        child: Image.asset(
                                          "assets/images/rocket.png",
                                          height: (60 / 872) * screenH,
                                          width: (60 / 372) * screenW,
                                        )),
                                  ),
                                  Text("rocket",style: TextStyle(fontSize: 23,fontWeight: FontWeight.bold,color: Colors.black54,),),
                                ],
                              ),

                              Row(
                                children: [
                                  Container(width: (90/373)*screenW,),
                                  Padding(
                                    padding:  EdgeInsets.fromLTRB(0, 0, 10, 0),
                                    child: GestureDetector(
                                        onTap: pressed2,
                                        child: Image.asset(
                                          "assets/images/visa.png",
                                          height: (60 / 872) * screenH,
                                          width: (60 / 372) * screenW,
                                        )),
                                  ),
                                  Text("visa",style: TextStyle(fontSize: 23,fontWeight: FontWeight.bold,color: Colors.black54,),),
                                ],
                              ),
                              GestureDetector(
                                  onTap: pressed3,
                                  child: Image.asset(
                                    "assets/images/mastercard.png",
                                    height: (60 / 872) * screenH,
                                    width: (60 / 372) * screenW,
                                  )),
                              GestureDetector(
                                  onTap: pressed4,
                                  child: Image.asset(
                                    "assets/images/amex.png",
                                    height: (60 / 872) * screenH,
                                    width: (60 / 372) * screenW,
                                  )),
                            ],
                          ),
                        ]),
                        Container(
                          height: (70 / 872) * screenH,
                        ),


                        Container(
                          height: (100 / 872) * screenH,
                          color: Color(0xff265c7e),


                        ),

                      ],
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
