import 'package:flutter/widgets.dart';

class ImcBloc {
  TextEditingController controllerAltura = TextEditingController();
  TextEditingController controllerPeso = TextEditingController();
  var resultado = "Preencha os dados para calcular seu IMC";

  calcular() {
    double altura = double.parse(controllerAltura.text) / 100;
    double peso = double.parse(controllerPeso.text);
    double imc = peso / (altura * altura);

    if (imc < 18.6) {
      resultado = "Abaixo do Peso (${imc.toStringAsPrecision(2)})";
    } else if (imc >= 18.6 && imc <= 24.9) {
      resultado = "Peso Ideal (${imc.toStringAsPrecision(2)})";
    } else if (imc >= 24.9 && imc <= 29.9) {
      resultado = "Levemente acima do peso (${imc.toStringAsPrecision(2)})";
    } else if (imc >= 24.9 && imc <= 34.9) {
      resultado = "Obesidade Grau I (${imc.toStringAsPrecision(2)})";
    } else if (imc >= 34.9 && imc <= 39.9) {
      resultado = "Obesidade Grau II (${imc.toStringAsPrecision(2)})";
    } else if (imc >= 40) {
      resultado = "Obesidade Grau III (${imc.toStringAsPrecision(2)})";
    }
  }
}
