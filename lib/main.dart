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
      home: Scaffold(
          // backgroundColor: Colors.black,
          appBar: AppBar(
            title: Text(
              'SHOE SHOP',
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
            toolbarHeight: 63,
            centerTitle: true,
            backgroundColor: Colors.lightBlueAccent,
          ),
          body: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.asset('images/Shoe.png',
                  width: 400, height: 300, fit: BoxFit.contain),
              SizedBox(
                height: 1,
              ),
              Text(
                'Price:1500TK',
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
              ),
              ElevatedButton(
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.deepPurpleAccent,
                  foregroundColor: Colors.white,
                  shadowColor: Colors.black,
                  elevation: 4,
                ),
                  onPressed: () {},
                  child: Text("BUY",style: TextStyle(fontSize: 20),))
            ],
          )),
    );
  }
}
