import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:sandbox_flutter/constants/mockdata.dart';

class Footer extends StatelessWidget {
  const Footer({super.key});

  @override
  Widget build(BuildContext context) {
    Size screenSize = MediaQuery.of(context).size;

    final width = screenSize.width;
    return Padding(
      padding: EdgeInsets.only(top: 20.0),
      child: Container(
          margin:
              new EdgeInsets.symmetric(horizontal: width > 1100 ? 190.0 : 20),
          child: width > 1100
              ? Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [...footerCall()],
                )
              : Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [...footerCall()],
                )),
    );
  }

  Widget footerData(List<String> Data) {
    return Container(
      child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: Data.map((word) {
            return Container(
              margin: EdgeInsets.symmetric(vertical: 5),
              child: Text(word, style: TextStyle(color: Colors.white)),
            );
          }).toList()),
    );
  }

  footerCall() {
    return {
      footerData(geographics),
      Padding(
        padding: EdgeInsets.only(top: 20.0),
      ),
      footerData(stayingType),
      Padding(
        padding: EdgeInsets.only(top: 20.0),
      ),
      footerData(destinations),
      Padding(
        padding: EdgeInsets.only(top: 20.0),
      ),
      footerData(travelModes),
      Padding(
        padding: EdgeInsets.only(top: 20.0),
      ),
      footerData(services)
    };
  }
}
