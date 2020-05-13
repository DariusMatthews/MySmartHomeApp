import 'package:flutter/material.dart';
import 'package:my_smart_home/style.dart';

class DeviceBtn extends StatelessWidget {
  final String btnText;
  final Icon deviceIcon;
  final Function tapEvent;

  const DeviceBtn({
    Key key,
    this.btnText,
    this.deviceIcon,
    this.tapEvent,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: tapEvent,
      child: Container(
        width: 165,
        height: 215,
        padding: const EdgeInsets.fromLTRB(15, 18, 7, 8),
        decoration: BoxDecoration(
          border: Border.all(
            color: lightGrey,
            width: 2,
          ),
          borderRadius: BorderRadius.circular(30),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Text(
              btnText,
              style: TextStyle(
                fontFamily: 'Roboto',
                fontWeight: FontWeight.w700,
                fontSize: 20,
                height: 1.5,
              ),
            ),
            Spacer(),
            Row(
              children: <Widget>[
                Spacer(),
                deviceIcon,
              ],
            ),
          ],
        ),
      ),
    );
  }
}
