import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class OfferData {
  final String title;
  final String subTitle;
  final String imageUrl;
  final Widget button;

  OfferData(
      {required this.title,
      required this.subTitle,
      required this.imageUrl,
      required this.button});
}

class AvailableBuses {
  final String name;
  final String type;
  final String startPlace;
  final String startTime;
  final String endPlace;
  final String endTime;
  final String duration;
  final String fare;
  final String boardingPoint;
  final String droppingPoint;
  final String boardinglandMark;
  final String droppinglandMark;

  AvailableBuses({
    required this.name,
    required this.type,
    required this.startPlace,
    required this.startTime,
    required this.endPlace,
    required this.endTime,
    required this.duration,
    required this.fare,
    required this.boardingPoint,
    required this.droppingPoint,
    required this.boardinglandMark,
    required this.droppinglandMark,
  });
}

final List<AvailableBuses> availableBuses = [
  AvailableBuses(
    name: 'Egloo travels',
    type: 'Sleeper 2+1',
    startPlace: 'Chennai',
    startTime: '23:30',
    endPlace: 'Kochi',
    endTime: '07:00',
    duration: '7h 30m',
    fare: '2,100',
    boardingPoint: 'Chennai',
    droppingPoint: 'Kochi',
    boardinglandMark: 'Near Anna Nagar',
    droppinglandMark: 'Near MG Road',
  ),
];

final List<AvailableBuses> availableBuses1 = [
  AvailableBuses(
    name: 'Rathee Meena travels',
    type: 'NON AC Seater / Sleeper 2+1',
    startPlace: 'Chennai',
    startTime: '20:30',
    endPlace: 'Kochi',
    endTime: '05:00',
    duration: '7h 30m',
    fare: '1,950',
    boardingPoint: 'Chennai',
    droppingPoint: 'Kochi',
    boardinglandMark: 'Near Anna Nagar',
    droppinglandMark: 'Near MG Road',
  )
];

final List<AvailableBuses> availableBuses2 = [
  AvailableBuses(
    name: 'KPN Travels',
    type: 'NON AC Seater / Sleeper 2+1',
    startPlace: 'Chennai',
    startTime: '01:00',
    endPlace: 'Kochi',
    endTime: '04:30',
    duration: '7h 00m',
    fare: '2,000',
    boardingPoint: 'Chennai',
    droppingPoint: 'Kochi',
    boardinglandMark: 'Near Anna Nagar',
    droppinglandMark: 'Near MG Road',
  ),
];

final List<AvailableBuses> availableBuses3 = [
  AvailableBuses(
    name: 'Vignesh TAT',
    type: 'AC Seater / Sleeper 2+1',
    startPlace: 'Chennai',
    startTime: '20:30',
    endPlace: 'Kochi',
    endTime: '06:30',
    duration: '7h 00m',
    fare: '1,600',
    boardingPoint: 'Chennai',
    droppingPoint: 'Kochi',
    boardinglandMark: 'Near Anna Nagar',
    droppinglandMark: 'Near MG Road',
  )
];

final List<AvailableBuses> availableBuses4 = [
  AvailableBuses(
    name: 'Intracity smartbus',
    type: 'AC Seater / Sleeper 2+1',
    startPlace: 'Chennai',
    startTime: '21:30',
    endPlace: 'Kochi',
    endTime: '04:30',
    duration: '7h 00m',
    fare: '1,700',
    boardingPoint: 'Chennai',
    droppingPoint: 'Trichy',
    boardinglandMark: 'Near Anna Nagar',
    droppinglandMark: 'Near MG Road',
  )
];

final List<OfferData> offerData = [
  OfferData(
    title: 'Grab up to 10% offer',
    subTitle: 'on domestic hotels, outstation cabs & bus bookings.',
    imageUrl:
        'https://stagegamificationui.blob.core.windows.net/sandbox-assets/image4.png?sv=2021-10-04&si=sandbox-assets-18674F72D96&sr=c&sig=rKjuSXkKkvZGBsbvSQEBAPdiHxKqfQ7U2s1I8Na%2FaE8%3D',
    button: ElevatedButton(
      style: ElevatedButton.styleFrom(
        primary: Colors.white,
        shadowColor: Colors.transparent,
      ),
      onPressed: () {},
      child: Text(
        'Book Now >',
        style: TextStyle(color: Color(0xFF235449), fontWeight: FontWeight.bold),
      ),
    ),
  ),
  OfferData(
    title: 'Grab FLAT 8% OFF* on HDFC Credit Card',
    subTitle: 'on domestic hotels, outstation cabs & bus bookings.',
    imageUrl:
        'https://stagegamificationui.blob.core.windows.net/sandbox-assets/image2.png?sv=2021-10-04&si=sandbox-assets-18674F72D96&sr=c&sig=rKjuSXkKkvZGBsbvSQEBAPdiHxKqfQ7U2s1I8Na%2FaE8%3D',
    button: ElevatedButton(
      style: ElevatedButton.styleFrom(
        primary: Colors.white,
        shadowColor: Colors.transparent,
      ),
      onPressed: () {},
      child: Text(
        'Book Now >',
        style: TextStyle(color: Color(0xFF235449), fontWeight: FontWeight.bold),
      ),
    ),
  ),
  OfferData(
    title: 'Grab up to 10% offer',
    subTitle: 'on domestic hotels, outstation cabs & bus bookings.',
    imageUrl:
        'https://stagegamificationui.blob.core.windows.net/sandbox-assets/image3.png?sv=2021-10-04&si=sandbox-assets-18674F72D96&sr=c&sig=rKjuSXkKkvZGBsbvSQEBAPdiHxKqfQ7U2s1I8Na%2FaE8%3D',
    button: ElevatedButton(
      style: ElevatedButton.styleFrom(
        primary: Colors.white,
        shadowColor: Colors.transparent,
      ),
      onPressed: () {},
      child: Text(
        'Book Now >',
        style: TextStyle(color: Color(0xFF235449), fontWeight: FontWeight.bold),
      ),
    ),
  ),
  OfferData(
    title: 'Grab up to 10% offer',
    subTitle: 'on domestic hotels, outstation cabs & bus bookings.',
    imageUrl:
        'https://stagegamificationui.blob.core.windows.net/sandbox-assets/image4.png?sv=2021-10-04&si=sandbox-assets-18674F72D96&sr=c&sig=rKjuSXkKkvZGBsbvSQEBAPdiHxKqfQ7U2s1I8Na%2FaE8%3D',
    button: ElevatedButton(
      style: ElevatedButton.styleFrom(
        primary: Colors.white,
        shadowColor: Colors.transparent,
      ),
      onPressed: () {},
      child: Text(
        'Book Now >',
        style: TextStyle(color: Color(0xFF235449), fontWeight: FontWeight.bold),
      ),
    ),
  ),
];

final List<OfferData> offerData1 = [
  OfferData(
    title: 'Avail the offers with Rupay Credit Cards',
    subTitle: 'on domestic hotels, outstation cabs & bus bookings.',
    imageUrl:
        'https://stagegamificationui.blob.core.windows.net/sandbox-assets/image2.png?sv=2021-10-04&si=sandbox-assets-18674F72D96&sr=c&sig=rKjuSXkKkvZGBsbvSQEBAPdiHxKqfQ7U2s1I8Na%2FaE8%3D',
    button: ElevatedButton(
      style: ElevatedButton.styleFrom(
        primary: Colors.white,
        shadowColor: Colors.transparent,
      ),
      onPressed: () {},
      child: Text(
        'Book Now >',
        style: TextStyle(color: Color(0xFF235449), fontWeight: FontWeight.bold),
      ),
    ),
  ),
  OfferData(
    title: 'Now get up to 15% OFF* on flights, stays, cabs & buses',
    subTitle: 'on domestic hotels, outstation cabs & bus bookings.',
    imageUrl:
        'https://stagegamificationui.blob.core.windows.net/sandbox-assets/image6.png?sv=2021-10-04&si=sandbox-assets-18674F72D96&sr=c&sig=rKjuSXkKkvZGBsbvSQEBAPdiHxKqfQ7U2s1I8Na%2FaE8%3D',
    button: ElevatedButton(
      style: ElevatedButton.styleFrom(
        primary: Colors.white,
        shadowColor: Colors.transparent,
      ),
      onPressed: () {},
      child: Text(
        'Book Now >',
        style: TextStyle(color: Color(0xFF235449), fontWeight: FontWeight.bold),
      ),
    ),
  ),
  OfferData(
    title: 'Grab up to 10% offer',
    subTitle: 'on domestic hotels, outstation cabs & bus bookings.',
    imageUrl:
        'https://stagegamificationui.blob.core.windows.net/sandbox-assets/image4.png?sv=2021-10-04&si=sandbox-assets-18674F72D96&sr=c&sig=rKjuSXkKkvZGBsbvSQEBAPdiHxKqfQ7U2s1I8Na%2FaE8%3D',
    button: ElevatedButton(
      style: ElevatedButton.styleFrom(
        primary: Colors.white,
        shadowColor: Colors.transparent,
      ),
      onPressed: () {},
      child: Text(
        'Book Now >',
        style: TextStyle(color: Color(0xFF235449), fontWeight: FontWeight.bold),
      ),
    ),
  ),
  OfferData(
    title: 'Grab up to 10% offer',
    subTitle: 'on domestic hotels, outstation cabs & bus bookings.',
    imageUrl:
        'https://stagegamificationui.blob.core.windows.net/sandbox-assets/image3.png?sv=2021-10-04&si=sandbox-assets-18674F72D96&sr=c&sig=rKjuSXkKkvZGBsbvSQEBAPdiHxKqfQ7U2s1I8Na%2FaE8%3D',
    button: ElevatedButton(
      style: ElevatedButton.styleFrom(
        primary: Colors.white,
        shadowColor: Colors.transparent,
      ),
      onPressed: () {},
      child: Text(
        'Book Now >',
        style: TextStyle(color: Color(0xFF235449), fontWeight: FontWeight.bold),
      ),
    ),
  ),
];



List<String> geographics = [
  'Countries',
  'Regions',
  'Cities',
  'Districts',
  'Airports',
  'Hotels',
  'Places of interest'
];
List<String> stayingType = [
  'Homes',
  'Apartments',
  'Resorts',
  'Villas',
  'Hostels',
  'B&Bs',
  'Guest houses'
];
List<String> destinations = [
  'Unique places to stay',
  'All destinations',
  'All flight destinations',
  'Discover Reviews',
  'Discover monthly stays',
  'Unpacked: Travel articles',
  'Travel Communities',
  'Seasonal and holiday deals',
];
List<String> travelModes = [
  'Car hire',
  'Flight finder',
  'Restaurant reservations',
  'Travel Agents'
];
List<String> services = [
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

