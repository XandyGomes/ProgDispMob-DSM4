import 'package:flutter/material.dart';
import 'package:progdispmobdsm4/screens/contatos/formularioContatos.dart';
import 'database/app_database.dart';
import 'models/contato.dart';
import 'screens/contatos/listaContatos.dart';
import 'screens/dashboard.dart';

void main() {
  runApp(
    Banco(),
  );
}

class Banco extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(
          seedColor: Color(0xff000000),
          brightness: Brightness.light,
          primary: Color(0xff1e38a7),
          secondary: Color(0xff1e38a7),
        ),
      ),
      home: Dashboard(),
    );
  }
}
