import 'package:flutter/material.dart';
import 'package:project/info_card.dart';

// our data
const email = "ncio@htl.com";
const age = "19";
const phone = "06648277312"; // not real number :)
const klasse = "4AHINF";

class Profile extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white,
        body: SafeArea(
          minimum: const EdgeInsets.only(top: 50),
          child: Column(
            children: <Widget>[
              CircleAvatar(
                radius: 60,
                backgroundImage: AssetImage('images/images/NJ_Cropped.png'),
              ),
              Text(
                "Nico Lederer",
                style: TextStyle(
                  fontSize: 40.0,
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                  fontFamily: "Pacifico",
                ),
              ),
              Text(
                "NachhilfeSchüler",
                style: TextStyle(
                    fontSize: 30,
                    color: Color(0xff134291),
                    letterSpacing: 2.5,
                    fontWeight: FontWeight.bold,
                    fontFamily: "Source Sans Pro"),
              ),
              SizedBox(
                height: 5,
                width: 200,
                child: Divider(
                  color: Colors.white,
                ),
              ),

              // we will be creating a new widget name info carrd

              InfoCard(text: phone, icon: Icons.phone, onPressed: () async {}),
              InfoCard(text: age, icon: Icons.web, onPressed: () async {}),
              InfoCard(
                  text: klasse,
                  icon: Icons.location_city,
                  onPressed: () async {}),
              InfoCard(text: email, icon: Icons.email, onPressed: () async {}),
            ],
          ),
        ));
  }
}
