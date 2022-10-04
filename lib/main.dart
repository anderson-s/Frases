import 'dart:math';

import 'package:flutter/material.dart';

void main() {
  runApp(
    const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Home(),
    ),
  );
}

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  int i = 0;
  String imprimir = "Clique para obter uma mensagem!";
  List<String> frases = [
    "Todo dinheiro que vem fácil, vai fácil. E todo dinheiro que vem com muito esforço, vai fácil também!",
    "Tudo o que tiver pra dar errado, vai dar errado!",
    "Quando a vida te der limões, faça uma bananada!",
    "Continue tentando, mas saiba que a falha é certa!",
    "Quem inventou o trabalho não tinha o que fazer!",
    "Lute como nunca. Perca como sempre!",
  ];

  @override
  void _gerarNumero() {
    var numeroGerado = Random().nextInt(frases.length);
    setState(() {
      imprimir = frases[numeroGerado];
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Frases motivacionais"),
        backgroundColor: Colors.green,
      ),
      body: Center(
        child: Container(
          //O container possui o tamanho do filho
          padding: const EdgeInsets.all(16),
          // width: double.infinity,
          // decoration:
          //     BoxDecoration(border: Border.all(width: 3, color: Colors.amber)),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Image.asset("assets/logo.png"),
              Text(
                imprimir,
                style: const TextStyle(
                  fontSize: 25,
                  color: Colors.black,
                  fontStyle: FontStyle.italic,
                ),
              ),
              ElevatedButton(
                onPressed: () {
                  _gerarNumero();
                },
                style: ButtonStyle(
                  backgroundColor: MaterialStateProperty.all(Colors.green),
                ),
                child: const Text("Obter uma frase",
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 25,
                      fontWeight: FontWeight.bold,
                    )),
              )
            ],
          ),
        ),
      ),
    );
  }
}
