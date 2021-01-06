import 'package:flutter/cupertino.dart';
import 'package:imc_bloc/blocs/imc_bloc.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  var bloc = ImcBloc();

  @override
  Widget build(BuildContext context) {
    return CupertinoPageScaffold(
      navigationBar: CupertinoNavigationBar(
        middle: Text("Cálculo de IMC"),
      ),
      child: ListView(
        children: [
          Padding(
            padding: EdgeInsets.all(20),
            child: CupertinoTextField(
              placeholder: "Altura (cm)",
              controller: bloc.controllerAltura,
              keyboardType: TextInputType.number,
            ),
          ),
          Padding(
            padding: EdgeInsets.all(20),
            child: CupertinoTextField(
              placeholder: "Peso (kg)",
              controller: bloc.controllerPeso,
              keyboardType: TextInputType.number,
            ),
          ),
          Padding(
              padding: EdgeInsets.all(20),
              child: Text(
                bloc.resultado,
                textAlign: TextAlign.center,
              )),
          Padding(
              padding: EdgeInsets.all(20),
              child: CupertinoButton.filled(
                child: Text("Calcular"),
                onPressed: () {
                  setState(() {
                    bloc.calcular();
                  });
                },
              )),
        ],
      ),
    );
  }
}
