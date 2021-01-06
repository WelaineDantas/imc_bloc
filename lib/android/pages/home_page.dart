import 'package:flutter/material.dart';
import 'package:imc_bloc/blocs/imc_bloc.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  ImcBloc bloc = ImcBloc();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Cálculo de IMC"),
      ),
      body: ListView(
        children: [
          Padding(
            padding: EdgeInsets.all(20),
            child: TextFormField(
              decoration: InputDecoration(
                labelText: "Altura (cm)",
              ),
              controller: bloc.controllerAltura,
              keyboardType: TextInputType.number,
            ),
          ),
          Padding(
            padding: EdgeInsets.all(20),
            child: TextFormField(
              decoration: InputDecoration(
                labelText: "Peso (kg)",
              ),
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
            child: FlatButton(
              color: Theme.of(context).primaryColor,
              child: Text(
                "Calcular",
                style: TextStyle(
                  color: Colors.white,
                ),
              ),
              onPressed: () {
                setState(() {
                  bloc.calcular();
                });
              },
            ),
          ),
        ],
      ),
    );
  }
}
