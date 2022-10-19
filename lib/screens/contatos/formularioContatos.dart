import 'package:flutter/material.dart';

const _tituloAppBar = 'Novo Contato';

class FormularioContatos extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        title: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              _tituloAppBar,
              style: TextStyle(fontSize: 26.0),
            ),
            Icon(Icons.person, size: 36.0),
          ],
        ),
      ),
    );
  }
}
