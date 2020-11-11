import 'package:flutter/material.dart';
import 'package:flutter_icons/flutter_icons.dart';
import 'package:walletApp/style/style_guild.dart';

class Service {
  final IconData iconData;
  final String label;
  final Color bgColor;
  final Color iconColor;

  Service(
      {@required this.iconData,
      @required this.label,
      @required this.bgColor,
      @required this.iconColor});
}

final services = [
  Service(
      iconData: Icons.attach_money,
      bgColor: walletColor,
      iconColor: color2,
      label: "Wallet"),
  Service(
      iconData: FontAwesome.money,
      bgColor: transferColor,
      iconColor: color3,
      label: "transfer"),
  Service(
      iconData: FontAwesome.vcard_o,
      bgColor: voucherColor,
      iconColor: color1,
      label: "Voucher"),
  Service(
      iconData: FontAwesome.vcard_o,
      bgColor: billColor,
      iconColor: color4,
      label: "Bill Pay"),
  Service(
      iconData: FontAwesome.shopping_bag,
      bgColor: billColor,
      iconColor: color1,
      label: "Shopping"),
  Service(
      iconData: Icons.present_to_all,
      bgColor: billColor,
      iconColor: color4,
      label: "Reward"),
  Service(
      iconData: FontAwesome.train,
      bgColor: walletColor,
      iconColor: color1,
      label: "Ticket"),
  Service(
      iconData: FontAwesome.mobile,
      bgColor: transferColor,
      iconColor: color3,
      label: "Top up"),
];
