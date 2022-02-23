import 'dart:convert';
import 'dart:developer';
import 'package:flutter/cupertino.dart';
import 'package:http/http.dart' as http;

import '../models/post_code_model.dart';

class PostCodeService {
  Future<PostCodeModel> getCodePostUrl(
      String title, String description, String content) async {
    debugPrint(title);
    dynamic data;

    try {
      var response = await http.Client()
          .post(Uri.parse("https://source-bin-api-v1.vercel.app/bin"), body: {
        "title": title,
        "description": description,
        "content": content
      });

      var jsonResponse = json.decode(response.body);

      data = PostCodeModel.fromJson(jsonResponse);
    } catch (error) {
      log(error.toString());
    }

    return data;
  }
}
