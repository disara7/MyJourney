import 'package:flutter/material.dart';
import 'package:myjourney_flutter/hotel_success.dart';
import 'package:myjourney_flutter/vehicle_success.dart';
import 'hotel_success.dart';

class payvehicle extends StatefulWidget {
  const payvehicle({super.key});

  @override
  _payvehicleState createState() => _payvehicleState();
}

class _payvehicleState extends State<payvehicle> {
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
                const Spacer(),
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
                        "G-Submarin3",
                        style: TextStyle(
                          color: Color.fromARGB(255, 196, 196, 196),
                          fontSize: 30.0,
                          fontWeight: FontWeight.w600,
                        ),
                        textAlign: TextAlign.left,
                      ),
                      Spacer(),
                      Text(
                        "USD 1825",
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
                        "Mars to Venus",
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
                        icon: Icon(
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
                              // () => navigateTovsuccess(context, const vsuccess()),
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

void navigateTovsuccess(BuildContext context, Widget vsuccessWidget) {
  Navigator.push(
    context,
    MaterialPageRoute(builder: (context) => const vsuccess()),
  );
}
