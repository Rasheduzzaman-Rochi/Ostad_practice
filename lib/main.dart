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
  const Practice({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Contact',
            style: TextStyle(fontWeight: FontWeight.bold)),
        centerTitle: true,
        backgroundColor: Colors.lightBlueAccent,
        toolbarHeight: 63,
        actions: [
          IconButton(onPressed: () {}, icon: const Icon(Icons.contact_mail)),
        ],
      ),
      drawer: Drawer(
        backgroundColor: Colors.white54,
        width: 300,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: const [
            Padding(
              padding: EdgeInsets.all(16.0),
              child: Text(
                'Contact',
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
              ),
            ),
            Divider(),
            ListTile(
              leading: Icon(Icons.phone),
              title: Text('Phone'),
            ),
            ListTile(
              leading: Icon(Icons.email),
              title: Text('Email'),
            ),
          ],
        ),
      ),
      bottomNavigationBar: NavigationBar(destinations: const [
        NavigationDestination(icon: Icon(Icons.home), label: 'HOME'),
        NavigationDestination(icon: Icon(Icons.search), label: 'SEARCH'),
      ]),
      // body:Scrollbar(
      //   child: SingleChildScrollView(
      //     child: Column(
      //         children:[
      //           Text('Bye'),
      //           Text('Bye'),
      //           Text('Bye'),
      //           Text('Bye'),
      //           Text('Bye'),
      //           Text('Bye'),
      //           Text('Bye'),
      //         ],
      //       ),
      //   ),
      body: Scrollbar(
        thickness: 10,
        interactive: true,
        // child: ListView(
        //   padding: EdgeInsets.symmetric(horizontal: 16),
        //   children: [
        //     Text('Bye'),
        //     Text('Bye'),
        //     Text('Bye'),
        //     Text('Bye'),
        //     Text('Bye'),
        //     Text('Bye'),
        //     Text('Bye'),
        //     Text('Bye'),
        //     Text('Bye'),
        //     Text('Bye'),
        //     Text('Bye'),
        //     Text('Bye'),
        //     Text('Bye'),
        //     Text('Bye'),
        //     Text('Bye'),
        //     Text('Bye'),
        //     Text('Bye'),
        //     Text('Bye'),
        //     Text('Bye'),
        //     Text('Bye'),
        //     Text('Bye'),
        //     Text('Bye'),
        //     Text('Bye'),
        //     Text('Bye'),
        //     Text('Bye'),
        //     Text('Bye'),
        //     Text('Bye'),
        //     Text('Bye'),
        //     Text('Bye'),
        //     Text('Bye'),
        //     Text('Bye'),
        //     Text('Bye'),
        //     Text('Bye'),
        //     Text('Bye'),
        //     Text('Bye'),
        //     Text('Bye'),
        //     Text('Bye'),
        //     Text('Bye'),
        //     Text('Bye'),
        //     Text('Bye'),
        //     Text('Bye'),
        //     Text('Bye'),
        //     Text('Bye'),
        //     Text('Bye'),
        //     Text('Bye'),
        //     Text('Bye'),
        //     Text('Bye'),
        //     Text('Bye'),
        //     Text('Bye'),
        //     Text('Bye'),
        //     Text('Bye'),
        //     Text('Bye'),
        //   ],
        // ),
        child: ListView.builder(
            padding: EdgeInsets.symmetric(horizontal: 10, vertical: 10),
            itemCount: 100,
            itemBuilder: (context, index) {
              return Text('Item $index');
            }),
      ),
    );
  }
}
