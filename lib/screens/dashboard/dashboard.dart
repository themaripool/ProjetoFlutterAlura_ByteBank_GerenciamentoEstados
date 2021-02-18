import 'package:bytebank/models/saldo.dart';
import 'package:bytebank/screens/dashboard/saldo.dart';
import 'package:bytebank/screens/deposito/formularioDeposito.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class Dashboard extends StatelessWidget {
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("Bytebank"),
        ),
        body: ListView(
          children: <Widget>[
            Align(alignment: Alignment.topCenter,child: SaldoCard(),),
            RaisedButton(
                  child: Text('Receber Deposito'), 
                  onPressed: (){
                    //saldo.adiciona(10);
                    Navigator.push(context, MaterialPageRoute(builder: (context){
                      return FormularioDeposito();
                    }));
                  }
              )
          ]
        ));
  }
}
