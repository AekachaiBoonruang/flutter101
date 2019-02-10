import 'package:dio/dio.dart';
import 'package:flutter101/model/profile.dart';

Future<List<Profile>> loadJson() async {
  Response response;
  response = await Dio()
      .get('https://www.json-generator.com/api/json/get/cfwZmvEBbC?indent=2');
  List<Profile> users = [];
  for (var u in response.data) {
    Profile user =
        Profile(u['index'], u['name'], u['email'], u['picture']);
    users.add(user);
  }
  print(users);
  return users;
}