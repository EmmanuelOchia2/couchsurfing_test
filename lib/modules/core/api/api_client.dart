import 'package:http/http.dart' as http;

class APIClient {
  Future<http.Response> get(
    Uri url, {
    Map<String, String>? requestHeaders,
  }) async {
    final response = await http.get(
      url,
      headers: requestHeaders,
    );
    return response;
  }
}
