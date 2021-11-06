import 'package:http/http.dart' as http;
import 'dart:convert';

class NetworkHelper {
  NetworkHelper(this.url);

  final String url;

  Future<void> getData() async {
    // get method에 string인 url을 Uri.parse를 통해 변환 후 전달
    http.Response response = await http.get(Uri.parse(url));

    // response 정상인 경우 200 반환
    if (response.statusCode == 200) {
      String data = response.body;
      return jsonDecode(data);
    } else {
      print(response.statusCode);
    }
  }
}
