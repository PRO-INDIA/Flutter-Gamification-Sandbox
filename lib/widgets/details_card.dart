import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:sandbox_flutter/screen/rate_review.dart';

class DetailsCard extends StatelessWidget {
  const DetailsCard({super.key});

  @override
  Widget build(BuildContext context) {
    Size screenSize = MediaQuery.of(context).size;

    final width = screenSize.width;
    return Container(
      child: Padding(
        padding: const EdgeInsets.only(top: 18.0, bottom: 18.9),
        child: Container(
          child: Card(
              child: width > 900
                  ? Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Expanded(
                          child: Container(
                            padding: EdgeInsets.only(
                                top: 20.0, bottom: 20.0, left: 10.0),
                            decoration: BoxDecoration(
                              border: Border(
                                right: BorderSide(
                                  width: 0.4,
                                  color: Colors.grey,
                                ),
                              ),
                            ),
                            child: Container(
                              child: Padding(
                                padding: const EdgeInsets.only(left: 12.0),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text("From",
                                        style: TextStyle(
                                            fontWeight: FontWeight.bold)),
                                    Text("Chennai",
                                        style: TextStyle(
                                            fontSize: 26.0,
                                            color: Color(0xFF235449),
                                            fontWeight: FontWeight.bold)),
                                    Text("Tamilnadu"),
                                  ],
                                ),
                              ),
                            ),
                          ),
                          flex: 2,
                        ),
                        Expanded(
                          child: Container(
                            padding: EdgeInsets.only(
                                top: 20.0, bottom: 20.0, left: 10.0),
                            decoration: BoxDecoration(
                              border: Border(
                                right: BorderSide(
                                  width: 0.4,
                                  color: Colors.grey,
                                ),
                              ),
                            ),
                            child: Container(
                              child: Padding(
                                padding: const EdgeInsets.only(left: 12.0),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text("To",
                                        style: TextStyle(
                                            fontWeight: FontWeight.bold)),
                                    Text("Kochi",
                                        style: TextStyle(
                                            fontSize: 23.0,
                                            color: Color(0xFF235449),
                                            fontWeight: FontWeight.bold)),
                                    Text("Kerala"),
                                  ],
                                ),
                              ),
                            ),
                          ),
                          flex: 2,
                        ),
                        Expanded(
                          child: Container(
                            padding: EdgeInsets.only(
                                top: 20.0, bottom: 20.0, left: 10.0),
                            decoration: BoxDecoration(
                              border: Border(
                                right: BorderSide(
                                  width: 0.4,
                                  color: Colors.grey,
                                ),
                              ),
                            ),
                            child: Container(
                              child: Padding(
                                padding: const EdgeInsets.only(left: 12.0),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text("Date",
                                        style: TextStyle(
                                            fontWeight: FontWeight.bold)),
                                    Text("23 feb",
                                        style: TextStyle(
                                            fontSize: 23.0,
                                            color: Color(0xFF235449),
                                            fontWeight: FontWeight.bold)),
                                    Text("Tuesday"),
                                  ],
                                ),
                              ),
                            ),
                          ),
                          flex: 2,
                        ),
                        Container(
                          padding: EdgeInsets.symmetric(
                              horizontal: 20, vertical: 20),
                          child: Container(
                            width: 200,
                            child: ElevatedButton(
                              style: ElevatedButton.styleFrom(
                                padding: EdgeInsets.symmetric(
                                    horizontal: 25, vertical: 25),
                                primary: Color.fromARGB(255, 230, 151, 6),
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(40),
                                ),
                              ),
                              onPressed: () {},
                              child: const Text(
                                'Search',
                                style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    fontSize: 23.0),
                              ),
                            ),
                          ),
                        ),
                      ],
                    )
                  : Container(
                      width: MediaQuery.of(context).size.width,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Container(
                            padding: EdgeInsets.only(
                                top: 20.0, bottom: 20.0, left: 10.0),
                            child: Container(
                              width: MediaQuery.of(context).size.width,
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text("From",
                                      style: TextStyle(
                                          fontWeight: FontWeight.bold)),
                                  Text("Chennai",
                                      style: TextStyle(
                                          fontSize: 23.0,
                                          color: Color(0xFF235449),
                                          fontWeight: FontWeight.bold)),
                                  Text("Tamilnadu"),
                                ],
                              ),
                            ),
                          ),
                          Container(
                            width: MediaQuery.of(context).size.width,
                            padding: EdgeInsets.only(
                                top: 20.0, bottom: 20.0, left: 10.0),
                            decoration: BoxDecoration(
                              border: Border(
                                top: BorderSide(
                                  width: 0.4,
                                  color: Colors.grey,
                                ),
                              ),
                            ),
                            child: Container(
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text("To",
                                      style: TextStyle(
                                          fontWeight: FontWeight.bold)),
                                  Text("Kochi",
                                      style: TextStyle(
                                          fontSize: 23.0,
                                          color: Color(0xFF235449),
                                          fontWeight: FontWeight.bold)),
                                  Text("Kerala"),
                                ],
                              ),
                            ),
                          ),
                          Container(
                            width: MediaQuery.of(context).size.width,
                            padding: EdgeInsets.only(
                                top: 20.0, bottom: 20.0, left: 10.0),
                            decoration: BoxDecoration(
                              border: Border(
                                top: BorderSide(
                                  width: 0.4,
                                  color: Colors.grey,
                                ),
                              ),
                            ),
                            child: Container(
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text("Date",
                                      style: TextStyle(
                                          fontWeight: FontWeight.bold)),
                                  Text("23 feb",
                                      style: TextStyle(
                                          fontSize: 23.0,
                                          color: Color(0xFF235449),
                                          fontWeight: FontWeight.bold)),
                                  Text("Tuesday"),
                                ],
                              ),
                            ),
                          ),
                          Container(
                            width: MediaQuery.of(context).size.width,
                            decoration: BoxDecoration(
                              border: Border(
                                top: BorderSide(
                                  width: 0.4,
                                  color: Colors.grey,
                                ),
                              ),
                            ),
                            padding: EdgeInsets.symmetric(
                                horizontal: 20, vertical: 20),
                            child: Container(
                              width: 200,
                              child: ElevatedButton(
                                style: ElevatedButton.styleFrom(
                                  padding: EdgeInsets.symmetric(
                                      horizontal: 25, vertical: 25),
                                  primary: Color.fromARGB(255, 230, 151, 6),
                                  shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(40),
                                  ),
                                ),
                                onPressed: () {},
                                child: const Text(
                                  'Search',
                                  style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      fontSize: 23.0),
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    )),
        ),
      ),
    );
  }
}
