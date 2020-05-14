import 'package:flutter/material.dart';
import 'package:my_smart_home/style.dart';
import 'package:my_smart_home/widgets/home_page_btn.dart';
import 'package:my_smart_home/widgets/device_btn.dart';
import 'package:my_smart_home/screens/router_page.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: <Widget>[
            // header row container
            Container(
              width: double.infinity,
              margin: const EdgeInsets.only(top: 12),
              padding: const EdgeInsets.symmetric(horizontal: 25),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  Icon(
                    Icons.menu,
                    size: 30,
                    color: greyBlue,
                  ),
                  Container(
                    width: 50,
                    height: 50,
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      image: const DecorationImage(
                        image: AssetImage('assets/images/profilePic80.jpg'),
                        fit: BoxFit.cover,
                      ),
                    ),
                  )
                ],
              ),
            ),
            SizedBox(height: 50),
            // title container
            Container(
              width: double.infinity,
              padding: const EdgeInsets.only(left: 25),
              child: Text(
                'My Smart Home',
                textAlign: TextAlign.start,
                style: TextStyle(
                  fontFamily: 'Roboto',
                  fontWeight: FontWeight.w600,
                  color: darkBlue,
                  fontSize: 30,
                ),
              ),
            ),
            SizedBox(height: 30),
            // Home shortcut buttons
            Wrap(
              spacing: 20,
              runSpacing: 25,
              children: <Widget>[
                HomeShortBtns(
                  btnTitle: 'Light',
                  icon: Icon(
                    Icons.lightbulb_outline,
                    color: Colors.white,
                  ),
                  iconColor: yellow,
                ),
                HomeShortBtns(
                  btnTitle: 'Media',
                  icon: Icon(
                    Icons.play_circle_filled,
                    color: Colors.white,
                  ),
                  iconColor: purpleBlue,
                ),
                HomeShortBtns(
                  btnTitle: 'Camera',
                  icon: Icon(
                    Icons.videocam,
                    color: Colors.white,
                  ),
                  iconColor: peach,
                ),
                HomeShortBtns(
                  btnTitle: 'Wi-Fi',
                  icon: Icon(
                    Icons.wifi,
                    color: Colors.white,
                  ),
                  iconColor: green,
                ),
              ],
            ),
            SizedBox(height: 60),
            // subtitle container
            Container(
              width: double.infinity,
              height: 75,
              padding: const EdgeInsets.only(left: 25),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Text(
                    'Living Room',
                    style: TextStyle(
                      fontSize: 25,
                      fontFamily: 'Roboto',
                      fontWeight: FontWeight.w600,
                      color: darkBlue,
                    ),
                  ),
                  SizedBox(height: 8),
                  Text(
                    '2 devices',
                    style: TextStyle(
                      fontFamily: 'Roboto',
                      color: greyBlue,
                      fontSize: 16,
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(height: 15),
            // device button container
            Container(
              padding: const EdgeInsets.symmetric(horizontal: 25),
              child: Row(
                children: <Widget>[
                  DeviceBtn(
                    btnText: 'Netgear \nWiFi Router',
                    deviceIcon: Icon(
                      Icons.router,
                      color: lightPurple,
                      size: 85,
                    ),
                    tapEvent: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => RouterPage(),
                        ),
                      );
                    },
                  ),
                  Spacer(),
                  DeviceBtn(
                    btnText: 'Living Room \nSpeaker',
                    deviceIcon: Icon(
                      Icons.speaker,
                      color: deepBlue,
                      size: 75,
                    ),
                    tapEvent: () {},
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
      // floating button
      floatingActionButton: Container(
        width: 70,
        child: FittedBox(
          child: FloatingActionButton(
            backgroundColor: purpleBlue,
            child: Icon(
              Icons.keyboard_voice,
              color: Colors.white,
              size: 30,
            ),
            onPressed: () {},
          ),
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      // bottom navbar
      bottomNavigationBar: BottomAppBar(
        elevation: 30,
        shape: CircularNotchedRectangle(),
        notchMargin: 10,
        child: Padding(
          padding: const EdgeInsets.only(top: 15.0),
          child: Row(
            mainAxisSize: MainAxisSize.max,
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              Padding(
                padding: const EdgeInsets.only(right: 50.0),
                child: Icon(
                  Icons.home,
                  color: purpleBlue,
                  size: 30,
                ),
              ),
              Icon(
                Icons.settings,
                color: greyBlue,
                size: 30,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
