// To parse this JSON data, do
//
//     final storyModel = storyModelFromJson(jsonString);

import 'dart:convert';

StoryModel storyModelFromJson(String str) =>
    StoryModel.fromJson(json.decode(str));

String storyModelToJson(StoryModel data) => json.encode(data.toJson());

class StoryModel {
  int? id;
  String? image;


  StoryModel({
    this.id,
    this.image,

  });

  factory StoryModel.fromJson(Map<String, dynamic> json) => StoryModel(
        id: json["id"],
        image: json["image"],

      );

  Map<String, dynamic> toJson() => {
        "id": id,
        "image": image,

      };
}
