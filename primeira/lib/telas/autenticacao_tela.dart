import 'package:flutter/material.dart';
import 'package:flutter_primeiroapp/_comum/minhas_cores.dart';
import 'package:flutter_primeiroapp/componentes/stylo_campo_au.dart';
import 'package:flutter_primeiroapp/servico/auth_servico.dart';

class AutenticacaoTela extends StatefulWidget {
  const AutenticacaoTela({super.key});

  @override
  State<AutenticacaoTela> createState() => _AutenticacaoTelaState();
}

class _AutenticacaoTelaState extends State<AutenticacaoTela> {
  bool queroEntrar = true;
  final _formKey = GlobalKey<FormState>();
  
  TextEditingController _emailController = TextEditingController();
  TextEditingController _senhaController = TextEditingController();
  TextEditingController _nomeController = TextEditingController();
  
  AutenticacaoServico _autenticacaoServico = AutenticacaoServico();

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
              key: _formKey,
              child: Center(
                child: SingleChildScrollView(
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
                      const SizedBox(height: 32,),
                      TextFormField(
                        controller: _emailController,
                        decoration: getAuthenticationInputDecoration("E-mail"),
                        validator: (String? value){
                          if(value == null){
                            return "E-mail é obrigatório";
                          }
                          if(value.length < 5){
                            return "E-mail muito curto";
                          }
                          if(!value.contains("@")){
                            return "E-mail inválido";
                          }
                          return null;
                        },
                      ),
                      const SizedBox(height: 8,),
                      TextFormField(
                        controller: _senhaController,
                        decoration: getAuthenticationInputDecoration("Senha"),
                        obscureText: true,
                        validator: (String? value){
                          if(value == null){
                            return "Senha é obrigatória";
                          }
                          if(value.length < 6){
                            return "Senha muito curta";
                          }
                          return null;
                        },
                      ),
                      Visibility(
                        visible: !queroEntrar, 
                        child: Column(
                          children: [
                            TextFormField(
                              decoration:getAuthenticationInputDecoration("Confimar a Senha"),
                              obscureText: true,
                              validator: (String? value){
                                if(value == null){
                                  return "Confirmação de senha é obrigatória";
                                }
                                if(value.length < 6){
                                  return "Senha muito curta";
                                }
                                return null;
                              },
                            ),
                            const SizedBox(height: 8,),
                            TextFormField(
                              controller: _nomeController,
                              decoration: getAuthenticationInputDecoration("Nome"),
                              validator: (String? value){
                                if(value == null){
                                  return "Nome é obrigatório";
                                }
                                if(value.length < 3){
                                  return "Nome muito curto";
                                }
                                return null;
                              },
                            ),
                          ],
                        ), 
                      ),
                      SizedBox(height: 16,),
                      ElevatedButton(
                        onPressed: (){
                          botaoPrincipalClicado();
                        },
                        style: ElevatedButton.styleFrom(
                          backgroundColor: MinhasCores.azulEscuro,
                          foregroundColor: MinhasCores.branco,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(64),
                          ),
                          padding: EdgeInsets.symmetric(vertical: 16),
                        ),
                        child: Text(queroEntrar ? "Entrar" : "Cadastrar"),
                      ),
                      Divider(),
                      TextButton(
                        onPressed: () {
                          setState(() {
                            queroEntrar = !queroEntrar;
                          });
                        },
                        child: Text((queroEntrar) ? "Ainda não tem um conta? Cadastre-se!" : "Já tem uma conta? Entra"),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
  botaoPrincipalClicado(){
    String email = _emailController.text;
    String senha = _senhaController.text;
    String nome = _nomeController.text;

    if(_formKey.currentState!.validate()){
      if(queroEntrar){
        print("Entrada valida");
      }
      else{
        print("Cadastro valido");
        print("${_emailController.text}, ${_senhaController.text}, ${_nomeController.text}");
        _autenticacaoServico.cadastrarUsuario(
          nome: nome, 
          email: email, 
          senha: senha,
        );      
      }
    }else{
      print("Form Inválido!");
    }
  }
}