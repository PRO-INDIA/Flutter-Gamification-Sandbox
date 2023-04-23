import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:sandbox_flutter/screen/rate_review.dart';

class DetailsCard extends StatelessWidget {
  const DetailsCard({super.key});

  @override
  
  Widget build(BuildContext context) {
    return Container(
      child: Padding(
        padding: const EdgeInsets.only(top: 18.0, bottom: 18.9),
        child: Container(
          child: Card(
              child: Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Expanded(
                child: Container(
                  padding: EdgeInsets.only(top: 20.0, bottom: 20.0, left: 10.0),
                  decoration: BoxDecoration(
                    border: Border(
                      right: BorderSide(
                        width: 0.4,
                        color: Colors.grey,
                      ),
                    ),
                  ),
                  child: Container(
                    child: Column(
                      children: [
                        Text("From",
                            style: TextStyle(fontWeight: FontWeight.bold)),
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Text("Chennai",
                              style: TextStyle(
                                  fontSize: 23.0,
                                  color: Color(0xFF235449),
                                  fontWeight: FontWeight.bold)),
                        ),
                        Text("Tamilnadu"),
                      ],
                    ),
                  ),
                ),
              ),
              Expanded(
                child: Container(
                  padding: EdgeInsets.only(top: 20.0, bottom: 20.0, left: 10.0),
                  decoration: BoxDecoration(
                    border: Border(
                      right: BorderSide(
                        width: 0.4,
                        color: Colors.grey,
                      ),
                    ),
                  ),
                  child: Container(
                    child: Column(
                      children: [
                        Text("To",
                            style: TextStyle(fontWeight: FontWeight.bold)),
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Text("Kochi",
                              style: TextStyle(
                                  fontSize: 23.0,
                                  color: Color(0xFF235449),
                                  fontWeight: FontWeight.bold)),
                        ),
                        Text("Kerala"),
                      ],
                    ),
                  ),
                ),
              ),
              Expanded(
                child: Container(
                  padding: EdgeInsets.only(top: 20.0, bottom: 20.0, left: 10.0),
                  decoration: BoxDecoration(
                    border: Border(
                      right: BorderSide(
                        width: 0.4,
                        color: Colors.grey,
                      ),
                    ),
                  ),
                  child: Container(
                    child: Column(
                      children: [
                        Text("Date",
                            style: TextStyle(fontWeight: FontWeight.bold)),
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Text("23 feb",
                              style: TextStyle(
                                  fontSize: 23.0,
                                  color: Color(0xFF235449),
                                  fontWeight: FontWeight.bold)),
                        ),
                        Text("Tuesday"),
                      ],
                    ),
                  ),
                ),
              ),
              Container(
                padding: EdgeInsets.symmetric(horizontal: 20, vertical: 20),
                child: Container(
                  width: 200,
                  child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      padding:
                          EdgeInsets.symmetric(horizontal: 25, vertical: 25),
                      primary: Color.fromARGB(255, 230, 151, 6),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(40),
                      ),
                    ),
                    onPressed: () {
                      // Navigator.push(
                      //   context,
                      //   MaterialPageRoute(builder: (context) => RateReview()),
                      // );
                    },
                    child: const Text(
                      'Search',
                      style: TextStyle(
                          fontWeight: FontWeight.bold, fontSize: 23.0),
                    ),
                  ),
                ),
              ),
            ],
          )),
        ),
      ),
    );
  }
}
