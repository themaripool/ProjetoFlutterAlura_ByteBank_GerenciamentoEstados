import 'package:bytebank/components/editor.dart';
import 'package:bytebank/models/saldo.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:provider/provider.dart';

const _tituloAppBar = 'Receber Deposito';
const _dicaCampoValor = '0.00';
const _rotuloCampoValor = 'valor';
const _textoBotaoConfirmar = 'Confirmar';


class FormularioDeposito extends StatelessWidget{
  final TextEditingController _controladorCampoValor = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text(_tituloAppBar)),
      body: SingleChildScrollView(
          child: Column(
            children: <Widget>[
              Editor(
                dica: _dicaCampoValor,
                controlador: _controladorCampoValor,
                rotulo: _rotuloCampoValor,
                icone: Icons.monetization_on,
              ),
              RaisedButton(
                child: Text(_textoBotaoConfirmar),
                onPressed: () => _criaDeposito(context),
              ),
            ],
          ),
        ),
    );
  }

  _criaDeposito(context){
    final double valor = double.tryParse(_controladorCampoValor.text);
    final depositoValido = _validaDeposito(valor);
    if (depositoValido){
      _atualizaEstado(context, valor);
      Navigator.pop(context);
    }
  }

  _atualizaEstado(context, valor){
    Provider.of<Saldo>(context, listen: false).adiciona(valor);
  }

  _validaDeposito(valor){
    final campoPreenchido = valor != null;
    return campoPreenchido;
  }
  
}