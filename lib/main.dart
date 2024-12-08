import "package:flutter/material.dart";

void main() {
  runApp(const MyApp());
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
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Home")),
      // body: AspectRatio(
      //   aspectRatio: 14/10,
      //   child: ColoredBox(color: Colors.orange),
      // ),
      // body: Column(
      //   children: [
      //     Flexible(
      //         fit: FlexFit.tight,
      //         flex: 4,
      //         child: SizedBox(
      //           width: double.maxFinite,
      //           height: 100,
      //           child: ColoredBox(color: Colors.black),
      //         )),
      //     Expanded(
      //         flex: 3,
      //         child: SizedBox(
      //           width: double.maxFinite,
      //           height: 100,
      //           child: ColoredBox(color: Colors.orange),
      //         )),
      //     SizedBox(
      //       width: double.maxFinite,
      //       height: 50,
      //       child: ColoredBox(color: Colors.blue),
      //     )
      //   ],
      // ),
      body: SafeArea(
        child: Row(
          children: [
            Expanded(
                child: Container(
                  color: Colors.orange,
                  height: 100,
                )),
            Expanded(
                flex: 4,
                child: Container(
                  color: Colors.red,
                  height: 100,
                )),
            Expanded(
                child: Container(
                  color: Colors.green,
                  height: 100,
                )),
          ],
        ),
      ),
    );
  }
}