import 'package:flutter/material.dart';
import 'package:sandbox_flutter/widgets/buses.dart';
import 'package:sandbox_flutter/widgets/description.dart';
import 'package:sandbox_flutter/widgets/details_card.dart';
import 'package:sandbox_flutter/widgets/footer.dart';
import 'package:sandbox_flutter/widgets/header.dart';
import 'package:sandbox_flutter/widgets/offers.dart';
import '../constants/mockdata.dart';

class Layout extends StatelessWidget {
  const Layout({super.key, required this.title});
  final String title;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Container(
          child: SafeArea(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: <Widget>[
                //Header Container
                Container(
                    height: 60,
                    padding: EdgeInsets.all(5.0),
                    color: Color(0xFF235449),
                    child: Header()),

                Container(
                  margin: new EdgeInsets.symmetric(horizontal: 195.0),
                  child: Column(
                    children: [
                      Container(
                        margin: EdgeInsets.only(top: 16.0, bottom: 16.0),
                        child: Row(
                          children: [
                            Container(
                              child: Text(
                                "Bus Booking",
                                style: TextStyle(
                                  fontSize: 30.0,
                                ),
                              ),
                            ),
                            Padding(
                              padding: EdgeInsets.only(left: 66.0),
                              child: Container(
                                child: Text(
                                    "Bus Ticket Booking.Travelling with a group? Hire a bus."),
                              ),
                            )
                          ],
                        ),
                      ),

                      //header component
                      Container(child: DetailsCard())
                    ],
                  ),
                ),
                //Body Container

                //offers
                Container(
                    margin: new EdgeInsets.symmetric(horizontal: 190.0),
                    child: Card(
                      child: Container(
                        padding: EdgeInsets.all(10.0),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text("Offers",
                                style: TextStyle(
                                    fontSize: 19.0,
                                    fontWeight: FontWeight.bold)),
                            Container(
                              margin: EdgeInsets.only(top: 16.0),
                              height: 180.0,
                              child: Offers(Data: offerData),
                            ),
                            Container(
                              margin: EdgeInsets.only(top: 16.0),
                              height: 180.0,
                              child: Offers(Data: offerData1),
                            )
                          ],
                        ),
                      ),
                    )),

                //available buses
                Container(
                  padding: EdgeInsets.only(top: 20.0),
                  margin: new EdgeInsets.symmetric(horizontal: 190.0),
                  child: Card(
                      // color: Colors.transparent,
                      child: Padding(
                    padding: const EdgeInsets.all(18.0),
                    child: Container(
                        child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Available Bus(5)",
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 19.0,
                          ),
                        ),
                        Container(child: Buses(availableBuses: availableBuses)),
                        Container(
                            child: Buses(availableBuses: availableBuses1)),
                        Container(
                            child: Buses(availableBuses: availableBuses2)),
                        Container(
                            child: Buses(availableBuses: availableBuses3)),
                        Container(
                            child: Buses(availableBuses: availableBuses4)),
                      ],
                    )),
                  )),
                ),

                //description

                Container(
                  padding: EdgeInsets.only(top: 20.0),
                  margin: new EdgeInsets.symmetric(horizontal: 190.0),
                  child: Description(),
                ),

                // Footer Container
                Padding(
                  padding: EdgeInsets.only(top: 20.0),
                  child: Container(color: Color(0xFF235449), child: Footer()),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
