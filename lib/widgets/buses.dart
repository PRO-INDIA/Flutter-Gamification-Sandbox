import 'dart:math';
import 'package:flutter/material.dart';
import 'package:sandbox_flutter/widgets/sucess_card.dart';
import 'package:confetti/confetti.dart';
import 'package:progamification/progamification.dart';

class Buses extends StatefulWidget {
  final availableBuses;
  const Buses({super.key, required this.availableBuses});
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<Buses> {
  bool _isCardShown = false;
  final ConfettiController _controllerBottomCenter =
      ConfettiController(duration: const Duration(seconds: 3));

  void _toggleCard() {
    setState(() {
      _isCardShown = !_isCardShown;
    });
  }

  @override
  void initState() {
    super.initState();
    _controllerBottomCenter.play();
  }

  @override
  Widget build(BuildContext context) {
    Size screenSize = MediaQuery.of(context).size;
    final width = screenSize.width;

    return ListView.builder(
        itemCount: widget.availableBuses.length,
        scrollDirection: Axis.vertical,
        shrinkWrap: true,
        itemBuilder: (BuildContext context, int index) {
          return GestureDetector(
            onTap: () {
              _toggleCard();
            },
            child: Container(
                child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Padding(
                  padding: const EdgeInsets.only(top: 12.0, bottom: 12.0),
                  child: Card(
                    elevation: 8.0,
                    child: Padding(
                      padding: const EdgeInsets.only(top: 19.0, bottom: 19.0),
                      child: Container(
                        child: Column(
                          children: [
                            Row(
                              children: [
                                Expanded(
                                  child: Padding(
                                    padding: const EdgeInsets.all(18.0),
                                    child: Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Text(
                                          widget.availableBuses[index].name,
                                          style: TextStyle(
                                            fontWeight: FontWeight.bold,
                                            fontSize: 19.0,
                                          ),
                                        ),
                                        Padding(
                                          padding:
                                              const EdgeInsets.only(top: 8.0),
                                          child: Text(widget
                                              .availableBuses[index].type),
                                        ),
                                        Image.asset('assets/bus-facility.png')
                                      ],
                                    ),
                                  ),
                                ),
                                if (width > 900)
                                  Expanded(
                                    child: Row(
                                      children: [
                                        Container(
                                          child: Column(
                                            children: [
                                              Text(widget.availableBuses[index]
                                                  .startPlace),
                                              Padding(
                                                padding:
                                                    const EdgeInsets.all(14.0),
                                                child: Container(
                                                  width: 70,
                                                  padding: EdgeInsets.all(6),
                                                  decoration: BoxDecoration(
                                                    borderRadius:
                                                        BorderRadius.all(
                                                            Radius.circular(
                                                                40)),
                                                    border: Border.all(
                                                      color: Colors.black,
                                                      width: 0.4,
                                                    ),
                                                  ),
                                                  child: Center(
                                                      child: Text(
                                                    widget.availableBuses[index]
                                                        .startTime,
                                                    style:
                                                        TextStyle(fontSize: 18),
                                                  )),
                                                ),
                                              )
                                            ],
                                          ),
                                        ),
                                        Container(
                                            color: Colors.amber,
                                            child: Divider()),
                                        Container(
                                          margin: EdgeInsets.only(left: 100.0),
                                          child: Column(
                                            children: [
                                              Text(widget.availableBuses[index]
                                                  .endPlace),
                                              Padding(
                                                padding:
                                                    const EdgeInsets.all(14.0),
                                                child: Container(
                                                  width: 70,
                                                  padding: EdgeInsets.all(6),
                                                  decoration: BoxDecoration(
                                                    borderRadius:
                                                        BorderRadius.all(
                                                            Radius.circular(
                                                                40)),
                                                    border: Border.all(
                                                      color: Colors.black,
                                                      width: 0.4,
                                                    ),
                                                  ),
                                                  child: Center(
                                                      child: Text(
                                                    widget.availableBuses[index]
                                                        .endTime,
                                                    style:
                                                        TextStyle(fontSize: 18),
                                                  )),
                                                ),
                                              )
                                            ],
                                          ),
                                        )
                                      ],
                                    ),
                                  ),
                                Padding(
                                  padding: const EdgeInsets.only(right: 25.0),
                                  child: Row(
                                    children: [
                                      Text(
                                        "₹ ",
                                        style: TextStyle(
                                          fontWeight: FontWeight.bold,
                                          fontSize: 20.0,
                                          color:
                                              Color.fromARGB(255, 230, 151, 6),
                                        ),
                                      ),
                                      Text(
                                        widget.availableBuses[index].fare,
                                        style: TextStyle(
                                            fontWeight: FontWeight.bold,
                                            fontSize: 20.0,
                                            color: Color(0xFF235449)),
                                      ),
                                    ],
                                  ),
                                )
                              ],
                            ),
                            if (width < 900)
                              Row(
                                children: [
                                  Container(
                                    child: Column(
                                      children: [
                                        Text(widget
                                            .availableBuses[index].startPlace),
                                        Padding(
                                          padding: const EdgeInsets.all(14.0),
                                          child: Container(
                                            width: 70,
                                            padding: EdgeInsets.all(6),
                                            decoration: BoxDecoration(
                                              borderRadius: BorderRadius.all(
                                                  Radius.circular(40)),
                                              border: Border.all(
                                                color: Colors.black,
                                                width: 0.4,
                                              ),
                                            ),
                                            child: Center(
                                                child: Text(
                                              widget.availableBuses[index]
                                                  .startTime,
                                              style: TextStyle(fontSize: 18),
                                            )),
                                          ),
                                        )
                                      ],
                                    ),
                                  ),
                                  Container(
                                    margin: EdgeInsets.only(left: 50.0),
                                    child: Column(
                                      children: [
                                        Text(widget
                                            .availableBuses[index].endPlace),
                                        Padding(
                                          padding: const EdgeInsets.all(14.0),
                                          child: Container(
                                            width: 70,
                                            padding: EdgeInsets.all(6),
                                            decoration: BoxDecoration(
                                              borderRadius: BorderRadius.all(
                                                  Radius.circular(40)),
                                              border: Border.all(
                                                color: Colors.black,
                                                width: 0.4,
                                              ),
                                            ),
                                            child: Center(
                                                child: Text(
                                              widget.availableBuses[index]
                                                  .endTime,
                                              style: TextStyle(fontSize: 18),
                                            )),
                                          ),
                                        )
                                      ],
                                    ),
                                  )
                                ],
                              ),
                          ],
                        ),
                      ),
                    ),
                  ),
                ),
                if (_isCardShown)
                  Card(
                    color: Colors.transparent,
                    child: Container(
                      width: 10000.0,
                      child: Padding(
                        padding: const EdgeInsets.all(16.0),
                        child: width > 900
                            ? Row(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceEvenly,
                                children: [
                                  Container(
                                    width: width > 900 ? 400 : 300,
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(10),
                                    ),
                                    child: Image.asset(
                                        'assets/available-chars.png'),
                                  ),
                                  //card
                                  ReviewCard(
                                      widget.availableBuses[index].fare,
                                      widget.availableBuses[index].endPlace,
                                      widget.availableBuses[index].endTime,
                                      widget.availableBuses[index].startTime,
                                      widget.availableBuses[index]
                                          .boardinglandMark,
                                      widget
                                          .availableBuses[index].boardingPoint,
                                      widget
                                          .availableBuses[index].droppingPoint)
                                ],
                              )
                            : Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceEvenly,
                                children: [
                                  Container(
                                    width: width > 900 ? 400 : 300,
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(10),
                                    ),
                                    child: Image.asset(
                                        'assets/available-chars.png'),
                                  ),
                                  //card
                                  Padding(
                                    padding: const EdgeInsets.only(top: 18.0),
                                    child: ReviewCard(
                                        widget.availableBuses[index].fare,
                                        widget.availableBuses[index].endPlace,
                                        widget.availableBuses[index].endTime,
                                        widget.availableBuses[index].startTime,
                                        widget.availableBuses[index]
                                            .boardinglandMark,
                                        widget.availableBuses[index]
                                            .boardingPoint,
                                        widget.availableBuses[index]
                                            .droppingPoint),
                                  )
                                ],
                              ),
                      ),
                    ),
                  ),
              ],
            )),
          );
        });
  }

  Widget ReviewCard(
      String fare,
      String endPlace,
      String endTime,
      String startTime,
      String boardingLandMark,
      String boardingPoint,
      String droppingPoint) {
    return Container(
      width: 400,
      child: Card(
          child: Padding(
        padding: const EdgeInsets.all(18.0),
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.only(left: 18.0),
              child: Container(
                  child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "Boarding & Dropping",
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 18.0,
                    ),
                  ),
                  Text(
                    "Change>",
                    style: TextStyle(color: Color(0xFF235449)),
                  ),
                ],
              )),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 18.0),
              child: Column(
                children: [
                  Container(
                    child: Padding(
                      padding: const EdgeInsets.only(
                          top: 18.0, bottom: 18.0, left: 18.0),
                      child: Container(
                          child: Row(
                        // mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Container(
                            child: Text(
                              startTime,
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 18.0,
                              ),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(left: 32.0),
                            child: Container(
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    boardingPoint,
                                    style: TextStyle(
                                        fontWeight: FontWeight.bold,
                                        fontSize: 16.0),
                                  ),
                                  Text(boardingLandMark),
                                ],
                              ),
                            ),
                          )
                        ],
                      )),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(
                        top: 18.0, bottom: 18.0, left: 18.0),
                    child: Container(
                        child: Row(
                      children: [
                        Container(
                          child: Text(
                            endTime,
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 18.0,
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 32.0),
                          child: Container(
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  endPlace,
                                  style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      fontSize: 16.0),
                                ),
                                Text(droppingPoint),
                              ],
                            ),
                          ),
                        )
                      ],
                    )),
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(18.0),
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
                child: Padding(
                  padding: const EdgeInsets.only(top: 12.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        "Seat",
                        style: TextStyle(
                            fontWeight: FontWeight.bold, fontSize: 16.0),
                      ),
                      Text(
                        "R1",
                        style: TextStyle(
                            fontWeight: FontWeight.bold, fontSize: 16.0),
                      ),
                    ],
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(18.0),
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
                child: Padding(
                  padding: const EdgeInsets.only(top: 12.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        "Amount",
                        style: TextStyle(
                            fontWeight: FontWeight.bold, fontSize: 16.0),
                      ),
                      Text(
                        fare,
                        style: TextStyle(
                            fontWeight: FontWeight.bold, fontSize: 16.0),
                      ),
                    ],
                  ),
                ),
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                ElevatedButton(
                  onPressed: () async {
                    await GamificationService.updateGameAction(
                        "guna@pro", "6440ca514a1e1df859bf2054", '', '');
                    showDialog(
                      context: context,
                      builder: (BuildContext context) {
                        return Container(
                          child: AlertDialog(
                            icon: Image.asset(
                              "assets/sucess_icon.png",
                            ),
                            title: Text("Booked Successfully"),
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
                                            padding: const EdgeInsets.only(
                                                bottom: 8.0),
                                            child: Text("10"),
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
                                              Text("10"),
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
                              TextButton(
                                onPressed: () {
                                  Navigator.of(context).pop();
                                },
                                child: Text("Close"),
                              ),
                            ],
                          ),
                        );
                      },
                    );
                  },
                  child: Text(
                    'Pay Now',
                    style:
                        TextStyle(fontWeight: FontWeight.bold, fontSize: 18.0),
                  ),
                  style: ElevatedButton.styleFrom(
                    primary: Color.fromARGB(255, 230, 151, 6),
                    padding: EdgeInsets.symmetric(
                        horizontal: 25,
                        vertical: 25), // set the background color
                    shape: RoundedRectangleBorder(
                      borderRadius:
                          BorderRadius.circular(40), // set the rounded corners
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      )),
    );
  }
}
