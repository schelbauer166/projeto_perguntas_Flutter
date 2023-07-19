import 'package:flutter/material.dart';

class Resposta extends StatelessWidget {
  final String texto;
  final void Function() quandoPrecionado;

  Resposta(this.texto, this.quandoPrecionado);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      child: ElevatedButton(
        onPressed: quandoPrecionado,
        style: const ButtonStyle(
            backgroundColor: MaterialStatePropertyAll<Color>(Colors.blue)),
        child: Text(
          texto,
          style: const TextStyle(color: Colors.white),
        ),
      ),
    );
  }
}
