import 'package:flutter/material.dart';
import 'package:sandbox_flutter/widgets/buses.dart';
import 'package:sandbox_flutter/widgets/description.dart';
import 'package:sandbox_flutter/widgets/details_card.dart';
import 'package:sandbox_flutter/widgets/footer.dart';
import 'package:sandbox_flutter/widgets/header.dart';
import 'package:sandbox_flutter/widgets/offers.dart';
import '../constants/mockdata.dart';
import 'package:shared_preferences/shared_preferences.dart';
import '../constants/sandbox_data.dart';

class Layout extends StatelessWidget {
  const Layout({super.key, required this.title, required this.sandboxResponse});
  final String title;
  final sandboxResponse;
  bool isDesktop(BuildContext context) =>
      MediaQuery.of(context).size.width >= 600;
  bool isMobile(BuildContext context) =>
      MediaQuery.of(context).size.width < 600;

  @override
  Widget build(BuildContext context) {
    Size screenSize = MediaQuery.of(context).size;

    final width = screenSize.width;
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
                    child: Header(sandboxResponce: sandboxResponse)),

                Container(
                  margin: new EdgeInsets.symmetric(
                      horizontal: width > 1100 ? 190.0 : 20),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(
                        margin: EdgeInsets.only(top: 16.0, bottom: 16.0),
                        child: width > 900
                            ? Row(
                                children: [
                                  headContainer(),
                                  Padding(
                                      padding:
                                          EdgeInsets.only(left: 66.0, top: 8.0),
                                      child: headContainer1())
                                ],
                              )
                            : Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [headContainer(), headContainer1()],
                              ),
                      ),

                      //header component
                      Column(
                        children: [
                          Container(child: DetailsCard()),
                        ],
                      )
                    ],
                  ),
                ),
                //Body Container

                //offers
                Container(
                    margin: new EdgeInsets.symmetric(
                        horizontal: width > 1100 ? 190.0 : 20),
                    child: Card(
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10.0),
                        side: BorderSide(
                          color: Colors.grey,
                          width: 0.3,
                        ),
                      ),
                      child: Container(
                        padding: EdgeInsets.symmetric(
                            horizontal: 10.0, vertical: 30),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text("Offers",
                                style: TextStyle(
                                    fontSize: 19.0,
                                    fontWeight: FontWeight.bold)),
                            Container(
                              margin: EdgeInsets.only(top: 16.0),
                              height: 165.0,
                              child: Offers(Data: offerData),
                            ),
                            Container(
                              margin: EdgeInsets.only(top: 16.0),
                              height: 165.0,
                              child: Offers(Data: offerData1),
                            )
                          ],
                        ),
                      ),
                    )),

                //available buses
                Container(
                  padding: EdgeInsets.only(top: 20.0),
                  margin: new EdgeInsets.symmetric(
                      horizontal: width > 1100 ? 190.0 : 20),
                  child: Card(
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10.0),
                        side: BorderSide(
                          color: Colors.grey,
                          width: 0.3,
                        ),
                      ),
                      child: Padding(
                        padding: const EdgeInsets.all(18.0),
                        child: Container(
                            child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "Available bus (5)",
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 19.0,
                              ),
                            ),
                            // ignore: avoid_unnecessary_containers
                            Container(
                                child: Buses(
                                    availableBuses: availableBuses,
                                    sandboxResponce: sandboxResponse)),
                            // ignore: avoid_unnecessary_containers
                            Container(
                                child: Buses(
                                    availableBuses: availableBuses1,
                                    sandboxResponce: sandboxResponse)),
                            // ignore: avoid_unnecessary_containers
                            Container(
                                child: Buses(
                                    availableBuses: availableBuses2,
                                    sandboxResponce: sandboxResponse)),
                            // ignore: avoid_unnecessary_containers
                            Container(
                                child: Buses(
                                    availableBuses: availableBuses3,
                                    sandboxResponce: sandboxResponse)),
                            // ignore: avoid_unnecessary_containers
                            Container(
                                child: Buses(
                                    availableBuses: availableBuses4,
                                    sandboxResponce: sandboxResponse)),
                          ],
                        )),
                      )),
                ),

                //description

                Container(
                  padding: EdgeInsets.only(top: 20.0),
                  margin: new EdgeInsets.symmetric(
                      horizontal: width > 1100 ? 190.0 : 20),
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

  Widget headContainer() {
    return Container(
      child: Text(
        "Bus booking",
        style: TextStyle(fontSize: 30.0, fontWeight: FontWeight.bold),
      ),
    );
  }

  Widget headContainer1() {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 15.0),
      child: RichText(
        text: TextSpan(
          text: 'Bus Ticket Booking.Travelling with a group? ',
          style: TextStyle(color: Colors.black),
          children: <TextSpan>[
            TextSpan(
              text: ' Hire a bus.',
              style: TextStyle(
                  color: Color(0xFF235449),
                  decoration: TextDecoration.underline),
            ),
          ],
        ),
      ),
    );
  }
}
