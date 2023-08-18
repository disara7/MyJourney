import 'package:flutter/material.dart';
import 'package:myjourney_flutter/pay.dart';
import 'booking.dart';

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
        body: SingleChildScrollView(
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
              const Row(
                children: [
                  Padding(
                    padding: EdgeInsets.only(left: 24),
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
                  const Padding(
                    padding: EdgeInsets.only(left: 24),
                  ),
                  for (var i = 0; i < 5; i++)
                    const Icon(
                      Icons.star,
                      color: Color.fromARGB(255, 235, 192, 18),
                    ),
                  const Spacer(),
                  const Text(
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
              const SizedBox(height: 5),
              const Row(
                children: [
                  const Padding(
                    padding: EdgeInsets.only(left: 24),
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
                        "From Mars: approximately 5 kilometers east \nof Pink Valley beach",
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
                    onPressed: () => navigateTopay(context, pay()),
                    style: ButtonStyle(
                      backgroundColor: MaterialStateProperty.all<Color>(
                          const Color(0xff1d9e9e)),
                      fixedSize:
                          MaterialStateProperty.all<Size>(const Size(70, 30)),
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
              Row(
                children: [
                  const Padding(
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
              Row(
                children: [
                  const Padding(
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

void navigateTopay(BuildContext context, Widget payWidget) {
  Navigator.push(
    context,
    MaterialPageRoute(builder: (context) => pay()),
  );
}
