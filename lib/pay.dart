import 'package:flutter/material.dart';
import 'card_pay.dart';

class pay extends StatefulWidget {
  const pay({super.key});

  @override
  _payState createState() => _payState();
}

class _payState extends State<pay> {
  @override
  Widget build(BuildContext context) {
    return Container(
        decoration: const BoxDecoration(
          image: DecorationImage(
              image: AssetImage('Assets/images/background.png'),
              fit: BoxFit.fill),
        ),
        child: Scaffold(
          backgroundColor: Colors.transparent,
          appBar: AppBar(
            elevation: 0.0,
            backgroundColor: Colors.transparent,
            title: Row(
              children: [
                // IconButton(
                //   onPressed: () {},
                //   icon: const Icon(
                //     Icons.arrow_back_ios_new,
                //     color: Color(0xff1d9e9e),
                //   ),
                // ),
                Spacer(),
                IconButton(
                  onPressed: () {},
                  icon: const Icon(
                    Icons.menu,
                    color: Color(0xff1d9e9e),
                  ),
                ),
              ],
            ),
          ),
          body: const Padding(
            padding: EdgeInsets.symmetric(vertical: 100.0, horizontal: 24.0),
            child: Column(
                // mainAxisAlignment: MainAxisAlignment.start,
                // crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    children: [
                      Text(
                        "Space Stay",
                        style: TextStyle(
                          color: Color.fromARGB(255, 196, 196, 196),
                          fontSize: 30.0,
                          fontWeight: FontWeight.w600,
                        ),
                        textAlign: TextAlign.left,
                      ),
                      Spacer(),
                      Text(
                        "USD 492",
                        style: TextStyle(
                          color: Color.fromARGB(255, 196, 196, 196),
                          fontSize: 32.0,
                          fontWeight: FontWeight.w800,
                        ),
                      )
                    ],
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Row(
                    children: [
                      Text(
                        "Family (4) | Average Budget",
                        style: TextStyle(
                          color: Color.fromARGB(255, 196, 196, 196),
                          fontSize: 14.0,
                          fontWeight: FontWeight.w300,
                        ),
                      ),
                      Spacer(),
                      Text(
                        "3 Nights",
                        style: TextStyle(
                          color: Color.fromARGB(255, 196, 196, 196),
                          fontSize: 14.0,
                          fontWeight: FontWeight.w300,
                        ),
                        textAlign: TextAlign.left,
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 30,
                  ),
                  Text(
                    "Choose a comfortable payment method to secure your room for 3 nights at Space Stay with Food & Beverages included.",
                    style: TextStyle(
                      color: Color.fromARGB(255, 196, 196, 196),
                      fontSize: 15.0,
                      fontWeight: FontWeight.w300,
                    ),
                    textAlign: TextAlign.justify,
                  ),
                  SizedBox(
                    height: 25,
                  ),
                  Row(
                    children: [
                      IconButton(
                        onPressed: null,
                        icon: const Icon(
                          Icons.credit_card,
                          color: Color(0xff1d9e9e),
                        ),
                      ),
                      Text(
                        "Debit/Credit Card",
                        style: TextStyle(
                          color: Color(0xff1d9e9e),
                          fontSize: 16.0,
                          fontWeight: FontWeight.w600,
                        ),
                        textAlign: TextAlign.left,
                      ),
                    ],
                  ),
                  Row(
                    children: [
                      SizedBox(
                        height: 30,
                      ),
                      Text(
                        "Card Number",
                        style: TextStyle(
                          color: Color.fromARGB(255, 196, 196, 196),
                          fontSize: 14.0,
                          fontWeight: FontWeight.w300,
                        ),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 50,
                  ),
                  Row(
                    children: [
                      Center(
                          child: ElevatedButton(
                              style: ButtonStyle(
                                  backgroundColor: MaterialStatePropertyAll(
                                      Color(0xff1d9e9e)),
                                  fixedSize:
                                      MaterialStatePropertyAll(Size(150, 30))),
                              onPressed: null,
                              child: Text(
                                "CONFIRM & PAY",
                                style: TextStyle(color: Colors.black),
                              )))
                    ],
                  )
                ]),
          ),
        ));
  }
}
