import 'package:flutter/material.dart';
import 'package:flutter_primeiroapp/_comum/minhas_cores.dart';

class AutenticacaoTela extends StatefulWidget {
  const AutenticacaoTela({super.key});

  @override
  State<AutenticacaoTela> createState() => _AutenticacaoTelaState();
}

class _AutenticacaoTelaState extends State<AutenticacaoTela> {
  bool queroEntrar = true;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blue,
      body: Stack(
        children: [
          Container(
            decoration: const BoxDecoration(
              gradient: LinearGradient(
                begin: Alignment.topCenter,
                end: Alignment.bottomCenter,
                colors: [
                  MinhasCores.azulTopoGradiente,
                  MinhasCores.azulBaixoGradiente,
                  ]
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: Form(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  Image.asset("assets/images/logo.png",height: 128),
                  Text(
                    "Gym_APP", 
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontSize: 48, 
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                    ),
                  ),
                  SizedBox(height: 32,),
                  TextFormField(
                    decoration: const InputDecoration(
                      label: Text("E-mail"),)
                  ),
                  TextFormField(
                    decoration: const InputDecoration(
                      label: Text("Senha"),
                    ),
                    obscureText: true,
                  ),
                  SizedBox(height: 16,),
                  ElevatedButton(
                    onPressed: (){},
                    child: Text(queroEntrar ? "Entrar" : "Cadastrar"),
                  ),
                  Divider(),
                  TextButton(
                    onPressed: () {},
                    child: const Text("Ainda não tem um conta? Cadastre-se!"),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}