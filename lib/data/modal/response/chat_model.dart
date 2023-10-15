// To parse this JSON data, do
//
//     final chatModal = chatModalFromJson(jsonString);

import 'dart:convert';

ChatModel chatModalFromJson(String str) => ChatModel.fromJson(json.decode(str));

String chatModalToJson(ChatModel data) => json.encode(data.toJson());

class ChatModel {
  int? id;
  String? name;
  String? image;
  String? image2;
  String? message;
  String? notification;
  DateTime? createdAt;

  ChatModel({
    this.id,
    this.name,
    this.image,
    this.image2,
    this.message,
    this.notification,
    this.createdAt,
  });

  factory ChatModel.fromJson(Map<String, dynamic> json) => ChatModel(
    id: json["id"],
    name: json["name"],
    image: json["image"],
    image2: json["image2"],
    message: json["message"],
    notification: json["notification"],
    createdAt: json["createdAt"],
  );

  Map<String, dynamic> toJson() => {
    "id": id,
    "name": name,
    "image": image,
    "image2": image2,
    "message": message,
    "notification": notification,
    "createdAt": createdAt,
  };
}
