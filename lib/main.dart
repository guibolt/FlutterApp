import 'package:flutter/material.dart';

void main() => runApp(MaterialApp(
  home: Scaffold(
    body: ListaTransferencia(),
    appBar: AppBar(title: Text('Transfêrencias'),),
    floatingActionButton: FloatingActionButton(
      child: Icon(Icons.add),
    ),

  ),
));

class ListaTransferencia extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Column(
      children: <Widget>[
        ITtemTransferencia(Transferencia(100, 1200)),
        ITtemTransferencia(Transferencia(150, 1300)),
        ITtemTransferencia(Transferencia(160, 1400))
      ],
    );
  }

  }

class ITtemTransferencia extends StatelessWidget {

  final Transferencia _transferencia;

  ITtemTransferencia(this._transferencia);

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return  Card(
      child: ListTile(
        leading: Icon(Icons.monetization_on),
        title: Text(_transferencia.valor.toString()),
        subtitle: Text(_transferencia.numeroConta.toString()),
      ),
    );
  }

}

class Transferencia {
  final double valor;
  final int numeroConta;

  Transferencia(this.valor, this.numeroConta);
}

