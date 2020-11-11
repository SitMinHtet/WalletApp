import 'package:flutter/material.dart';
import 'package:walletApp/ui/home.dart';

void main() {
  runApp(WalletApp());
}

class WalletApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Wallet App",
      debugShowCheckedModeBanner: false,
      home: Home(),
    );
  }
}
