import 'description.dart';
import 'package:flutter/material.dart';
import 'package:myjourney_flutter/description.dart';
import 'booking.dart';

Widget travelCard(String assetImagePath, String hotelName, String location,
    int rating, String price) {
  return Card(
    margin: EdgeInsets.only(right: 22.0),
    clipBehavior: Clip.antiAlias,
    shape: RoundedRectangleBorder(
      borderRadius: BorderRadius.circular(15.0),
    ),
    elevation: 0.0,
    child: InkWell(
      onTap: () {},
      child: Container(
        decoration: const BoxDecoration(
            image: DecorationImage(
          image: AssetImage('Assets/images/gvhotel.png'),
          fit: BoxFit.cover,
          scale: 2.0,
        )),
        width: 250.0,
        child: Padding(
          padding: EdgeInsets.all(12.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  for (var i = 0; i < rating; i++)
                    Icon(
                      Icons.star,
                      color: Color.fromARGB(255, 235, 192, 18),
                    ),
                  Spacer(),
                  Text(
                    price,
                    style: TextStyle(
                      color: const Color.fromARGB(255, 196, 196, 196),
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
                          style: TextStyle(
                            color: const Color.fromARGB(255, 196, 196, 196),
                            fontSize: 20.0,
                            fontWeight: FontWeight.w800,
                          ),
                        ),
                        SizedBox(
                          height: 3.0,
                        ),
                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          location,
                          style: TextStyle(
                            color: const Color.fromARGB(255, 186, 186, 186),
                            fontSize: 12.0,
                            fontWeight: FontWeight.w400,
                          ),
                        ),
                        ElevatedButton(
                          onPressed: () => {},
                          //navigateTodescription(context, description()),
                          style: ButtonStyle(
                            backgroundColor: MaterialStateProperty.all<Color>(
                                Color(0xff1d9e9e)),
                            fixedSize: MaterialStateProperty.all<Size>(
                                const Size(70, 38)),
                          ),
                          child: Text(
                            'BOOK',
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
    MaterialPageRoute(builder: (context) => description()),
  );
}
