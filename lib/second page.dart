import 'package:flutter/material.dart';

class second_page extends StatefulWidget {
  @override
  State<second_page> createState() => _second_pageState();
}

class _second_pageState extends State<second_page> {
  String d_value = "We Accept";
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
      appBar: AppBar(),
      body: Column(
        children: [
          Container(height: (70 / 872) * screenH),
          Center(
            child: Container(
              height: (400 / 872) * screenH,
              width: (370 / 392) * screenW,
              decoration: BoxDecoration(
                color: Colors.white,
              ),
              child: Column(
                children: [
                  Text(
                    "Payment Method",
                    style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 24,
                        shadows: [
                          Shadow(
                              color: Colors.grey.shade300, offset: Offset(0, 3))
                        ]),
                  ),
                  Container(
                    height: 12,
                  ),
                  DropdownButton(
                    value: d_value,
                    onChanged: (String? n_value) {
                      setState(() {
                        d_value = n_value!;
                      });
                    },
                    items: [
                      DropdownMenuItem<String>(
                          value: "We Accept", child: Text("We Accept")),
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
                  Text("Choose a payment method : "),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      //Container(width: (0/392)*screenW,),
                      GestureDetector(
                          onTap: pressed,
                          child: Image.asset(
                            "assets/images/bkash.webp",
                            height: 50,
                            width: 50,
                          )),
                      GestureDetector(
                          onTap: pressed1,
                          child: Image.asset(
                            "assets/images/rocket.png",
                            height: 50,
                            width: 50,
                          )),

                      GestureDetector(
                          onTap: pressed2,
                          child: Image.asset(
                            "assets/images/visa.png",
                            height: 50,
                            width: 50,
                          )),
                      GestureDetector(
                          onTap: pressed3,
                          child: Image.asset(
                            "assets/images/mastercard.png",
                            height: 30,
                            width: 30,
                          )),
                      GestureDetector(
                          onTap: pressed4,
                          child: Image.asset(
                            "assets/images/amex.png",
                            height: 30,
                            width: 30,
                          )),
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
