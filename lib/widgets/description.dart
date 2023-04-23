import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class Description extends StatelessWidget {
  const Description({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            padding: EdgeInsets.only(top: 20.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "PRODUCT OFFERING",
                  style: TextStyle(fontSize: 19.0, fontWeight: FontWeight.bold),
                ),
                Padding(
                  padding: EdgeInsets.only(top: 16.0),
                  child: Text(
                      "Flights, International Flights, Charter Flights, Hotels, International Hotels, Homestays and Villas, Activities, Holidays In India, International Holidays, Book Hotels From UAE, myBiz for Corporate Travel, Book Online Cabs, Book Bus Tickets, Book Train Tickets, Cheap Tickets to India, Book Flights From US, Book Flights From UAE, Trip Planner, Gift Cards, Trip Money, Trip Ideas, Travel Blog, PNR Status, One Way Cab"),
                )
              ],
            ),
          ),
          Container(
            padding: EdgeInsets.only(top: 20.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "MAKEMYTRIP",
                  style: TextStyle(fontSize: 19.0, fontWeight: FontWeight.bold),
                ),
                Padding(
                  padding: EdgeInsets.only(top: 16.0),
                  child: Text(
                      "About Us, Investor Relations, Careers, MMT Foundation, CSR Policy, myPartner - Travel Agent Portal, Foreign Exchange, List your hotel, Partners- Redbus, Partners- Goibibo"),
                )
              ],
            ),
          ),
          Container(
            padding: EdgeInsets.only(top: 20.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "ABOUT THE SITE",
                  style: TextStyle(fontSize: 19.0, fontWeight: FontWeight.bold),
                ),
                Padding(
                  padding: EdgeInsets.only(top: 16.0),
                  child: Text(
                      "Customer Support, Payment Security, Privacy Policy, User Agreement, Terms of Service, More Offices, Make A Payment, Work From Home"),
                )
              ],
            ),
          ),
          Container(
            padding: EdgeInsets.only(top: 20.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "IMPORTANT LINKS",
                  style: TextStyle(fontSize: 19.0, fontWeight: FontWeight.bold),
                ),
                Padding(
                  padding: EdgeInsets.only(top: 16.0),
                  child: Text(
                      "Bangalore to Chennai Bus, Chennai to Bangalore Bus, Kolkata to Siliguri Bus, Chandigarh to Manali Bus, Delhi to Jaipur Bus, Delhi to Chandigarh Bus, Mumbai to Goa Bus, Delhi to Shimla Bus, Mumbai to Pune Bus, Delhi to Haridwar Bus, Mumbai to Bangalore Bus, Bangalore to Goa Bus, Hyderabad to Bangalore Bus, Bangalore to Hyderabad Bus, Delhi to Dehradun Bus, Lucknow to Delhi Bus, Jaipur to Delhi Bus, Bhopal to Indore Bus, Delhi to Manali Bus, Indore to Bhopal Bus"),
                )
              ],
            ),
          ),
          Container(
            padding: EdgeInsets.only(top: 20.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "QUICK LINKS",
                  style: TextStyle(fontSize: 19.0, fontWeight: FontWeight.bold),
                ),
                Padding(
                  padding: EdgeInsets.only(top: 16.0),
                  child: Text(
                      "SBSTC, TSRTC, ASTC, Hans Travels, UPSRTC, SRM Travels, M J T Travels, MSRTC, Parveen Travels, Kaveri Travels, OSRTC, GSRTC, Neeta Travels, KPN Travels, VRL Travels, Green line Travels, TNSTC, HRTC, APSRTC, TSRTC"),
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
