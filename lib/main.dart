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
      title: 'Shoe Shop',
      home: Practice(),
    );
  }
}

class Practice extends StatelessWidget {
  Practice({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Contact',
            style: TextStyle(fontWeight: FontWeight.bold)),
        centerTitle: true,
        backgroundColor: Colors.lightBlueAccent,
        toolbarHeight: 63,
      ),
      body: Column(
        children: [
          Row(
            children: [
              Container(
                height: 100,
                width: 100,
                padding: EdgeInsets.all(8),
                alignment: Alignment.center,
                margin: EdgeInsets.all(15),
                child: Text("Random"),
                decoration: BoxDecoration(
                  color: Colors.red,
                  boxShadow: <BoxShadow>[
                    BoxShadow(
                      color: Colors.black.withOpacity(0.5),
                      offset: Offset(2, 2),
                      blurRadius: 7,
                      spreadRadius: 5,
                    ),
                    BoxShadow(
                      color: Colors.black.withOpacity(0.5),
                      offset: Offset(-2, -2),
                      blurRadius: 5,
                      spreadRadius: 7,
                    ),
                  ],
                ),
              ),
              Container(
                height: 100,
                width: 100,
                margin: EdgeInsets.only(left: 4),
                decoration: BoxDecoration(
                  color: Colors.green,
                  border: Border.all(color: Colors.black, width: 3),
                  borderRadius: const BorderRadius.only(
                    topLeft: Radius.circular(16),
                    bottomRight: Radius.circular(16),
                  ),
                ),
              ),
              Container(
                height: 100,
                width: 100,
                margin: const EdgeInsets.only(left: 10),
                decoration: BoxDecoration(
                  color: Colors.pink,
                  shape: BoxShape.circle,
                  border: Border.all(color: Colors.black),
                  image: const DecorationImage(
                      image: AssetImage("images/Shoe.png"), fit: BoxFit.cover),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
