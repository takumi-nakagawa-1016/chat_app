import 'package:chat_app/model/user.dart';
import 'package:flutter/material.dart';

class TopPage extends StatefulWidget {
  const TopPage({super.key});

  @override
  State<TopPage> createState() => _TopPageState();
}

class _TopPageState extends State<TopPage> {
  List<User> userList = [
    User(
      name: "tanaka",
      uid: "a",
      imagePath:
          "https://t0.gstatic.com/licensed-image?q=tbn:ANd9GcQkrjYxSfSHeCEA7hkPy8e2JphDsfFHZVKqx-3t37E4XKr-AT7DML8IwtwY0TnZsUcQ",
      lastMessage: 'またね'
    ),
    User(
        name: "name",
        uid: "uid",
        imagePath:
            null,
            lastMessage: 'おう'
            ),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("チャットアプリ"),
      ),
      body: ListView.builder(
        itemCount: userList.length,
        itemBuilder: (context, index) {
          return SizedBox(
            height: 70,
            child: Row(
              children: [
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 8.0),
                  child: CircleAvatar(
                    radius: 30,
                    backgroundImage: userList[index].imagePath == null
                        ? null
                        : NetworkImage(userList[index].imagePath!),
                  ),
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(userList[index].name,
                        style: const TextStyle(
                            fontSize: 20, fontWeight: FontWeight.bold)),
                            Text(userList[index].lastMessage,
                            style: TextStyle(color: Colors.grey),)
                  ],
                ),
              ],
            ),
          );
        },
      ),
    );
  }
}
