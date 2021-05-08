import 'package:flutter/material.dart';

class ReCard extends StatelessWidget {
  ReCard({@required this.color, this.card, this.onPress});

  final Color color;
  final Widget card;
  final Function onPress;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onPress,
      child: Container(
        child: card,
        margin: EdgeInsets.all(15.0),
        decoration: BoxDecoration(
            color: color, borderRadius: BorderRadius.circular(10.0)),
      ),
    );
  }
}
