import 'package:flutter/material.dart';
import 'package:progdispmobdsm4/screens/contatos/listaContatos.dart';

const _tituloAppBar = 'Dashboard';
const _textContainer = 'Contatos';

class Dashboard extends StatelessWidget {
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
            Icon(Icons.home, size: 36.0),
          ],
        ),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          // Image.network(
          //     'data:image/png;base64,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')
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Image.asset('images/bb.jpg'),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: InkWell(
              onTap: () {
                Navigator.of(context).push(
                  MaterialPageRoute(
                    builder: (context) => ListaContatos(),
                  ),
                );
              },
              child: Container(
                height: 100,
                width: 150,
                color: Color(0xfff7dd19),
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Icon(
                        Icons.people,
                        size: 30,
                        color: Color(0xff1e38a7),
                      ),
                      Text(
                        _textContainer,
                        style: TextStyle(
                          color: Color(0xff1e38a7),
                          fontSize: 20.0,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
