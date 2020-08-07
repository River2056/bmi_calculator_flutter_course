import 'package:flutter/material.dart';

class ReuseableCard extends StatelessWidget {
  final Color cardColor;
  final Widget cardChild;
  final Function cardFunction;

  ReuseableCard({
    @required this.cardColor,
    this.cardChild,
    this.cardFunction,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: cardFunction,
      child: Container(
        child: cardChild,
        decoration: BoxDecoration(
          color: cardColor,
          borderRadius: BorderRadius.circular(10.0),
        ),
        margin: EdgeInsets.all(15.0),
      ),
    );
  }
}
