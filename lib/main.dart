import 'package:bytebank/screens/dashboard/dashboard.dart';
import 'package:bytebank/screens/transferencia/lista.dart';
import 'package:flutter/material.dart';

void main() => runApp(BytebankApp());

class BytebankApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        primaryColor: Colors.cyan[50],
        accentColor: Colors.blueGrey[300],
        buttonTheme: ButtonThemeData(
          buttonColor: Colors.blueGrey[300],
          textTheme: ButtonTextTheme.primary,
        ),
      ),
      home: Dashboard(),//ListaTransferencias(),
    );
  }
}
