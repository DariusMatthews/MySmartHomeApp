import 'package:flutter/material.dart';
import 'package:my_smart_home/style.dart';

class HomeShortBtns extends StatelessWidget {
  final String btnTitle;
  final Color iconColor;
  final Icon icon;

  const HomeShortBtns({
    Key key,
    this.btnTitle,
    this.iconColor,
    this.icon,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 70,
      width: 165,
      decoration: BoxDecoration(
        border: Border.all(
          color: lightGrey,
          width: 2,
        ),
        borderRadius: BorderRadius.circular(25),
      ),
      child: Row(
        children: <Widget>[
          Padding(
            padding: const EdgeInsets.only(left: 8.0),
            child: Container(
              height: 50,
              width: 50,
              decoration: BoxDecoration(
                color: iconColor,
                borderRadius: BorderRadius.circular(20),
              ),
              child: icon,
            ),
          ),
          SizedBox(width: 20),
          Text(
            btnTitle,
            style: TextStyle(
              fontFamily: 'Roboto',
              color: greyBlue,
              fontSize: 17.5,
            ),
          ),
        ],
      ),
    );
  }
}
