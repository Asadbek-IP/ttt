import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main(List<String> args) {
  runApp(Telegram());
}

class Telegram extends StatefulWidget {
  const Telegram({Key? key}) : super(key: key);

  @override
  State<Telegram> createState() => _TelegramState();
}

class _TelegramState extends State<Telegram> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        drawer: Drawer(
          child: Column(
            children: [
              Expanded(
                flex: 1,
                child: Container(
                  width: double.infinity,
                  color: Colors.blue[300],
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(
                        margin: const EdgeInsets.all(16),
                        child: const CircleAvatar(
                          radius: 40,
                          backgroundImage: AssetImage("assets/logo.jpg"),
                        ),
                      ),
                      Container(
                        margin: EdgeInsets.symmetric(horizontal: 16),
                        child: const Text(
                          "Asadbek",
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: 18,
                              fontWeight: FontWeight.w500),
                        ),
                      ),
                      Container(
                        margin: EdgeInsets.only(left: 16, top: 8),
                        child: Text(
                          "+998 994576678",
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: 14,
                              fontWeight: FontWeight.w400),
                        ),
                      )
                    ],
                  ),
                ),
              ),
              Expanded(
                flex: 4,
                child: Container(
                  color: Colors.white,
                  child: Column(children: [
                    ListTile(
                      leading: Icon(
                        Icons.group_outlined,
                        size: 30,
                      ),
                      title: Text(
                        "New Group",
                        style: TextStyle(
                            fontSize: 16, fontWeight: FontWeight.w600),
                      ),
                    ),
                    ListTile(
                      leading: Icon(
                        Icons.group_outlined,
                        size: 30,
                      ),
                      title: Text(
                        "New Group",
                        style: TextStyle(
                            fontSize: 16, fontWeight: FontWeight.w600),
                      ),
                    ),
                    Divider()
                  ]),
                ),
              ),
            ],
          ),
        ),
        appBar: AppBar(
          title: Text("Telegram"),
        ),
      ),
    );
  }
}
