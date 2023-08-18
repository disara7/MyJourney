import 'package:flutter/material.dart';
import 'package:myjourney_flutter/pay.dart';
import 'package:myjourney_flutter/payvehicle.dart';

class vehicle extends StatefulWidget {
  const vehicle({super.key});

  @override
  _vehicleState createState() => _vehicleState();
}

class _vehicleState extends State<vehicle> {
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
        body: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Image.asset(
                'Assets/images/submarine.png',
                height: 400,
                width: 800,
                //alignment: Alignment.topCenter,
              ),
              const Row(
                children: [
                  Padding(
                    padding: EdgeInsets.only(left: 24),
                  ),
                  Text(
                    "G-Submarin3",
                    style: TextStyle(
                      color: Color.fromARGB(255, 196, 196, 196),
                      fontSize: 26.0,
                      fontWeight: FontWeight.w600,
                    ),
                    textAlign: TextAlign.left,
                  ),
                  Spacer(),
                  Text(
                    "USD 365",
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
                  const Padding(
                    padding: EdgeInsets.only(left: 24),
                  ),
                  for (var i = 0; i < 4; i++)
                    const Icon(
                      Icons.star,
                      color: Color.fromARGB(255, 235, 192, 18),
                    ),
                  const Spacer(),
                  const Text(
                    "One Way",
                    style: TextStyle(
                      color: Color.fromARGB(255, 196, 196, 196),
                      fontSize: 14.0,
                      fontWeight: FontWeight.w300,
                    ),
                    textAlign: TextAlign.left,
                  ),
                ],
              ),
              const SizedBox(height: 5),
              const Row(
                children: [
                  Padding(
                    padding: EdgeInsets.only(left: 24),
                  ),
                  Text(
                    "Maximum Passengers: 25",
                    style: TextStyle(
                      color: Color.fromARGB(255, 196, 196, 196),
                      fontSize: 15.0,
                      fontWeight: FontWeight.w400,
                    ),
                    textAlign: TextAlign.left,
                  ),
                  Spacer(),
                  Text(
                    "From Mars to Venus",
                    style: TextStyle(
                      color: Color.fromARGB(255, 196, 196, 196),
                      fontSize: 14.0,
                      fontWeight: FontWeight.w300,
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 10),
              Row(
                children: [
                  const Padding(
                    padding: EdgeInsets.only(left: 24),
                  ),
                  RichText(
                    text: const TextSpan(children: <InlineSpan>[
                      WidgetSpan(
                          child: Text(
                        "Lands from Mars: approximately 5 \nkilometers east of Pink Valley beach",
                        textAlign: TextAlign.justify,
                        style: TextStyle(
                          color: Color.fromARGB(255, 196, 196, 196),
                          fontSize: 12.0,
                          fontWeight: FontWeight.w300,
                        ),
                      )),
                    ]),
                  ),
                  const Spacer(),
                  ElevatedButton(
                    onPressed: () => navigateTopayvehicle(context, const pay()),
                    style: ButtonStyle(
                      backgroundColor: MaterialStateProperty.all<Color>(
                          const Color(0xff1d9e9e)),
                      fixedSize:
                          MaterialStateProperty.all<Size>(const Size(120, 30)),
                    ),
                    child: const Text(
                      'BUY TICKETS',
                      style: TextStyle(
                        fontSize: 12,
                      ),
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 15),
              const Row(
                children: [
                  Padding(
                    padding: EdgeInsets.only(left: 24),
                  ),
                  Text(
                    "Space Stay is an affordable 3 Star hotel located in the \nheart of Pink Valley. Elegantly-designed yet tasteful \nand spacious, the rooms have oversized windows \noffering breathtaking views of the Pink Valley and its \nother natural habitats which are popular tourist \nattractions.",
                    style: TextStyle(
                      color: Color.fromARGB(255, 196, 196, 196),
                      fontSize: 15.0,
                      fontWeight: FontWeight.w300,
                    ),
                    textAlign: TextAlign.justify,
                  ),
                ],
              ),
              const SizedBox(height: 15),
              const Row(
                children: [
                  Padding(
                    padding: EdgeInsets.only(left: 24),
                  ),
                  Text(
                    "Guests can leisurely soak in the outdoor swimming \npool, wind down at the Senses Spa or work out at \nthe well-equipped gym. The 24-hour butler service \nensures immaculate relaxation at all times. ",
                    style: TextStyle(
                      color: Color.fromARGB(255, 196, 196, 196),
                      fontSize: 15.0,
                      fontWeight: FontWeight.w300,
                    ),
                    textAlign: TextAlign.justify,
                  ),
                ],
              ),
              const SizedBox(height: 35),
            ],
          ),
        ),
      ),
    );
  }
}

void navigateTopayvehicle(BuildContext context, Widget payvehicleWidget) {
  Navigator.push(
    context,
    MaterialPageRoute(builder: (context) => const payvehicle()),
  );
}
