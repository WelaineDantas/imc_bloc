import 'package:bloc_pattern/bloc_pattern.dart';
import 'package:flutter/material.dart';
import 'package:imc_bloc/android/pages/home_page.dart';
import 'package:imc_bloc/blocs/imc_bloc.dart';

class AndroidApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "IMC",
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.pink,
      ),
      home: BlocProvider<ImcBloc>(
        child: HomePage(),
        bloc: ImcBloc(),
      ),
    );
  }
}
