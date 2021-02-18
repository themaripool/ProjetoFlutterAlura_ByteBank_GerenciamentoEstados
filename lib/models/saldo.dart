import 'package:flutter/material.dart';

class Saldo extends ChangeNotifier{
  double valor;

  Saldo(
    this.valor
  );

  @override
  String toString() {
    return 'R\$ $valor';
  }

  void adiciona(double valor){
    this.valor += valor;
    notifyListeners(); //notifica sobre a lateracao do valor do saldo
  }

  void subtrai(double valor){
    this.valor -= valor;
    notifyListeners(); //notifica sobre a lateracao do valor do saldo
  }
}