import 'package:flutter/material.dart';
import 'package:my_smart_home/style.dart';

class Device extends StatelessWidget {
  final Icon deviceIcon;
  final String deviceTitle;
  final String deviceSpeed;
  final String lastUsed;
  final String uploadSpeed;

  const Device({
    Key key,
    this.deviceIcon,
    this.deviceSpeed,
    this.deviceTitle,
    this.lastUsed,
    this.uploadSpeed,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
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
              child: deviceIcon),
          SizedBox(width: 15),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Text(
                deviceTitle,
                style: TextStyle(
                  fontFamily: 'Roboto',
                  color: darkBlue,
                  fontSize: 20,
                ),
              ),
              SizedBox(height: 5),
              Text(
                '$deviceSpeed, $lastUsed',
                style: TextStyle(
                  color: Colors.grey[600],
                ),
              ),
            ],
          ),
          Spacer(),
          Icon(
            Icons.arrow_drop_up,
            color: green,
          ),
          Text(
            uploadSpeed,
            style: TextStyle(
              color: Colors.grey[800],
              fontFamily: 'Roboto',
            ),
          ),
          SizedBox(width: 8),
          Icon(
            Icons.signal_cellular_4_bar,
            color: green,
          ),
        ],
      ),
    );
  }
}
