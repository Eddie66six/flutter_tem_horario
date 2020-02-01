import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  final String title;
  const HomePage({Key key, this.title = "Home"}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.green,
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: ListView(
        children: List.generate(20, (index) => 
          Container(
            color: index % 2 == 0 ? Colors.cyan : Colors.green,
            padding: EdgeInsets.all(20),
            child: Text("23423"),
          )
        )
      ),
    );
  }
}
