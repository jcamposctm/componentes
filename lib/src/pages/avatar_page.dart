import 'package:flutter/material.dart';

class AvatarPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Avatar Page'),
        actions: <Widget>[
          Container(
            padding: EdgeInsets.all(5),
            child: CircleAvatar(
              backgroundImage: NetworkImage(
                  'https://rockfm-cdnmed.agilecontent.com/resources/jpg/8/5/1592495502958.jpg'),
              radius: 25,
            ),
          ),
          Container(
              margin: EdgeInsets.only(right: 10),
              child: CircleAvatar(
                child: Text('SL'),
                backgroundColor: Colors.green,
              ))
        ],
      ),
      body: Center(
        child: FadeInImage(
          image: NetworkImage(
              'https://silencio.com.ar/wp-content/uploads/2019/11/Pink-Floyd-The-Wall-tapa-730.jpg'),
          placeholder: AssetImage('assets/jar-loading.gif'),
          fadeInDuration: Duration(milliseconds: 2000),
        ),
      ),
    );
  }
}
