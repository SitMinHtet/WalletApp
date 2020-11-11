import 'package:flutter/material.dart';
import 'package:walletApp/style/style_guild.dart';

class ExpandWidget extends StatelessWidget {

  final String name;
  final String date;
  final String amount;
  const ExpandWidget({Key key,@required this.name,@required this.date,@required this.amount}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(2),
      child: Row(
        children: [
          Container(
            margin: EdgeInsets.only(right: 5),
            height: 50,
            width: 50,
            decoration: BoxDecoration(
              color: color1,
              borderRadius: BorderRadius.circular(12),
            ),
            child: Center(
              child: Text(
                name.substring(0,2).toUpperCase(),
                style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold) ,),
            ),
          ),
          Column(
            children: [
              Text(name, style: cardAmountTextStyle.copyWith(fontSize: 16),),
              SizedBox(height: 5,),
              Text(date, style: transactionDateTextStyle.copyWith(fontSize: 14)),
            ],
          ),Spacer(),
          Column(
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              Text("\$$amount", style: transactionAmountTextStyle.copyWith(fontSize: 16),),
              SizedBox(height: 5,),
              Text("\$50.00", style: transactionDateTextStyle.copyWith(fontSize: 14)),
            ],
          ),

        ],
      ),
    );
  }
}
