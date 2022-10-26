import 'package:flutter/material.dart';

import '../../models/contato.dart';

const _tituloAppBar = 'Novo Contato';

class FormularioContatos extends StatefulWidget {
  @override
  State<FormularioContatos> createState() => _FormularioContatosState();
}

class _FormularioContatosState extends State<FormularioContatos> {
  final TextEditingController _nameController = TextEditingController();

  final TextEditingController _accountNumberController =
      TextEditingController();

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
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: TextField(
              controller: _nameController,
              decoration: InputDecoration(
                labelText: 'Nome',
                hintText: 'Fulano de Tal',
              ),
              style: TextStyle(fontSize: 20.0),
              keyboardType: TextInputType.text,
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: TextField(
              controller: _accountNumberController,
              decoration: InputDecoration(
                labelText: 'Número da Conta',
                hintText: '12345',
              ),
              style: TextStyle(fontSize: 20.0),
              keyboardType: TextInputType.number,
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: SizedBox(
              width: double.maxFinite,
              height: 36,
              child: ElevatedButton(
                child: Text(
                  'Adicionar',
                  style: TextStyle(fontSize: 20.0),
                ),
                onPressed: () {
                  final String name = _nameController.text;
                  final int? accountNumber =
                      int.tryParse(_accountNumberController.text);
                  final Contato newContato = Contato(name, accountNumber!);
                  Navigator.pop(context, newContato);
                },
              ),
            ),
          ),
        ],
      ),
    );
  }
}
