import 'package:flutter/material.dart';
import 'package:sharedpreferences/screens/controller/login.controller.dart';
import '../snippets.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  late TextEditingController _controllerEmail;
  late TextEditingController _controllerPassword;
  late LoginController _loginController;

  _onPressed() {}

  @override
  void initState() {
    _controllerEmail = TextEditingController();
    _controllerPassword = TextEditingController();
    _loginController = LoginController();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          const Padding(
            padding: EdgeInsets.only(bottom: 20),
            child: Text(
              "Login",
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(bottom: 20),
            child: TextFormField(
              controller: _controllerEmail,
              decoration: inputDecoration(label: "Informe o e-mail"),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(bottom: 20),
            child: TextFormField(
              controller: _controllerPassword,
              decoration: inputDecoration(label: "Informe a senha"),
            ),
          ),
          ElevatedButton(onPressed: _loginController.save(_controllerEmail.text, _controllerPassword.text), child: const Text("Entrar")),
          Row(
            children: [
              const Text("Não tem conta? "),
              InkWell(
                onTap: openRoute(context, CadastroScreen),
                child: const Text(
                  "Cadastro",
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
              )
            ],
          )
        ],
      ),
    );
  }
}
