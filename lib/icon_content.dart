import 'package:flutter/material.dart';
import 'constants.dart';

class IconContent extends StatelessWidget {
  final IconData iconData;
  final double iconSize;
  final double iconAndTextPaddingHeight;
  final String iconText;

  IconContent({
    @required this.iconData,
    this.iconSize,
    this.iconAndTextPaddingHeight,
    this.iconText,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        Icon(
          iconData,
          size: iconSize,
        ),
        SizedBox(
          height: iconAndTextPaddingHeight,
        ),
        Text(
          iconText,
          style: kLabelTextStyle,
        )
      ],
    );
  }
}
