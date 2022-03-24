import 'package:flutter/material.dart';

class Inicio extends StatefulWidget {
  const Inicio({ Key? key }) : super(key: key);

  @override
  State<Inicio> createState() => _InicioState();
}

class _InicioState extends State<Inicio> {

  bool _item01 = false;
  bool _item02 = false;
  bool _item03 = false;
  bool _item04 = false;
  String _data = "Março, 23";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Sermil - Inicio"),
        backgroundColor: Colors.yellow,
      ),
      body: Container(
        child: ListView(
          children: [
            Padding(
              padding: EdgeInsets.only(top: 32, bottom: 16),
              child: Text(
                this._data,
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold
                ),
              ),
            ),
            CheckboxListTile(
              title: Text("Serviço 01"),
              subtitle: Text("Manutenção 01"),
              activeColor: Colors.green,
              //selected: true,
              secondary: Icon(Icons.arrow_forward_ios),
              value: _item01,
               onChanged: (valor){
                 setState(() {
                   _item01 = valor!;
                 });
                 //print("Brasileira: " + valor.toString());
               }
            ),
            CheckboxListTile(
              title: Text("Serviço 02"),
              subtitle: Text("Manutenção 02"),
              activeColor: Colors.green,
              //selected: true,
              secondary: Icon(Icons.arrow_forward_ios),
              value: _item02,
               onChanged: (valor){
                 setState(() {
                   _item02 = valor!;
                 });
                 //print("Mexicana: " + valor.toString());
               }
            ),
            CheckboxListTile(
              title: Text("Serviço 03"),
              subtitle: Text("Manutenção 03"),
              activeColor: Colors.green,
              //selected: true,
              secondary: Icon(Icons.arrow_forward_ios),
              value: _item03,
               onChanged: (valor){
                 setState(() {
                   _item03 = valor!;
                 });
                 //print("Mexicana: " + valor.toString());
               }
            ),
            CheckboxListTile(
              title: Text("Serviço 04"),
              subtitle: Text("Manutenção 04"),
              activeColor: Colors.green,
              //selected: true,
              secondary: Icon(Icons.arrow_forward_ios),
              value: _item04,
               onChanged: (valor){
                 setState(() {
                   _item04 = valor!;
                 });
                 //print("Mexicana: " + valor.toString());
               }
            ),
            RaisedButton(
              child: Text(
                "Salvar",
                style: TextStyle(
                  fontSize: 20,
                ),
                ),
              onPressed: (){
                print(
                  "Serviço 01: " + _item01.toString() + 
                  " Serviço 02: " + _item02.toString() + 
                  " Serviço 03: " + _item03.toString() + 
                  " Serviço 04: " + _item04.toString()
                );
              }
              ),
          ],
        ),
      ),
    );
  }
}
