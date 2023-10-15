import 'dart:convert';
import 'package:flutter/material.dart';
import '../../../data/modal/response/post_model.dart';
import 'package:http/http.dart' as http;

class YourActivity extends StatefulWidget {
  const YourActivity({Key? key}) : super(key: key);

  @override
  State<YourActivity> createState() => _YourActivityState();
}

class _YourActivityState extends State<YourActivity> {
  List<PostModel> postList = [];

  Future<List<PostModel>> getPostApi() async {
    final response =
        await http.get(Uri.parse('https://jsonplaceholder.typicode.com/posts'));
    var data = jsonDecode(response.body.toString());
    if (response.statusCode == 200) {
      postList = postListModelFromJson(json.encode(data));
      return postList;
    } else {
      return postList;
    }
  }

  @override
  Widget build(BuildContext context) {
    return FutureBuilder(
        future: getPostApi(),
        builder: (context, snapshot) {
          if (snapshot.hasData) {
            return ListView.builder(
                itemCount: postList.length,
                itemBuilder: (context, index) {
                  return Text(postList[index].title.toString());
                });
          } else {
            return Center(child: CircularProgressIndicator());
          }
        });
  }
}
