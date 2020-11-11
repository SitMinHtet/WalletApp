import 'package:flutter/material.dart';
import 'package:walletApp/style/style_guild.dart';

class TransactionWidget extends StatelessWidget {

  final String label;
  final String amount;
  final bool income;
  const TransactionWidget({Key key, this.label, this.amount, this.income}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(vertical: 8),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              Container(
                width: 10,
                height: 10,
                decoration: BoxDecoration(
                  color: income ? color3 : color2,
                  shape: BoxShape.circle
                ),
              ),
              SizedBox(
                width: 5,
              ),
              Text(label, style: TextStyle(color: Colors.grey, fontSize: 10),)
            ],
          ),

          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 15),
            child: Text("\$$amount", style: transactionAmountTextStyle ,),
          )
        ],
      )

    );
  }
}
