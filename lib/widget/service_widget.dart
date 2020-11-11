import 'package:flutter/material.dart';

class ServiceWidget extends StatelessWidget {

  final IconData iconData;
  final String label;
  final Color bgColor;
  final Color iconColor;

  const ServiceWidget({Key key, this.iconData, this.label, this.bgColor, this.iconColor}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: bgColor,
        
        borderRadius: BorderRadius.circular(10)
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
           Icon(iconData, color: iconColor,),
          Text(label, style: TextStyle(color: iconColor),)
        ],
      ),
    );
  }
}
