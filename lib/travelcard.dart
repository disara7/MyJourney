
import 'description.dart';
import 'package:flutter/material.dart';

Widget travelCard(String assetImagePath, String hotelName, String location,
    int rating, String price) {
  return Card(
    margin: const EdgeInsets.only(right: 8.0),
    clipBehavior: Clip.antiAlias,
    shape: RoundedRectangleBorder(
      borderRadius: BorderRadius.circular(15.0),
    ),
    elevation: 0.0,
    child: InkWell(
      onTap: () {},
      child: Container(
        //padding: EdgeInsets.only(),
        // width: double.infinity,
        height: double.infinity,
        padding: const EdgeInsets.all(0.2),
        //color: Colors.transparent,
        decoration: const BoxDecoration(
          color: Color.fromARGB(0, 0, 0, 0),
          image: DecorationImage(
            image: AssetImage('Assets/images/gvhotel.png'),
            fit: BoxFit.fill,
            scale: 1,
          ),
        ),

        width: 200.0,
        child: Padding(
          padding: const EdgeInsets.all(14.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  for (var i = 0; i < rating; i++)
                    const Icon(
                      Icons.star,
                      color: Color.fromARGB(255, 235, 192, 18),
                    ),
                  const Spacer(),
                  Text(
                    price,
                    style: const TextStyle(
                      color: Color.fromARGB(255, 196, 196, 196),
                      fontSize: 22.0,
                      fontWeight: FontWeight.w800,
                    ),
                    textAlign: TextAlign.right,
                  ),
                ],
              ),
              Expanded(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.end,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      children: [
                        Text(
                          hotelName,
                          style: const TextStyle(
                            color: Color.fromARGB(255, 196, 196, 196),
                            fontSize: 20.0,
                            fontWeight: FontWeight.w800,
                          ),
                        ),
                        const SizedBox(
                          height: 3.0,
                        ),
                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          location,
                          style: const TextStyle(
                            color: Color.fromARGB(255, 186, 186, 186),
                            fontSize: 12.0,
                            fontWeight: FontWeight.w400,
                          ),
                        ),
                        ElevatedButton(
                          onPressed: () => {},
                          style: ButtonStyle(
                            backgroundColor: MaterialStateProperty.all<Color>(
                                const Color(0xff1d9e9e)),
                            fixedSize: MaterialStateProperty.all<Size>(
                                const Size(24, 28)),
                          ),
                          child: const Text(
                            'BOOK',
                            style: TextStyle(
                              fontSize: 12,
                            ),
                          ),
                        ),
                      ],
                    )
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    ),
  );
}

void navigateTodescription(BuildContext context, Widget descriptionWidget) {
  Navigator.push(
    context,
    MaterialPageRoute(builder: (context) => const description()),
  );
}
