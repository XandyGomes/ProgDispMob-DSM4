import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:progdispmobdsm4/database/app_database.dart';
import '../../models/contato.dart';
import 'formularioContatos.dart';

const _tituloAppBar = 'Contatos';

class ListaContatos extends StatefulWidget {
  @override
  State<ListaContatos> createState() => _ListaContatosState();
}

class _ListaContatosState extends State<ListaContatos> {
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
      body: FutureBuilder(
        initialData: [],
        future: findAll(),
        builder: (context, snapshot) {
          switch (snapshot.connectionState) {
            case ConnectionState.none:
              break;
            case ConnectionState.waiting:
              return Center(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    CircularProgressIndicator(),
                    Text('Loading'),
                  ],
                ),
              );
            case ConnectionState.active:
              break;
            case ConnectionState.done:
              final List<Contato> contatos = snapshot.data as List<Contato>;
              return ListView.builder(
                itemBuilder: (context, indice) {
                  final Contato contato = contatos[indice];

                  return _ItemContato(contato);
                },
                itemCount: contatos.length,
              );
          }
          return Text('Unkown error');
        },
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.of(context)
              .push(
                MaterialPageRoute(
                  builder: (context) => FormularioContatos(),
                ),
              )
              .then((value) => setState(() {}));
        },
        child: Icon(
          Icons.person_add_alt,
          size: 30.0,
        ),
      ),
    );
  }
}

class _ItemContato extends StatelessWidget {
  final Contato contato;

  _ItemContato(this.contato);

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Card(
      child: ListTile(
        title: Text(
          contato.name,
          style: TextStyle(fontSize: 24.0),
        ),
        subtitle: Text(
          contato.accountNumber.toString(),
          style: TextStyle(fontSize: 16.0),
        ),
      ),
    );
  }
}
