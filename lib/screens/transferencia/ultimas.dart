import 'package:bytebank/models/transferencias.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'lista.dart';

final titulo = 'Ultimas Transferencias';

class Ultimas extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(titulo, style: TextStyle(
                  fontSize: 20.0, 
                  fontWeight: FontWeight.bold
                ),),

        Consumer<Transferencias>(builder: (context, transferencias, child){

          final _quantidade = transferencias.transferencias.length;
          final _ultimasTransferencias = transferencias.transferencias.reversed.toList();
          int tamanho = 2;

          if (_quantidade == 0){
            return SemTransferencia();
          }

          if (_quantidade < 3){
            tamanho = _quantidade;
          }

          return ListView.builder(
            padding: EdgeInsets.all(8),
            itemCount: tamanho,
            shrinkWrap: true,
            itemBuilder: (context, indice){
              return ItemTransferencia(_ultimasTransferencias[indice]);
            },
          );
        }),


        RaisedButton(
            child: Text('Ver todas Transferencias'),
            onPressed: () {
              Navigator.push(context, MaterialPageRoute(builder: (context) {
                return ListaTransferencias();
              }));
            }),

          
      ],
    );
  }
}


class SemTransferencia extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Card(
      margin: EdgeInsets.all(40),
      child: Padding(
        padding: EdgeInsets.all(10),
        child: 
        Text('Voce ainda nao cadastrou nenhuma transferencia',
          textAlign: TextAlign.center,),
        ),
    );
  }
  
}