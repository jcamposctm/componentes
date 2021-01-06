import 'dart:convert';
import 'package:flutter/services.dart' show rootBundle;

class _MenuProvider {
  _MenuProvider() {
    cargarData();
  }

  Future<List<dynamic>> cargarData() async {
    final resp = await rootBundle.loadString('Material/menu_opts.json');
    Map dataMap = json.decode(resp);
    return dataMap['rutas'];
  }
}

final menuProvider = _MenuProvider();
