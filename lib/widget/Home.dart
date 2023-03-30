import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_slidable/flutter_slidable.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => _MyWidgetState();
}

class _MyWidgetState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Slidable(
          startActionPane: ActionPane(
            motion: StretchMotion(),
            children: [
              SlidableAction(
                onPressed: ((context) {
                  print("Phone");
                }),
                backgroundColor: Colors.green,
                icon: Icons.phone,
              ),
              SlidableAction(
                onPressed: ((context) {
                  print("Chat");
                }),
                backgroundColor: Colors.blue,
                icon: Icons.chat,
              ),
            ],
          ),
          endActionPane: ActionPane(
            motion: StretchMotion(),
            children: [
              SlidableAction(
                onPressed: ((context) {
                  print("Delete");
                }),
                backgroundColor: Colors.red,
                icon: Icons.delete,
              ),
            ],
          ),
          child: Container(
            color: Colors.grey[300],
            child: const ListTile(
              title: Text("H E L L O"),
              subtitle: Text("0969514044"),
              leading: Icon(
                Icons.person,
                size: 40,
              ),
            ),
          ),
        ),
      ),
    );
  }
}
