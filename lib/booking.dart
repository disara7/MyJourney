import 'package:flutter/material.dart';
import 'package:myjourney_flutter/travelcard.dart';

class booking extends StatefulWidget {
  const booking({super.key});

  @override
  _bookingState createState() => _bookingState();
}

class _bookingState extends State<booking> {
  List<String> urls = [
    'Assets/images/gvhotel.png',
    'Assets/images/gvhotel.png',
    'Assets/images/moonview.png',
    'Assets/images/moonview.png',
    '../Assets/images/gvhotel.png',
    '../Assets/images/gvhotel.png',
    '../Assets/images/gvhotel.png',
    '../Assets/images/gvhotel.png',
    '../Assets/images/gvhotel.png',
    '../Assets/images/gvhotel.png'
  ];
  //sometime we can face some http request erreur if the owner of the picture delted it or the url is not available
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
                    Icons.arrow_back_ios_new,
                    color: Color(0xff1d9e9e),
                  ),
                ),
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
          body: Padding(
            padding:
                const EdgeInsets.symmetric(vertical: 8.0, horizontal: 24.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Material(
                  elevation: 10.0,
                  color: Color.fromARGB(255, 88, 88, 88),
                  borderRadius: BorderRadius.circular(30.0),
                  shadowColor: Color.fromARGB(84, 161, 161, 161),
                  child: const TextField(
                    textAlign: TextAlign.start,
                    textAlignVertical: TextAlignVertical.center,
                    decoration: InputDecoration(
                      hintText: "Search for Hotel, Flight...",
                      prefixIcon: Icon(
                        Icons.search,
                        color: Colors.black54,
                      ),
                      border: InputBorder.none,
                    ),
                  ),
                ),
                const SizedBox(height: 10.0),
                Row(
                  children: [
                    const Text(
                      "CHOOSE YOUR STAY",
                      style: TextStyle(
                        color: Color(0xff1d9e9e),
                        fontSize: 20.0,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                    // IconButton(
                    //   onPressed: () {},
                    //   icon: const Icon(
                    //     Icons.toc,
                    //     color: Color(0xff1d9e9e),
                    //   ),
                    // ),
                  ],
                ),
                const SizedBox(height: 10.0),
                const Text(
                  "Here are some affordable hotels where you can experience a comfortable stay for your 3 nights at Pink Valley",
                  style: TextStyle(
                    color: Color.fromARGB(255, 114, 114, 114),
                    fontSize: 12.0,
                    fontWeight: FontWeight.w400,
                  ),
                ),
                //Now let's Add a Tabulation bar
                DefaultTabController(
                  length: 3,
                  child: Expanded(
                    child: Column(
                      children: [
                        const TabBar(
                          indicatorColor: Color(0xff1d9e9e),
                          unselectedLabelColor: Color(0xFF555555),
                          labelColor: Color(0xff1d9e9e),
                          labelPadding: EdgeInsets.symmetric(horizontal: 8.0),
                          tabs: [
                            Tab(
                              text: "Recommended",
                            ),
                            Tab(
                              text: "Promotions",
                            ),
                            Tab(
                              text: "Favorites",
                            ),
                          ],
                        ),
                        const SizedBox(
                          height: 20.0,
                        ),
                        SizedBox(
                          height: 165.0,
                          child: TabBarView(
                            children: [
                              //Now let's create our first tab page
                              ListView(
                                scrollDirection: Axis.horizontal,
                                children: [
                                  travelCard(
                                      'Assets/images/gvhotel.png',
                                      "Grand Valley Hotel",
                                      "2km from Valley",
                                      3,
                                      "150"),
                                  travelCard('Assets/images/moonview.png',
                                      "Space Stay", "Italy", 4, "150"),
                                  travelCard('Assets/images/moonview.png',
                                      "Safari Hotel", "Africa", 5, "150"),
                                ],
                              ),
                              ListView(
                                scrollDirection: Axis.horizontal,
                                children: [
                                  //Here you can add what ever you want
                                  travelCard(
                                      urls[6], "Visit Rome", "Italy", 4, "150"),
                                  travelCard(urls[8], "Visit Sidi bou Said",
                                      "Tunsia", 4, "150"),
                                ],
                              ),
                              Container(
                                child: ListView(
                                  scrollDirection: Axis.horizontal,
                                  children: const [],
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                const Text(
                  "CHOOSE YOUR TRANSPORT",
                  style: TextStyle(
                    color: Color(0xff1d9e9e),
                    fontSize: 20.0,
                    fontWeight: FontWeight.w600,
                  ),
                ),
                const SizedBox(height: 10.0),
                const Text(
                  "Here are some affordable modes of transport that will provide you with a comfortable journey to Pink Valley",
                  style: TextStyle(
                    color: Color.fromARGB(255, 114, 114, 114),
                    fontSize: 12.0,
                    fontWeight: FontWeight.w400,
                  ),
                ),
                DefaultTabController(
                  length: 3,
                  child: Expanded(
                    child: Column(
                      children: [
                        const TabBar(
                          indicatorColor: Color(0xff1d9e9e),
                          unselectedLabelColor: Color(0xFF555555),
                          labelColor: Color(0xff1d9e9e),
                          labelPadding: EdgeInsets.symmetric(horizontal: 8.0),
                          tabs: [
                            Tab(
                              text: "Recommended",
                            ),
                            Tab(
                              text: "Promotions",
                            ),
                            Tab(
                              text: "Favorites",
                            ),
                          ],
                        ),
                        const SizedBox(
                          height: 20.0,
                        ),
                        SizedBox(
                          height: 165.0,
                          child: TabBarView(
                            children: [
                              //Now let's create our first tab page
                              Container(
                                child: ListView(
                                  scrollDirection: Axis.horizontal,
                                  children: [
                                    //Now let's add and test our first card
                                    travelCard(urls[0], "R3G2 Space Car",
                                        "Caroline", 3, "150"),
                                    travelCard(urls[5], "Plaza Hotel", "Italy",
                                        4, "150"),
                                    travelCard(urls[2], "Safari Hotel",
                                        "Africa", 5, "150"),
                                  ],
                                ),
                              ),
                              Container(
                                child: ListView(
                                  scrollDirection: Axis.horizontal,
                                  children: [
                                    //Here you can add what ever you want
                                    travelCard(urls[6], "Visit Rome", "Italy",
                                        4, "150"),
                                    travelCard(urls[8], "Visit Sidi bou Said",
                                        "Tunsia", 4, "150"),
                                  ],
                                ),
                              ),
                              Container(
                                child: ListView(
                                  scrollDirection: Axis.horizontal,
                                  children: const [],
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                )
              ],
            ),
          ),
          // bottomNavigationBar: BottomNavigationBar(
          //   unselectedItemColor: const Color(0xFFB7B7B7),
          //   selectedItemColor: const Color(0xFFFE8C68),
          //   items: [
          //     const BottomNavigationBarItem(
          //       icon: Icon(Icons.home),
          //       title: Text("Home"),
          //     ),
          //     const BottomNavigationBarItem(
          //       icon: Icon(Icons.bookmark),
          //       // title: Text("BookMark"),
          //     ),
          //     const BottomNavigationBarItem(
          //       icon: Icon(Icons.location_on),
          //       // title: Text("Destination"),
          //     ),
          //     const BottomNavigationBarItem(
          //       icon: Icon(Icons.notifications),
          //       // title: Text("Notification"),
          //     ),
          //   ],
          // ),
        ));
  }
}
