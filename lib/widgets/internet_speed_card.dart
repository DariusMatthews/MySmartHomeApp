import 'package:flutter/material.dart';

class InternetSpeed extends StatelessWidget {
  final String name;
  final String speed;
  final Color bgColor;

  const InternetSpeed({
    Key key,
    this.name,
    this.speed,
    this.bgColor,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 155,
      height: 175,
      decoration: BoxDecoration(
        color: bgColor,
        borderRadius: BorderRadius.circular(22),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Padding(
            padding: const EdgeInsets.only(
              left: 15,
              top: 15,
            ),
            child: Text(
              '$name \nSpeed',
              style: TextStyle(
                color: Colors.white,
                fontFamily: 'Roboto',
                fontSize: 15,
                fontWeight: FontWeight.w600,
                height: 1.5,
              ),
            ),
          ),
          Spacer(),
          Padding(
            padding: const EdgeInsets.symmetric(
              vertical: 14,
              horizontal: 15,
            ),
            child: Row(
              children: <Widget>[
                Text(
                  '$speed Mbps',
                  style: TextStyle(
                    color: Colors.white,
                    fontFamily: 'Roboto',
                    fontWeight: FontWeight.w700,
                    fontSize: 17,
                  ),
                ),
                SizedBox(width: 20),
                Container(
                  width: 32,
                  height: 32,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: Colors.white,
                  ),
                  child: Icon(
                    Icons.arrow_downward,
                    color: bgColor,
                  ),
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
