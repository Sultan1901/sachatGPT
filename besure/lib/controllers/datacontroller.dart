import 'dart:convert';

import 'package:flutter/widgets.dart';
import 'package:get/get.dart';
import 'package:http/http.dart';

class DataController extends GetxController {
  String? input;
  String res = "";
  var controllerM = TextEditingController();

  var userMessage = [];

  @override
  void onInit() {
    // robotMessage.add(controllerM.text);
    // userMessage.add(controllerM.text);
    super.onInit();
  }

  List token = [];
  @override
  Future<void> makePostRequest(input) async {
    final url =
        Uri.parse('https://experimental.willow.vectara.io/v1/chat/completions');
    final headers = {
      'Content-Type': 'application/json',
      'customer-id': '577486869',
      'x-api-key': 'seceret'
    };
    final json = jsonEncode(({
      "model": "gpt-3.5-turbo",
      "messages": [
        {"role": "user", "content": input}
      ]
    }));
    final response = await post(url, headers: headers, body: json);

    Map<String, dynamic> data = jsonDecode(response.body);
    // token = data["choices"][0]["message"]['content'];
    // ignore: await_only_futures
    token.add(data["choices"][0]["message"]['content']);
    print('Status code: ${response.statusCode}');
    print('Body: ${response.body}');
    print(token);
    userMessage.add(controllerM.text);
    update();
  }
}
