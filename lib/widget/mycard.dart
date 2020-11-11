import 'package:flutter/material.dart';

class MyCard extends StatelessWidget {

  final screenHeight;
  final child;
  const MyCard({Key key, this.screenHeight, this.child}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: child,
      margin: EdgeInsets.symmetric(horizontal: 24),
        height: screenHeight / 3.5,
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(16),
          boxShadow: [
            BoxShadow(
              color: Colors.black38,
              blurRadius: 2,spreadRadius: 2,
            )
          ]
        ),
    );
  }
}
