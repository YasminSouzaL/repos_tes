import 'package:flutter/material.dart';
import 'package:flutter_primeiroapp/modelos/exe_modelo.dart';
import 'package:flutter_primeiroapp/modelos/sentimento_modelo.dart';

class ExercicioTela extends StatelessWidget {
  ExercicioTela({super.key});

  final ExeModelo exercicio = ExeModelo(
    id: "1",
    name: "Puxada alta Pronada",
    treino: " Treino A",
    comoFazer: "Segure a barra com as duas mãos na barra, mantém a coluna reta",
    urlImagem: null,
  );

  final List<SentimentoModelo> listaSentimento = [
    SentimentoModelo(
      id: "1",
      sentindo: "Estou me sentindo bem, mas com um pouco de dor no ombro",
      data: "2021-10-10",
    ),
    SentimentoModelo(
      id: "2",
      sentindo: "Estou me sentindo um frango, mas com um pouco de dor no ombro",
      data: "2021-10-11",
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blue,
      appBar: AppBar(
        title: Column(
          children: [
            Text(exercicio.name, style: const TextStyle(
              fontSize: 24,
              fontWeight: FontWeight.bold,
              color: Colors.white),
            ),
            Text(exercicio.treino, style: TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.bold,
              color: Colors.white),
            ),
          ],
        ),
        centerTitle: true,
        backgroundColor: const Color(0xFF0A6D92),
        elevation: 0,
        toolbarHeight: 72,
        shape: RoundedRectangleBorder(
          borderRadius: const BorderRadius.vertical(
            bottom: Radius.circular(32),
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          print("FAB Foi Clicado!");
        }, 
        child: const Icon(Icons.add),
      ),
      body: Container(
        margin: const EdgeInsets.all(8),
        padding: const EdgeInsets.all(16.0),
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(16),
          ),
        child: ListView(
          children: [
            SizedBox(
              height: 255,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  ElevatedButton(
                    onPressed: (){}, 
                    child: const Text("Enviar foto"),
                  ),
                  ElevatedButton(
                    onPressed: (){}, 
                    child: const Text("Tirar foto"),
                  ),
                ],
              ),
            ),
            const SizedBox(height: 8),
            const Text(
              "Como fazer?", 
              style: TextStyle(
                fontWeight: FontWeight.bold, 
                fontSize: 18,
              ),
            ),
            Text(exercicio.comoFazer),
            const Padding(
              padding:  EdgeInsets.all(8.0),
              child:  Divider(color: Colors.black),
            ),
            const Text(
              "Como estou me sentindo?", 
              style: TextStyle(
                fontWeight: FontWeight.bold, 
                fontSize: 18,
              ),
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: List.generate(listaSentimento.length, (index){
                SentimentoModelo sentimentoAgora = listaSentimento [index];
                return ListTile(
                  dense: true,
                  contentPadding: EdgeInsets.zero,
                  title: Text(sentimentoAgora.sentindo),
                  subtitle: Text(sentimentoAgora.data),
                  leading: const Icon(Icons.double_arrow),
                  trailing: 
                    IconButton(
                      icon: const Icon(
                        Icons.delete, 
                        color: Colors.red,
                      ), 
                      onPressed: () {
                        print("DELETAR: ${sentimentoAgora.sentindo}");
                      },
                    ),
                );
              }),
            )
          ],
        ),
      )
    );
  }
}