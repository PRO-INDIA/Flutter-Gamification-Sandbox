import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:progamification/progamification.dart';
import 'package:flutter_svg/flutter_svg.dart';
import '../environment/environment.dart';
import '../screen/rate_review.dart';

class Header extends StatefulWidget {
  const Header({super.key});

  @override
  State<Header> createState() => _HeaderState();
}

class _HeaderState extends State<Header> {
  bool _isCardShown = false;
  void _toggleCard() {
    setState(() {
      _isCardShown = !_isCardShown;
    });
  }

  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    Size screenSize = MediaQuery.of(context).size;

    final width = screenSize.width;
    return Container(
      margin: new EdgeInsets.symmetric(horizontal: width > 1100 ? 190.0 : 20),
      child: Container(
          child:
              Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
        Row(
          children: [
            Image.network(
              "https://stagegamificationui.blob.core.windows.net/sandbox-assets/flag_image.png?sv=2021-10-04&st=2023-04-25T08%3A24%3A07Z&se=2026-09-26T08%3A24%3A00Z&sr=b&sp=r&sig=bw%2B%2F0Jk6Z74H5WYtzBWbHHyW7WQP%2F2vXDLmdGDDtYUU%3D",
            ),
            Padding(
              padding: const EdgeInsets.only(left: 18.0),
              child: Text(
                "PRO gami",
                style: TextStyle(
                    color: Colors.white, fontSize: width > 900 ? 30 : 24),
              ),
            ),
          ],
        ),
        Row(
          crossAxisAlignment: CrossAxisAlignment.end,
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            PopupMenuButton(
              constraints: BoxConstraints(minWidth: 300.0, minHeight: 500.0),
              child: Container(
                  child: Padding(
                padding: const EdgeInsets.only(bottom: 8.0, right: 8.0),
                child: Text(
                  "My Trips",
                  style: TextStyle(color: Colors.white),
                ),
              )),
              itemBuilder: (BuildContext context) {
                return [
                  PopupMenuItem(
                    child: Padding(
                      padding: const EdgeInsets.all(18.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            'My Trips',
                            style: TextStyle(
                              fontSize: 20.0,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          Container(
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(30.0),
                              border: Border.all(
                                color: Colors.red,
                                width: 1.5,
                              ),
                            ),
                            child: IconButton(
                              icon: Icon(Icons.close_sharp),
                              color: Colors.red,
                              onPressed: () {
                                Navigator.pop(context);
                              },
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  PopupMenuItem(
                    child: Container(
                      decoration: BoxDecoration(
                        border: Border(
                          top: BorderSide(
                            width: 1,
                            color: Colors.grey,
                          ),
                          bottom: BorderSide(
                            width: 1,
                            color: Colors.grey,
                          ),
                        ),
                      ),
                      child: Row(
                        children: [
                          Container(
                            child: Padding(
                              padding: EdgeInsets.only(
                                  top: 18.0,
                                  bottom: 18.0,
                                  left: width < 900 ? 5 : 18,
                                  right: width < 900 ? 5 : 30),
                              child: Column(
                                children: [
                                  Padding(
                                    padding: const EdgeInsets.only(top: 8.0),
                                    child: Text(
                                      "20",
                                      style: TextStyle(
                                          fontSize: 20.0,
                                          fontWeight: FontWeight.bold),
                                    ),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.only(top: 8.0),
                                    child: Text(
                                      "April 2023",
                                      style: TextStyle(fontSize: 14.0),
                                    ),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.only(top: 8.0),
                                    child: Text(
                                      "Thursday",
                                      style: TextStyle(
                                          fontWeight: FontWeight.bold,
                                          fontSize: 14.0),
                                    ),
                                  )
                                ],
                              ),
                            ),
                          ),
                          Container(
                            width: width > 365 ? width > 900 ? 300: 280: 230,
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Padding(
                                  padding: const EdgeInsets.only(top: 10.0),
                                  child: Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      Text(
                                        "Bus Ticket",
                                        style: TextStyle(fontSize: 13),
                                      ),
                                      Text(
                                        "Confirmed",
                                        style: TextStyle(
                                            fontSize: 13, color: Colors.green),
                                      )
                                    ],
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(
                                      top: 8.0, bottom: 8.0),
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Text(
                                        "Chennai - Madurai",
                                        style: TextStyle(
                                            fontWeight: FontWeight.bold,
                                            fontSize: 16.0),
                                      ),
                                      Text(
                                        "YBM Travels",
                                        style: TextStyle(fontSize: 13),
                                      )
                                    ],
                                  ),
                                ),
                                Container(
                                  decoration: BoxDecoration(
                                    border: Border(
                                      top: BorderSide(
                                        width: 1,
                                        color: Colors.grey,
                                      ),
                                    ),
                                  ),
                                  child: Padding(
                                    padding: const EdgeInsets.only(
                                      top: 14.0,
                                      bottom: 18.0,
                                    ),
                                    child: Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      children: [
                                        Text(
                                          "Boarding:kolathur",
                                          style: TextStyle(fontSize: 13),
                                        ),
                                        ElevatedButton(
                                            child: Text(
                                              "Rate & Review",
                                              style: TextStyle(
                                                  color: Colors.white),
                                            ),
                                            onPressed: () {
                                              Navigator.push(
                                                context,
                                                MaterialPageRoute(
                                                    builder: (context) =>
                                                        RateReview(
                                                          travalsName:
                                                              "YBM Travels",
                                                          ticketId:
                                                              "3445445345",
                                                          startPlace: "Chennai",
                                                          endplace: "Madurai",
                                                          startcity: "kolathur",
                                                          endcity:
                                                              "Mattuthavani",
                                                        )),
                                              );
                                            },
                                            style: ElevatedButton.styleFrom(
                                              elevation: 10,
                                              shape: RoundedRectangleBorder(
                                                borderRadius:
                                                    BorderRadius.circular(20),
                                              ),
                                              primary: Colors.black,
                                            ))
                                      ],
                                    ),
                                  ),
                                )
                              ],
                            ),
                          )
                        ],
                      ),
                    ),
                  ),
                  PopupMenuItem(
                    child: Container(
                      decoration: BoxDecoration(
                        border: Border(
                          top: BorderSide(
                            width: 1,
                            color: Colors.grey,
                          ),
                          bottom: BorderSide(
                            width: 1,
                            color: Colors.grey,
                          ),
                        ),
                      ),
                      child: Row(
                        children: [
                          Container(
                            child: Padding(
                              padding: EdgeInsets.only(
                                  top: 18.0,
                                  bottom: 18.0,
                                  left: width < 900 ? 5 : 18,
                                  right: width < 900 ? 5 : 30),
                              child: Column(
                                children: [
                                  Padding(
                                    padding: const EdgeInsets.only(top: 8.0),
                                    child: Text(
                                      "20",
                                      style: TextStyle(
                                          fontSize: 20.0,
                                          fontWeight: FontWeight.bold),
                                    ),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.only(top: 8.0),
                                    child: Text(
                                      "April 2023",
                                      style: TextStyle(fontSize: 14.0),
                                    ),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.only(top: 8.0),
                                    child: Text(
                                      "Thursday",
                                      style: TextStyle(
                                          fontWeight: FontWeight.bold,
                                          fontSize: 14.0),
                                    ),
                                  )
                                ],
                              ),
                            ),
                          ),
                          Container(
                            width: width > 365 ? width > 900 ? 300: 280: 230,
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Padding(
                                  padding: const EdgeInsets.only(top: 10.0),
                                  child: Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      Text(
                                        "Bus Ticket",
                                        style: TextStyle(fontSize: 13),
                                      ),
                                      Text(
                                        "Confirmed",
                                        style: TextStyle(
                                            fontSize: 13, color: Colors.green),
                                      )
                                    ],
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(
                                      top: 8.0, bottom: 8.0),
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Text(
                                        "Chennai - Trichy",
                                        style: TextStyle(
                                            fontWeight: FontWeight.bold,
                                            fontSize: 16.0),
                                      ),
                                      Text(
                                        "KPN Travels",
                                        style: TextStyle(fontSize: 13),
                                      )
                                    ],
                                  ),
                                ),
                                Container(
                                  decoration: BoxDecoration(
                                    border: Border(
                                      top: BorderSide(
                                        width: 1,
                                        color: Colors.grey,
                                      ),
                                    ),
                                  ),
                                  child: Padding(
                                    padding: const EdgeInsets.only(
                                      top: 14.0,
                                      bottom: 18.0,
                                    ),
                                    child: Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      children: [
                                        Text(
                                          "Boarding:CMBT",
                                          style: TextStyle(fontSize: 13),
                                        ),
                                        ElevatedButton(
                                            child: Text(
                                              "Rate & Review",
                                              style: TextStyle(
                                                  color: Colors.white),
                                            ),
                                            onPressed: () {
                                              Navigator.push(
                                                context,
                                                MaterialPageRoute(
                                                    builder: (context) =>
                                                        RateReview(
                                                          travalsName:
                                                              "KPN Travels",
                                                          ticketId:
                                                              "7298348942",
                                                          startPlace: "Chennai",
                                                          endplace: "Trichy",
                                                          startcity: "CMBT",
                                                          endcity:
                                                              "Central Bus Stop",
                                                        )),
                                              );
                                            },
                                            style: ElevatedButton.styleFrom(
                                              elevation: 10,
                                              shape: RoundedRectangleBorder(
                                                borderRadius:
                                                    BorderRadius.circular(20),
                                              ),
                                              primary: Colors.black,
                                            ))
                                      ],
                                    ),
                                  ),
                                )
                              ],
                            ),
                          )
                        ],
                      ),
                    ),
                  ),
                  PopupMenuItem(
                    child: Container(
                      decoration: BoxDecoration(
                        border: Border(
                          top: BorderSide(
                            width: 1,
                            color: Colors.grey,
                          ),
                          bottom: BorderSide(
                            width: 1,
                            color: Colors.grey,
                          ),
                        ),
                      ),
                      child: Row(
                        children: [
                          Container(
                            child: Padding(
                              padding: EdgeInsets.only(
                                  top: 18.0,
                                  bottom: 18.0,
                                  left: width < 900 ? 5 : 18,
                                  right: width < 900 ? 5 : 30),
                              child: Column(
                                children: [
                                  Padding(
                                    padding: const EdgeInsets.only(top: 8.0),
                                    child: Text(
                                      "20",
                                      style: TextStyle(
                                          fontSize: 20.0,
                                          fontWeight: FontWeight.bold),
                                    ),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.only(top: 8.0),
                                    child: Text(
                                      "April 2023",
                                      style: TextStyle(fontSize: 14.0),
                                    ),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.only(top: 8.0),
                                    child: Text(
                                      "Thursday",
                                      style: TextStyle(
                                          fontWeight: FontWeight.bold,
                                          fontSize: 14.0),
                                    ),
                                  )
                                ],
                              ),
                            ),
                          ),
                          Container(
                             width: width > 365 ? width > 900 ? 300: 280: 230,
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Padding(
                                  padding: const EdgeInsets.only(top: 10.0),
                                  child: Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      Text(
                                        "Bus Ticket",
                                        style: TextStyle(fontSize: 13),
                                      ),
                                      Text(
                                        "Confirmed",
                                        style: TextStyle(
                                            fontSize: 13, color: Colors.green),
                                      )
                                    ],
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(
                                      top: 8.0, bottom: 8.0),
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Text(
                                        "Chennai - Bangalore",
                                        style: TextStyle(
                                            fontWeight: FontWeight.bold,
                                            fontSize: 16.0),
                                      ),
                                      Text(
                                        " Vignesh TAT Travels",
                                        style: TextStyle(fontSize: 13),
                                      )
                                    ],
                                  ),
                                ),
                                Container(
                                  decoration: BoxDecoration(
                                    border: Border(
                                      top: BorderSide(
                                        width: 1,
                                        color: Colors.grey,
                                      ),
                                    ),
                                  ),
                                  child: Padding(
                                    padding: const EdgeInsets.only(
                                      top: 14.0,
                                      bottom: 18.0,
                                    ),
                                    child: Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      children: [
                                        Text(
                                          "Boarding:Guindy",
                                          style: TextStyle(fontSize: 13),
                                        ),
                                        ElevatedButton(
                                            child: Text(
                                              "Rate & Review",
                                              style: TextStyle(
                                                  color: Colors.white),
                                            ),
                                            onPressed: () {
                                              Navigator.push(
                                                context,
                                                MaterialPageRoute(
                                                    builder: (context) =>
                                                        RateReview(
                                                          travalsName:
                                                              "Vignesh TAT Travels",
                                                          ticketId:
                                                              "2033940393",
                                                          startPlace: "Chennai",
                                                          endplace: "Bangalore",
                                                          startcity: "Guindy",
                                                          endcity:
                                                              "Main Bus Stop",
                                                        )),
                                              );
                                            },
                                            style: ElevatedButton.styleFrom(
                                              elevation: 10,
                                              shape: RoundedRectangleBorder(
                                                borderRadius:
                                                    BorderRadius.circular(20),
                                              ),
                                              primary: Colors.black,
                                            ))
                                      ],
                                    ),
                                  ),
                                )
                              ],
                            ),
                          )
                        ],
                      ),
                    ),
                  ),
                ];
              },
            ),
            Padding(
              padding: const EdgeInsets.only(left: 8.0),
              child: LeaderBoard(userId, applicationId),
            )
          ],
        ),
      ])),
    );
  }
}
