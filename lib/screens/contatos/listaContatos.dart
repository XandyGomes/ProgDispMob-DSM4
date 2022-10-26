import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'formularioContatos.dart';

const _tituloAppBar = 'Contatos';

class ListaContatos extends StatelessWidget {
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
            Icon(Icons.list_alt_outlined, size: 36.0),
          ],
        ),
      ),
      body: ListView(
        children: [
          Card(
            child: ListTile(
              title: Text(
                'Alexandre G.',
                style: TextStyle(fontSize: 24.0),
              ),
              subtitle: Text(
                '4521-2',
                style: TextStyle(fontSize: 16.0),
              ),
            ),
          ),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.of(context)
              .push(
                MaterialPageRoute(
                  builder: (context) => FormularioContatos(),
                ),
              )
              .then(
                (newContato) => debugPrint(newContato.toString()),
              );
        },
        child: Icon(
          Icons.person_add_alt,
          size: 30.0,
        ),
      ),
    );
  }
}
