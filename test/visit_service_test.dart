import 'dart:io';

import 'package:dio/dio.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:http/http.dart' as http;

void main() {
  test("http get all visit with success", () async {
    //setup

    //act
    var response = await http
        .get('https://5faaf775dbbef70016d47f6f.mockapi.io/api/v1/tasks/10000');

    print("response statusCode: ${response.statusCode} ");
    print("response: ${response.body}");

    //assert
    expect(response.statusCode, 200);
  });

  test("httpClient get all visit with success", () async {
    //setup

    //act
    var client = HttpClient();

    Future<HttpClientRequest> request = client.get(
        "5faaf775dbbef70016d47f6f.mockapi.io", null, "api/v1/tasks/1");

    var r = await request;

    var response = await r.close();

    print("response::: ${response.statusCode}");

    //assert
    expect(response.statusCode, 200);
  });

  test("dio get all visit with success", () async {
    //setup

    //act
    var dio = Dio();
    dio.options.baseUrl = "https://5faaf775dbbef70016d47f6f.mockapi.io";
    // dio.options.headers = "https://5faaf775dbbef70016d47f6f.mockapi.io";

    Response response = await dio.get("/api/v1/tasks/1");

    print("response dio::: ${response.data}");

    //assert
    expect(response.statusCode, 200);
  });
}
