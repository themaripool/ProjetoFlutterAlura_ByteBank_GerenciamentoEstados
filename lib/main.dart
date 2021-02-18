import 'package:bytebank/models/saldo.dart';
import 'package:bytebank/screens/dashboard/dashboard.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

void main() => runApp(ChangeNotifierProvider(
    create: (context) => Saldo(0),
    child: BytebankApp(),
  )
);

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
