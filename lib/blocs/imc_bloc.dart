import 'dart:async';

import 'package:bloc_pattern/bloc_pattern.dart';
import 'package:flutter/material.dart';

class ImcBloc implements BlocBase {
  TextEditingController controllerAltura = TextEditingController();
  TextEditingController controllerPeso = TextEditingController();
  var resultado = "Preencha os dados para calcular seu IMC";

  StreamController<String> _resultadoController = StreamController<String>();
  Stream<String> get outResultado => _resultadoController.stream;
  Sink<String> get inResultado => _resultadoController.sink;

  calcular() {
    double altura = double.parse(controllerAltura.text) / 100;
    double peso = double.parse(controllerPeso.text);
    double imc = peso / (altura * altura);

    if (imc < 18.6) {
      inResultado
          .add(resultado = "Abaixo do Peso (${imc.toStringAsPrecision(2)})");
    } else if (imc >= 18.6 && imc <= 24.9) {
      inResultado.add(resultado = "Peso Ideal (${imc.toStringAsPrecision(2)})");
    } else if (imc >= 24.9 && imc <= 29.9) {
      inResultado.add(resultado =
          "Levemente acima do peso (${imc.toStringAsPrecision(2)})");
    } else if (imc >= 24.9 && imc <= 34.9) {
      inResultado
          .add(resultado = "Obesidade Grau I (${imc.toStringAsPrecision(2)})");
    } else if (imc >= 34.9 && imc <= 39.9) {
      inResultado
          .add(resultado = "Obesidade Grau II (${imc.toStringAsPrecision(2)})");
    } else if (imc >= 40) {
      inResultado.add(
          resultado = "Obesidade Grau III (${imc.toStringAsPrecision(2)})");
    }
  }

  @override
  void dispose() {
    _resultadoController.close();
  }
}
