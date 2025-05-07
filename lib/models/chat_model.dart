import 'dart:ffi';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ChatModel {
  final String image;
  final String name;
  final String message;
  final String time;
  final IconData icon;

  ChatModel(
      {required this.name,
      required this.image,
      required this.icon,
      required this.message,
      required this.time});
}

List<ChatModel> chats = [
  //كل chatmodel  بيمثل شخص واحد
  ChatModel(
      name: "Sara Ramadan",
      image: "assets/1.jfif",
      icon: Icons.check_circle,
      message: "hello",
      time: "02:00"),
  ChatModel(
      name: "Aya Ashraf",
      image: "assets/2.jfif",
      icon: Icons.check_circle,
      message: "hello",
      time: "02:00"),
      ChatModel(name: "Minnah Mohamed", image: "assets/3.jfif", icon: Icons.check_circle, message: "hello", time: "02:00"),
      ChatModel(name: "Nada Tarek", image: "assets/1.jfif", icon: Icons.check_circle, message: "hello", time: "02:00"),
      ChatModel(name: "Hager Ali", image: "assets/2.jfif", icon: Icons.check_circle, message: "hello", time: "02:00"),
      ChatModel(name: "Sohaila Abd el-azeem", image: "assets/3.jfif", icon: Icons.check_circle, message: "hello", time: "02:00"),
      ChatModel(name: "Sandy Zekry", image: "assets/3.jfif", icon: Icons.check_circle, message: "hello", time: "02:00"),
      ChatModel(name: "Yassmeen Taha", image: "assets/1.jfif", icon: Icons.check_circle, message: "hello", time: "02:00"),
      ChatModel(name: "Yasser Ahmed", image: "assets/2.jfif", icon: Icons.check_circle, message: "hello", time: "02:00"),
      ChatModel(name: "Mohamed Ali", image: "assets/3.jfif", icon: Icons.check_circle, message: "hello", time: "02:00"),
      ChatModel(name: "Ahmed Shaban", image: "assets/1.jfif", icon: Icons.check_circle, message: "hello", time: "02:00"),
      ChatModel(name: "Ali Ahmed", image: "assets/2.jfif", icon: Icons.check_circle, message: "hello", time: "02:00"),
      ChatModel(name: "Waleed Fady", image: "assets/1.jfif3", icon: Icons.check_circle, message: "hello", time: "02:00"),
];
