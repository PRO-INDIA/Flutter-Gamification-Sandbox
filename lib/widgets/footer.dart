import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

List<String> footer = [
  'Countries',
  'Regions',
  'Cities',
  'Districts',
  'Airports',
  'Hotels',
  'Places of interest'
];
List<String> a = [
  'Homes',
  'Apartments',
  'Resorts',
  'Villas',
  'Hostels',
  'B&Bs',
  'Guest houses'
];
List<String> b = [
  'Unique places to stay',
  'All destinations',
  'All flight destinations',
  'Discover Reviews',
  'Discover monthly stays',
  'Unpacked: Travel articles',
  'Travel Communities',
  'Seasonal and holiday deals',
];
List<String> c = [
  'Car hire',
  'Flight finder',
  'Restaurant reservations',
  'Travel Agents'
];
List<String> d = [
  'Customer Service help',
  'Partner help',
  'Careers',
  'Sustainability',
  'Press centre',
  'Safety resource centre',
  'Investor relations',
  'Terms & Conditions',
  'Partner dispute',
  'How we work',
  'Privacy & Cookie Statement',
  'MSA Statement',
  'Corporate contact',
  'We Price Match',
];

class Footer extends StatelessWidget {
  const Footer({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(top: 20.0),
      child: Container(
        margin: new EdgeInsets.symmetric(horizontal: 190.0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
                child: Column(
              children: footer.map((word) {
                return Container(
                  margin: EdgeInsets.symmetric(vertical: 5),
                  child: Text(word, style: TextStyle(color: Colors.white)),
                );
              }).toList(),
            )),
            Container(
                child: Column(
              children: a.map((word) {
                return Container(
                  margin: EdgeInsets.symmetric(vertical: 5),
                  child: Text(word, style: TextStyle(color: Colors.white)),
                );
              }).toList(),
            )),
            Container(
                child: Column(
              children: b.map((word) {
                return Container(
                  margin: EdgeInsets.symmetric(vertical: 5),
                  child: Text(word, style: TextStyle(color: Colors.white)),
                );
              }).toList(),
            )),
            Container(
                child: Column(
              children: c.map((word) {
                return Container(
                  margin: EdgeInsets.symmetric(vertical: 5),
                  child: Text(word, style: TextStyle(color: Colors.white)),
                );
              }).toList(),
            )),
            Container(
                child: Column(
              children: d.map((word) {
                return Container(
                  margin: EdgeInsets.symmetric(vertical: 5),
                  child: Text(word, style: TextStyle(color: Colors.white)),
                );
              }).toList(),
            ))
          ],
        ),
      ),
    );
  }
}
