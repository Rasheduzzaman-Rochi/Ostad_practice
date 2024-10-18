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
      home: ShoeShop(),
    );
  }
}

class ShoeShop extends StatelessWidget {
  const ShoeShop({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
          // Check if the image exists and is set properly in pubspec.yaml
          Image.asset('images/Shoe.png',
              width: 400, height: 300, fit: BoxFit.contain),
          SizedBox(
            height: 1,
          ),
          Text(
            'Price: 1500TK',
            style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
          ),
          SizedBox(height: 5),
          ElevatedButton(
            style: ElevatedButton.styleFrom(
              backgroundColor: Colors.deepPurpleAccent,
              foregroundColor: Colors.white,
              shadowColor: Colors.black,
              elevation: 6,
            ),
            onPressed: () {
              showDialog(
                  context: context,
                  builder: (context) => AlertDialog(
                        title: Text('Purchase Confirmation'),
                        content:
                            Text('Are you sure you want to buy this item?'),
                        actions: [
                          TextButton(
                              onPressed: () {
                                Navigator.of(context).pop();
                              },
                              child: Text('Cancel')),
                          TextButton(
                              onPressed: () {
                                Navigator.of(context).pop();
                              },
                              child: Text('Buy'))
                        ],
                      ));
            },
            child: Text(
              "BUY",
              style: TextStyle(fontSize: 20),
            ),
          ),
          SizedBox(
            height: 10,
          ),
          IconButton(
            style: IconButton.styleFrom(backgroundColor: Colors.transparent),
            icon: Icon(Icons.add),
            color: Colors.deepOrange,
            onPressed: () {},
          ),
          GestureDetector(
            onTap: () {
              print('One tap.');
            },
            onDoubleTap: () {
              print('Double tap.');
            },
            onLongPress: () {
              print('Long press.');
            },
            child: Column(
              children: [
                Text('Simple Text'),
                Text('Simple Text'),
              ],
            ),
          ),
          InkWell(
            onTap: () {
              print('Behave like button');
            },
            child: Text('Behave like button'),
          )
        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        child: Icon(Icons.add),
      ),
    );
  }
}
