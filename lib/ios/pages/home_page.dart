import 'package:bloc_pattern/bloc_pattern.dart';
import 'package:flutter/cupertino.dart';
import 'package:imc_bloc/blocs/imc_bloc.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    final ImcBloc bloc = BlocProvider.of<ImcBloc>(context);
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
            child: StreamBuilder<String>(
              stream: bloc.outResultado,
              initialData: bloc.resultado,
              builder: (context, snapshot) {
                return Text(
                  snapshot.data,
                  textAlign: TextAlign.center,
                );
              },
            ),
          ),
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
