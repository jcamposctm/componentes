import 'package:componentes/src/providers/menu_provider.dart';
import 'package:componentes/src/utils/icono_string_util.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Componentes'),
      ),
      body: _lista(),
    );
  }

  Widget _lista() {
    return FutureBuilder(
      initialData: [],
      future: menuProvider.cargarData(),
      builder: (context, snapshot) {
        return ListView(
          children: _listaItems(snapshot.data, context),
        );
      },
    );
  }

  _listaItems(List<dynamic> data, BuildContext context) {
    final List<Widget> opciones = [];
    data.forEach((opt) {
      final widgetTemp = ListTile(
        title: Text(opt['texto']),
        leading: getIcon(opt['icon']),
        trailing: Icon(Icons.keyboard),
        onTap: () {
          //final route = MaterialPageRoute(builder: (context) => AlertPage());
          // Navigator.push(context, route);
          Navigator.pushNamed(context, opt['ruta']);
        },
      );
      opciones..add(widgetTemp)..add(Divider());
    });

    return opciones;
  }
}
