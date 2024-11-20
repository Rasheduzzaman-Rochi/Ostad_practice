import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Home(),
    );
  }
}

class Home extends StatelessWidget {
  Home({super.key});

  @override
  Widget build(BuildContext context) {
    return CupertinoPageScaffold(
        navigationBar: CupertinoNavigationBar(
          middle: Container(
            height: 80,
            alignment: Alignment.center,
            child: Text('Home'),
          ),
          leading: Icon(Icons.arrow_back),
          trailing: Icon(Icons.menu),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            CupertinoButton.filled(
                child: Text("Tap Here"),
                borderRadius: BorderRadius.circular(20),
                onPressed: () {}),
            CupertinoListTile(
              onTap: () {},
              title: Text('Title'),
              backgroundColor: CupertinoColors.systemPurple,
              subtitle: Text('subtitle'),
              trailing: Icon(CupertinoIcons.airplane),
            ),
            CupertinoSwitch(value: false, onChanged: (value) {})
          ],
        ));
  }
}
