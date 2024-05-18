import 'dart:convert' as convert;
import 'package:http/http.dart' as http;

class NetworkHelper {
  NetworkHelper({this.myUrl});

  final String myUrl;
  Future getData() async {
    var url = Uri.parse(myUrl);
    http.Response response = await http.get(url);

    if (response.statusCode == 200) {
      String data = response.body;
      return convert.jsonDecode(data);
    } else {
      print(response.statusCode);
    }
  }
}
