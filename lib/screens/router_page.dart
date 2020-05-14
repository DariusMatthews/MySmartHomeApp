import 'package:flutter/material.dart';
import 'package:my_smart_home/style.dart';
import 'package:my_smart_home/widgets/internet_speed_card.dart';

class RouterPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: <Widget>[
            // header Row
            Padding(
              padding: const EdgeInsets.symmetric(
                horizontal: 20,
                vertical: 15,
              ),
              child: Row(
                mainAxisSize: MainAxisSize.max,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  GestureDetector(
                    onTap: () {
                      Navigator.pop(context);
                    },
                    child: Icon(
                      Icons.chevron_left,
                      color: greyBlue,
                      size: 35,
                    ),
                  ),
                  Icon(
                    Icons.more_vert,
                    color: greyBlue,
                    size: 25,
                  ),
                ],
              ),
            ),
            SizedBox(height: 30),
            // Title container
            Container(
              width: double.infinity,
              padding: const EdgeInsets.only(left: 30),
              child: Text(
                'Netgear WiFi Router',
                textAlign: TextAlign.start,
                style: TextStyle(
                  fontFamily: 'Roboto',
                  fontWeight: FontWeight.w600,
                  fontSize: 30,
                  color: darkBlue,
                ),
              ),
            ),
            SizedBox(height: 15),
            // Subtitle container
            Container(
              width: double.infinity,
              padding: const EdgeInsets.only(left: 30),
              child: Text(
                'Your network is online and everything \nlooks good',
                textAlign: TextAlign.start,
                style: TextStyle(
                  fontFamily: 'Roboto',
                  fontSize: 18,
                  color: greyBlue,
                ),
              ),
            ),
            SizedBox(height: 25),
            // Internet speeds container
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 30.0),
              child: Row(
                children: <Widget>[
                  // Download Speed Card
                  InternetSpeed(
                    name: 'Download',
                    bgColor: skyBlue,
                    speed: '69',
                  ),
                  SizedBox(width: 23),
                  // Upload Speed Card
                  InternetSpeed(
                    name: 'Upload',
                    bgColor: purple,
                    speed: '12',
                  ),
                ],
              ),
            ),
            SizedBox(height: 50),
            // Device Title
            Container(
              width: double.infinity,
              padding: const EdgeInsets.only(left: 25),
              child: Text(
                '4 devices connnected',
                textAlign: TextAlign.start,
                style: TextStyle(
                  color: darkBlue,
                  fontFamily: 'Roboto',
                  fontWeight: FontWeight.w600,
                  fontSize: 20,
                ),
              ),
            ),
            SizedBox(height: 30),
            // Device Descriptions
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 30.0),
              child: Row(
                children: <Widget>[
                  Container(
                    width: 52,
                    height: 52,
                    decoration: BoxDecoration(
                      color: lightBlue,
                      borderRadius: BorderRadius.circular(20),
                    ),
                    child: Icon(
                      Icons.phone_iphone,
                      color: deepBlue,
                      size: 30,
                    ),
                  ),
                  Column(
                    children: <Widget>[
                      Text(
                        'My iPhone',
                      ),
                      Text(
                        '5GHz, 2h ago',
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
