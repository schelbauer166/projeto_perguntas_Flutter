import 'package:flutter/material.dart';

class Resultado extends StatelessWidget {
  final pontuacaoTotal;

  void Function() onReiniciarQuestionario;

  Resultado(this.pontuacaoTotal, this.onReiniciarQuestionario);

  String get fraseResultado {
    if (pontuacaoTotal < 8) {
      return "Parabens!";
    } else if (pontuacaoTotal < 12) {
      return "Voce e bom!";
    } else if (pontuacaoTotal < 16) {
      return "Impressionante!";
    } else {
      return "Nivel Jedi!";
    }
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Center(
          child: Text(
            fraseResultado,
            style: TextStyle(fontSize: 28),
          ),
        ),
        TextButton(
            onPressed: onReiniciarQuestionario,
            child: Text(
              "Retornar?",
              style: TextStyle(
                fontSize: 22,
              ),
            ))
      ],
    );
  }
}
