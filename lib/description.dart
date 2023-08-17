import 'package:flutter/material.dart';

class description extends StatefulWidget {
  const description({super.key});

  @override
  _descriptionState createState() => _descriptionState();
}

class _descriptionState extends State<description> {
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
        body: Container(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Image.asset(
                'Assets/images/spacestaylarge.png',
                height: 400,
                width: 400,
                //alignment: Alignment.topCenter,
              ),
              Row(
                children: [
                  Spacer(),
                  Text(
                    "USD 164",
                    style: TextStyle(
                      color: Color.fromARGB(255, 196, 196, 196),
                      fontSize: 32.0,
                      fontWeight: FontWeight.w800,
                    ),
                  )
                ],
              ),
              Row(
                children: [
                  Padding(
                    padding:
                        EdgeInsets.symmetric(vertical: 8.0, horizontal: 8.0),
                  ),
                  Text(
                    "Space Stay",
                    style: TextStyle(
                      color: Color.fromARGB(255, 196, 196, 196),
                      fontSize: 26.0,
                      fontWeight: FontWeight.w600,
                    ),
                    textAlign: TextAlign.left,
                  ),
                  Column(
                    children: [
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
                      Spacer(),
                      Text(
                        "Family (4 Members)",
                        style: TextStyle(
                          color: Color.fromARGB(255, 196, 196, 196),
                          fontSize: 14.0,
                          fontWeight: FontWeight.w300,
                        ),
                      ),
                    ],
                  ),
                ],
              ),
              SizedBox(height: 5),
              Row(
                children: [
                  const Padding(
                    padding:
                        EdgeInsets.symmetric(vertical: 8.0, horizontal: 8.0),
                  ),
                  for (var i = 0; i < 5; i++)
                    const Icon(
                      Icons.star,
                      color: Color.fromARGB(255, 235, 192, 18),
                    ),
                ],
              ),
              SizedBox(height: 15),
              Row(
                children: [
                  const Padding(
                    padding:
                        EdgeInsets.symmetric(vertical: 8.0, horizontal: 8.0),
                  ),
                  const Text(
                    "Location: Venus",
                    style: TextStyle(
                      color: Color.fromARGB(255, 196, 196, 196),
                      fontSize: 15.0,
                      fontWeight: FontWeight.w400,
                    ),
                    textAlign: TextAlign.left,
                  ),
                  ElevatedButton(
                    onPressed: () => {},

                    //navigateTodescription(context, description()),
                    style: ButtonStyle(
                      backgroundColor: MaterialStateProperty.all<Color>(
                          const Color(0xff1d9e9e)),
                      fixedSize:
                          MaterialStateProperty.all<Size>(const Size(30, 28)),
                    ),
                    child: const Text(
                      'BOOK',
                      style: TextStyle(
                        fontSize: 12,
                      ),
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 15),
              Column(
                children: [
                  Text(
                    "From Mars: approximately 5 kilometers east of Pink Valley beach",
                    style: TextStyle(
                      color: Color.fromARGB(255, 196, 196, 196),
                      fontSize: 15.0,
                      fontWeight: FontWeight.w300,
                    ),
                  ),
                  SizedBox(height: 15),
                  Text(
                    "Space Stay is an affordable 3 Star hotel located in the heart of Pink Valley. Elegantly-designed yet tasteful and spacious, the rooms have oversized windows offering breathtaking views of the Pink Valley and its other natural habitats which are popular tourist attractions.",
                    style: TextStyle(
                      color: Color.fromARGB(255, 196, 196, 196),
                      fontSize: 15.0,
                      fontWeight: FontWeight.w300,
                    ),
                  ),
                  SizedBox(height: 15),
                  Text(
                    "Guests can leisurely soak in the outdoor swimming pool, wind down at the Senses Spa or work out at the well-equipped gym. The 24-hour butler service ensures immaculate relaxation at all times. ",
                    style: TextStyle(
                      color: Color.fromARGB(255, 196, 196, 196),
                      fontSize: 15.0,
                      fontWeight: FontWeight.w300,
                    ),
                  ),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
