import 'package:flu/model/activity_nodel.dart';
import 'package:flu/model/alert_model.dart';
import 'package:flu/model/attendancemodel.dart';
import 'package:flu/model/homeWork_model.dart';
import 'package:flu/model/login_model.dart';
import 'package:flu/model/mark_model.dart';
import 'package:flu/model/payment_model.dart';
import 'package:flu/model/program_model.dart';
import 'package:http/http.dart' as http;

class ApiHelper {
  final String _baseUrl = '78.47.183.107:5000';
  final int _requestTimeout = 80;

Future<LoginModel> login(String username, String password) async {
    final url = Uri.http(_baseUrl, '/api/Account/Login');
    print("url: $url");
    final response =
        await http.post(url).timeout(Duration(seconds: _requestTimeout));

    if (response.statusCode == 200) {
      return loginModelFromJson(response.body);
    } else {
      print("response: ${response.body}");
    }
  }

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

  Future<List<HomeWorkModel>> getHomeWorks() async {
    final url = Uri.http(_baseUrl, '/api/Parent/GetHW');
    print("url: $url");
    final response =
        await http.get(url).timeout(Duration(seconds: _requestTimeout));

    if (response.statusCode == 200) {
      return homeWorkModelFromJson(response.body);
    } else {
      print("response: ${response.body}");
    }
  }
  
  Future<List<ActivityModel>> getActivities() async {
    final url = Uri.http(_baseUrl, '/api/School/GetActVac');
    print("url: $url");
    final response =
        await http.get(url).timeout(Duration(seconds: _requestTimeout));

    if (response.statusCode == 200) {
      return activityModelFromJson(response.body);
    } else {
      print("response: ${response.body}");
    }
  }
  
  Future<List<MarkModel>> getMarks() async {
    final url = Uri.http(_baseUrl, '/api/Parent/GetMarks');
    print("url: $url");
    final response =
        await http.get(url).timeout(Duration(seconds: _requestTimeout));

    if (response.statusCode == 200) {
      return markModelFromJson(response.body);
    } else {
      print("response: ${response.body}");
    }
  }

  Future<List<AttendanceModel>> getAttendances() async {
    final url = Uri.http(_baseUrl, '/api/Parent/GetPresenceOf');
    print("url: $url");
    final response =
        await http.get(url).timeout(Duration(seconds: _requestTimeout));

    if (response.statusCode == 200) {
      return attendanceModelFromJson(response.body);
    } else {
      print("response: ${response.body}");
    }
  }

  Future<List<ProgramModel>> getProgram(int id) async {
    final url = Uri.http(_baseUrl, '/api/Parent/GetProgramme', {'id': '$id'});
    print("url: $url");
    final response =
        await http.get(url).timeout(Duration(seconds: _requestTimeout));

    if (response.statusCode == 200) {
      return programModelFromJson(response.body);
    } else {
      print("response: ${response.body}");
    }
  }

  Future<List<PaymentModel>> getPayments(int id) async {
    final url = Uri.http(_baseUrl, '/api/Parent/GetPyament', {'id': '$id'});
    print("url: $url");
    final response =
        await http.get(url).timeout(Duration(seconds: _requestTimeout));

    if (response.statusCode == 200) {
      return paymentModelFromJson(response.body);
    } else {
      print("response: ${response.body}");
    }
  }
}
