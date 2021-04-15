import 'package:boardgames/api/apiGame.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';

class Api {
  Future<List<ApiGame>> getRoutes() async {
    var url = 'http://norwind-001-site1.btempurl.com/api/games';

    var response = await http.get(url).timeout(Duration(seconds: 90));

    Iterable datos = jsonDecode(response.body);

    return List<ApiGame>.from(datos.map((model) => ApiGame.fromJson(model)));
  }
}
