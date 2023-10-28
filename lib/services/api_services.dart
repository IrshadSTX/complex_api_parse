import 'dart:convert';

import 'package:complex_api_parse/model/response_model.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'package:http/http.dart';

class ApiServices {
  Future<List<ResponseModel>?> fetchData() async {
    const String url =
        'https://api.thecatapi.com/v1/images/search?limit=10&breed_ids=beng&api_key=live_GODUA0g7ku4Jzavf8YFEJ8CZOoXlQmLYRjJSXcX8sh7OIl04mkayv4ldNkPqS2Bi';
    try {
      Response response = await http.get(Uri.parse(url));
      if (response.statusCode == 200) {
        debugPrint(response.body);
        final result = json.decode(response.body);
        List<ResponseModel> res = List<ResponseModel>.from(
            result.map((x) => ResponseModel.fromJson(x)));
        debugPrint(res.toString());
        return res;
      }
    } catch (e) {}
    return null;
  }
}
