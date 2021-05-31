import 'package:flu/model/alert_model.dart';
import 'package:http/http.dart' as http;

class ApiHelper {
  final String _baseUrl = '78.47.183.107:5000';
  final int _requestTimeout = 80;

  Future<List<AlertModel>> getAlerts(int id) async {
    final url = Uri.http(_baseUrl, '/api/Parent/GetAlarm', {'id': '$id'});
    print("url: $url");
    final response =
        await http.get(url).timeout(Duration(seconds: _requestTimeout));

    if (response.statusCode == 200) {
      return alertModelFromJson(response.body);
    } else {
      print("response: ${response.body}");
    }
  }
}
