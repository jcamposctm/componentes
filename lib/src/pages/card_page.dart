import 'package:flutter/material.dart';

class CardPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Cards'),
      ),
      body: ListView(
        padding: EdgeInsets.all(10),
        children: <Widget>[_cardTipo1(), SizedBox(height: 50), _cardTipo2()],
      ),
    );
  }

  _cardTipo1() {
    return Card(
      child: Column(
        children: [
          ListTile(
            leading: Icon(Icons.photo_album),
            title: Text('Soy el titulo de la tarjeta'),
            subtitle: Text(
                'Texto largo porque esto tiene que ser más largo que el título'),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: <Widget>[
              FlatButton(onPressed: () {}, child: Text('Cancelar')),
              FlatButton(
                onPressed: () {},
                child: Text('Ok'),
                color: Colors.green,
                textColor: Colors.white,
              )
            ],
          )
        ],
      ),
    );
  }

  Widget _cardTipo2() {
    final card = Container(
      //shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(30)),
      child: Column(
        children: <Widget>[
          FadeInImage(
            height: 300,
            fit: BoxFit.cover,
            fadeInDuration: Duration(milliseconds: 200),
            placeholder: AssetImage('assets/jar-loading.gif'),
            image: NetworkImage(
                'https://www.teahub.io/photos/full/96-968263_pink-floyd-animals-poster-landscape.jpg'),
          ),
          Container(
            padding: EdgeInsets.all(10),
            child: Text('No tengo idea de que poner'),
          )
        ],
      ),
    );

    return Container(
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(15),
            color: Colors.white,
            boxShadow: <BoxShadow>[
              BoxShadow(color: Colors.grey, blurRadius: 5.0, spreadRadius: 5.0)
            ]),
        child: ClipRRect(
          child: card,
          borderRadius: BorderRadius.circular(25),
        ));
  }
}
