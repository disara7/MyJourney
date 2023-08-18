import 'package:flutter/material.dart';

class vsuccess extends StatefulWidget {
  const vsuccess({super.key});

  @override
  _vsuccessState createState() => _vsuccessState();
}

class _vsuccessState extends State<vsuccess> {
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
                //mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Column(
                    children: [
                      Spacer(),
                      Padding(padding: EdgeInsets.only(left: 30)),
                      Text(
                        "INTERGALACTIC BOARDING PASS",
                        style: TextStyle(
                          color: Color.fromARGB(255, 2, 136, 203),
                          fontSize: 20.0,
                          fontWeight: FontWeight.w500,
                        ),
                        textAlign: TextAlign.center,
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      Image(image: AssetImage('Assets/images/ticketbg.png')),
                      SizedBox(
                        height: 20,
                      ),
                      Text(
                        "A confirmation email will be sent to \nyou shortly.",
                        style: TextStyle(
                          color: Color.fromARGB(255, 196, 196, 196),
                          fontSize: 16.0,
                          fontWeight: FontWeight.w500,
                        ),
                        textAlign: TextAlign.center,
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 30,
                  ),
                  Row(
                    children: [
                      Padding(padding: EdgeInsets.only(left: 100)),
                      Center(
                          child: ElevatedButton(
                              style: ButtonStyle(
                                  alignment: Alignment.center,
                                  backgroundColor: MaterialStatePropertyAll(
                                      Color(0xff1d9e9e)),
                                  fixedSize:
                                      MaterialStatePropertyAll(Size(150, 30))),
                              onPressed: null,
                              child: Text(
                                "CONTINUE",
                                style: TextStyle(color: Colors.black),
                              )))
                    ],
                  )
                ]),
          ),
        ));
  }
}
