import 'package:flutter/material.dart';
import 'package:prac_02/Config/dataConfigProvider.dart';
import 'package:prac_02/Config/dataConfigProvider.dart';
import 'package:prac_02/Config/singleTon.dart';
import 'package:prac_02/homePage.dart';
import 'package:provider/provider.dart';

void main() {
  setupServiceLocator();

  final dataConfigure = serviceLocator<DataConfigure>();

  runApp(MultiProvider(
    providers: [ChangeNotifierProvider(create: (context) => dataConfigure)],
    child: const Main(),
  ));
}

class Main extends StatelessWidget {
  const Main({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: homePage(),
    );
  }
}
