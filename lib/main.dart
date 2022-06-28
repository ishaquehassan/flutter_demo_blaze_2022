import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: HomePage(),
    );
  }
}

class HomePage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => HomePageState();
}

class HomePageState extends State<HomePage> {
  List<String> tasks = [];
  final textCtrl = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("HELLO WORLD"),
      ),
      drawer: Drawer(
        child: Container(
          color: Colors.black,
        ),
      ),
      body: Column(
        children: [
          Row(
            children: [
              Expanded(
                  child: TextField(
                controller: textCtrl,
              )),
              ElevatedButton(
                  onPressed: () {
                    setState(() {
                      tasks.add(textCtrl.text);
                    });
                    textCtrl.clear();
                  },
                  child: Text("Add"))
            ],
          ),
          Expanded(
            child: ListView.builder(
              itemCount: tasks.length,
              itemBuilder: (context, index) => ListTile(
                title: Text(tasks[index]),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
