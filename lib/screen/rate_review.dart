import 'dart:math';

import 'package:confetti/confetti.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:progamification/progamification.dart';
import 'package:sandbox_flutter/widgets/footer.dart';
import 'package:sandbox_flutter/widgets/header.dart';
import 'package:sandbox_flutter/widgets/star_rating.dart';
import '../environment/environment.dart';
import 'layout.dart';

class RateReview extends StatefulWidget {
  const RateReview(
      {super.key,
      required this.travalsName,
      required this.endcity,
      required this.endplace,
      required this.startPlace,
      required this.startcity,
      required this.ticketId,
      required this.sandboxResponce});

  final travalsName;
  final startPlace;
  final startcity;
  final endplace;
  final endcity;
  final ticketId;
  final sandboxResponce;

  @override
  State<RateReview> createState() => _RateReviewState();
}

class _RateReviewState extends State<RateReview> {
  int rating = 0;
  final ConfettiController _controllerBottomCenter =
      ConfettiController(duration: const Duration(seconds: 3));

  void initState() {
    super.initState();
    _controllerBottomCenter.play();
  }

  @override
  Widget build(BuildContext context) {
    Size screenSize = MediaQuery.of(context).size;

    final width = screenSize.width;
    return Scaffold(
      body: SingleChildScrollView(
        child: Container(
          child: SafeArea(
            child: Container(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: <Widget>[
                  Container(
                      padding: EdgeInsets.all(5.0),
                      color: Color(0xFF235449),
                      child: Header(sandboxResponce: widget.sandboxResponce)),

                  //body
                  Container(
                    margin: new EdgeInsets.symmetric(
                        horizontal: width > 1100 ? 190.0 : 20),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Padding(
                          padding:
                              const EdgeInsets.only(top: 18.0, bottom: 18.0),
                          child: Row(
                            children: [
                              Padding(
                                padding:
                                    EdgeInsets.all(width > 900 ? 18.0 : 10),
                                child: IconButton(
                                  icon: Icon(Icons.arrow_back_outlined),
                                  iconSize: 32,
                                  onPressed: () {
                                    Navigator.pop(context);
                                  },
                                ),
                              ),
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text("Rate and Review Your Trip",
                                      style: TextStyle(
                                          fontSize: width > 360 ? 23 : 21,
                                          fontWeight: FontWeight.bold)),
                                  Padding(
                                      padding: EdgeInsets.all(8.0),
                                      child: Text(
                                        "With " + widget.travalsName,
                                        style: TextStyle(
                                          fontSize: 17,
                                        ),
                                      ))
                                ],
                              ),
                            ],
                          ),
                        ),

                        //Rating Card
                        if (width > 1200)
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              RatingCard(width),
                              ReviewCard(width),
                              //Trip Summary Card
                            ],
                          )
                        else
                          Column(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              RatingCard(width),
                              Padding(
                                padding: const EdgeInsets.only(top: 18.0),
                                child: ReviewCard(width),
                              ),
                              //Trip Summary Card
                            ],
                          )
                      ],
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(top: 20.0),
                    child: Container(color: Color(0xFF235449), child: Footer()),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }

  Widget RatingCard(double width) {
    return Card(
        child: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.only(left: 38.0, top: 25, bottom: 20),
              child: Text(
                "Rate your  Experience",
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 17.0),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 25.0, top: 18, bottom: 25),
              child: StarRating(
                onChanged: (index) {
                  if (index == 0) return;
                  setState(() {
                    rating = index;
                  });
                },
                value: rating,
              ),
            ),
          ],
        ),
        Container(
          width: 500,
          decoration: BoxDecoration(
            border: Border(
              top: BorderSide(
                width: 1.0,
                color: Colors.grey,
                style: BorderStyle.solid,
              ),
            ),
          ),
          child: Padding(
            padding: const EdgeInsets.all(30.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "Add Detailed Review",
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 17.0),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 28.0),
                  child: Container(
                    // height: 150,

                    child: TextFormField(
                      decoration: InputDecoration(
                        contentPadding: EdgeInsets.symmetric(vertical: 100),
                        hintText: '',
                        border: OutlineInputBorder(
                            borderRadius:
                                const BorderRadius.all(Radius.circular(7))),
                      ),
                      validator: (value) {
                        if (value!.isEmpty) {
                          return 'Please enter your Details.';
                        }
                        return null;
                      },
                    ),
                  ),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(18.0),
                      child: ElevatedButton(
                        onPressed: () async {
                          await GamificationService.updateGameAction(
                              widget.sandboxResponce['userId'],
                              widget.sandboxResponce['gameId'],
                              '',
                              '');
                          showDialog(
                            context: context,
                            builder: (BuildContext context) {
                              return Container(
                                child: AlertDialog(
                                  icon: Image.asset(
                                    "assets/sucess_icon.png",
                                  ),
                                  title: Text("Glad you Like it"),
                                  content: Container(
                                    child: Row(
                                      children: [
                                        Card(
                                          child: Container(
                                            width: 100,
                                            height: 130,
                                            child: Column(
                                              children: [
                                                Container(
                                                  child: Image.asset(
                                                      "assets/Points.png"),
                                                ),
                                                Text("Points"),
                                                Padding(
                                                  padding:
                                                      const EdgeInsets.only(
                                                          bottom: 8.0),
                                                  child: Text("20"),
                                                ),
                                              ],
                                            ),
                                          ),
                                        ),
                                        Card(
                                          child: Row(
                                            children: [
                                              Container(
                                                width: 100,
                                                height: 130,
                                                child: Column(
                                                  children: [
                                                    Container(
                                                        width: 70,
                                                        height: 60,
                                                        child: Image.asset(
                                                            "assets/Coins.png")),
                                                    Text("Coins"),
                                                    Text("20"),
                                                    ConfettiWidget(
                                                        confettiController:
                                                            _controllerBottomCenter,
                                                        blastDirection: -pi / 2,
                                                        emissionFrequency: 0.01,
                                                        numberOfParticles: 80,
                                                        maxBlastForce: 100,
                                                        minBlastForce: 80,
                                                        shouldLoop: false,
                                                        blastDirectionality:
                                                            BlastDirectionality
                                                                .explosive,
                                                        gravity: 0.3),
                                                  ],
                                                ),
                                              ),
                                            ],
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                  actions: [
                                    Padding(
                                      padding: const EdgeInsets.only(top: 38.0),
                                      child: TextButton(
                                        onPressed: () {
                                          Navigator.push(
                                            context,
                                            MaterialPageRoute(
                                              builder: (context) => Layout(
                                                title: "",
                                                sandboxResponse:
                                                    widget.sandboxResponce,
                                              ),
                                            ),
                                          );
                                        },
                                        child: Text("Close"),
                                      ),
                                    ),
                                  ],
                                ),
                              );
                            },
                          );
                        },
                        child: Text(
                          'Submit ',
                          style: TextStyle(
                              fontWeight: FontWeight.bold, fontSize: 23.0),
                        ),
                        style: ElevatedButton.styleFrom(
                          primary: Color.fromARGB(255, 230, 151, 6),
                          padding: EdgeInsets.symmetric(
                              horizontal: 40,
                              vertical: width > 900
                                  ? 30
                                  : 18), // set the background color
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(
                                40), // set the rounded corners
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ],
    ));
  }

  Widget ReviewCard(double width) {
    return Container(
      width: 350,
      child: Card(
        child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
          Padding(
            padding: const EdgeInsets.only(top: 30.0, right: 30.0, left: 30.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Text(
                  "Trip Summary",
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 18.0),
                  child: Text("TICKET ID:" + widget.ticketId),
                ),
              ],
            ),
          ),
          Padding(
            padding:
                const EdgeInsets.only(bottom: 30.0, right: 30.0, left: 30.0),
            child: Container(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(right: 70.0, top: 18.0),
                    child: Container(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            widget.startPlace,
                            style: TextStyle(
                                fontWeight: FontWeight.bold, fontSize: 18),
                          ),
                          Text(widget.startcity),
                        ],
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 18.0),
                    child: Container(
                      child: Column(
                        children: [
                          Text(
                            widget.endplace,
                            style: TextStyle(
                                fontWeight: FontWeight.bold, fontSize: 18),
                          ),
                          Text(widget.endplace),
                        ],
                      ),
                    ),
                  )
                ],
              ),
            ),
          ),
          Padding(
            padding:
                const EdgeInsets.only(bottom: 30.0, right: 30.0, left: 30.0),
            child: Container(
              decoration: BoxDecoration(
                border: Border(
                  top: BorderSide(
                    width: 1.0,
                    color: Colors.grey,
                    style: BorderStyle.solid,
                  ),
                ),
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(top: 18.0),
                    child: Container(
                      child: Column(
                        children: [
                          Text("Wednesday, 19-April-2023"),
                        ],
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 18.0),
                    child: Container(
                      child: Column(
                        children: [
                          Text("6:37 PM"),
                        ],
                      ),
                    ),
                  )
                ],
              ),
            ),
          ),
          Padding(
            padding:
                const EdgeInsets.only(bottom: 30.0, right: 30.0, left: 30.0),
            child: Container(
              width: 350.0,
              decoration: BoxDecoration(
                border: Border(
                  top: BorderSide(
                    width: 1.0,
                    color: Colors.grey,
                    style: BorderStyle.solid,
                  ),
                ),
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(right: 130.0, top: 18.0),
                    child: Container(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            widget.travalsName,
                            style: TextStyle(
                                fontWeight: FontWeight.bold, fontSize: 18),
                          ),
                          Text("Seat 2D")
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ]),
      ),
    );
  }
}
