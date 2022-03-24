import 'package:flutter/material.dart';

class Login extends StatefulWidget {
  const Login({ Key? key }) : super(key: key);

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {

  TextEditingController _loginEditingController = TextEditingController();
  TextEditingController _senhaEditingController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Sermil - Login"),
        backgroundColor: Colors.yellow,
      ),
      body: Center(
        child: Container(
          padding: EdgeInsets.all(16),
          child: ListView(
            children: [
              Image.asset("imagens/sermil.png"),
              Padding(
                padding: EdgeInsets.all(16),
                child: TextField(
                  keyboardType: TextInputType.emailAddress,
                  decoration: InputDecoration(labelText: "E-mail"),
                  controller: _loginEditingController,
                  style: TextStyle(
                    fontSize: 12,
                  )
                ),
              ),
              Padding(
                padding: EdgeInsets.all(16),
                child: TextField(
                  keyboardType: TextInputType.visiblePassword,
                  decoration: InputDecoration(labelText: "Senha"),
                  controller: _senhaEditingController,
                  obscureText: true,
                  style: TextStyle(
                    fontSize: 12,
                  )
                ),
              ),
              RaisedButton(
                child: Text("Entrar"),
                color: Colors.yellow,
                onPressed: (){
                  print("Login: " + _loginEditingController.text);
                  print("Senha: " + _senhaEditingController.text);
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
