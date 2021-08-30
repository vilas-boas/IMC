import 'package:flutter/material.dart';

void main() => runApp(ByteBankApp());

class ByteBankApp extends StatelessWidget{
  @override
  Widget build (BuildContext context){
    return MaterialApp(
      home: Scaffold(
        body: FormularioTransferencia(),
      ),
    );
  }
}

class FormularioTransferencia extends StatelessWidget{
  @override
  Widget build(BuildContext context){
    return Scaffold(
      appBar: AppBar(title: Text("Criando Transferência"),),
      body: Column(
        children: <Widget> [
          Text("Então mama...."),
        ],
      ),
    );
  }
}

class ListaTransferencias extends StatelessWidget{
  @override
  Widget build(BuildContext context){
    return Scaffold(
      appBar: AppBar(title: Text("Transferências"),),

      body: Column(
        children: <Widget> [
          ItemTransferencia(Transferencia(100.10, 1001)),      
          ItemTransferencia(Transferencia(150.00, 1001)),      
          ItemTransferencia(Transferencia(10.00, 1001)),      
          ItemTransferencia(Transferencia(100.01, 1001)),      
          ItemTransferencia(Transferencia(50.00, 1001)),      
          ItemTransferencia(Transferencia(75.00, 1002)),      
        ],
      ),

      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.add),
        onPressed: (){
        },
      ),
    );
  }
}

class ItemTransferencia extends StatelessWidget{
  
  final Transferencia _transferencia;

  ItemTransferencia(this._transferencia);

  @override
  Widget build(BuildContext context){
    return Card(
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