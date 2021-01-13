import 'package:flutter/material.dart';

class InputPage extends StatefulWidget {
  @override
  _InputPageState createState() => _InputPageState();
}

class _InputPageState extends State<InputPage> {
  String _nombre = '';
  String _email = '';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Input de texto'),
      ),
      body: ListView(
        padding: EdgeInsets.symmetric(horizontal: 10.0, vertical: 20.0),
        children: <Widget>[
          _crearInput(),
          _crearPersona(),
          Divider(),
          _crearEmail()
        ],
      ),
    );
  }

  _crearInput() {
    return TextField(
      autofocus: true,
      textCapitalization: TextCapitalization.sentences,
      decoration: InputDecoration(
          border: OutlineInputBorder(),
          counter: Text('Letras ${_nombre.length}'),
          hintText: 'Nombre de la persona',
          labelText: 'Sólo es el nombre',
          icon: Icon(Icons.arrow_forward_sharp),
          suffixIcon: Icon(Icons.lock_clock)),
      onChanged: (val) {
        setState(() {
          _nombre = val;
        });
      },
    );
  }

  Widget _crearPersona() {
    return ListTile(
      title: Text('Nombre es: $_nombre'),
      subtitle: Text('Email: $_email'),
    );
  }

  Widget _crearEmail() {
    return TextField(
        keyboardType: TextInputType.emailAddress,
        decoration: InputDecoration(
            border: OutlineInputBorder(borderRadius: BorderRadius.circular(20)),
            counter: Text('Letras ${_nombre.length}'),
            hintText: 'Email',
            labelText: 'email',
            icon: Icon(Icons.alternate_email),
            suffixIcon: Icon(Icons.email)),
        onChanged: (valor) => setState(() {
              _email = valor;
            }));
  }
}
