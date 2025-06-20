import 'dart:convert';
import 'package:http/http.dart' as http;
import 'package:m360ict/common/utils/network_manager.dart';

class AppHttpHelper {
  static const String _baseUrl = 'http://api-base-url.com';

  static Future<Map<String, dynamic>> get(String endpoint) async {
    final isOnline = await NetworkManager.instance.isConnected();

    if (!isOnline) {
      throw Exception('No internet connection');
    }
    final response = await http.get(Uri.parse('$_baseUrl/$endpoint'));
    return _handleResponse(response);
  }

  static Map<String, dynamic> _handleResponse(http.Response response) {
    if(response.statusCode == 200){
      return json.decode(response.body);
    }
    else{
      throw Exception('Failed to load data: ${response.statusCode}');
    }
  }
}

