import 'package:flutter/material.dart';
import 'package:my_smart_home/style.dart';
import 'package:my_smart_home/widgets/HomeShortBtns.dart';

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
          ],
        ),
      ),
    );
  }
}
