import 'package:flutter/material.dart';
import 'package:my_smart_home/style.dart';

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
              margin: const EdgeInsets.only(top: 17),
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
            SizedBox(height: 20),
            Wrap(),
          ],
        ),
      ),
    );
  }
}
