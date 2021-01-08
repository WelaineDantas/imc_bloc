import 'package:bloc_pattern/bloc_pattern.dart';
import 'package:flutter/cupertino.dart';
import 'package:imc_bloc/blocs/imc_bloc.dart';
import 'package:imc_bloc/ios/pages/home_page.dart';

class IOSApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return CupertinoApp(
      title: "IMC",
      debugShowCheckedModeBanner: false,
      home: BlocProvider<ImcBloc>(
        child: HomePage(),
        bloc: ImcBloc(),
      ),
    );
  }
}
