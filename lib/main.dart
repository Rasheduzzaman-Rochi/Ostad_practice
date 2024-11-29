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
    Size screensize = MediaQuery.of(context).size;
    print(screensize.height);
    print(screensize.width);
    print(screensize.flipped);
    print(MediaQuery.of(context).devicePixelRatio);
    // print(MediaQuery.of(context).orientation);

    return Scaffold(
      appBar: AppBar(
        title: const Text("Home"),
      ),
      body: OrientationBuilder(builder: (Context, orientation) {
        if (orientation == Orientation.portrait) {
          return Center(child: Text('Portrait Mode'));
        } else {
          return Center(child: Text('Landscape Mode'));
        }
      }),

      // body: LayoutBuilder(
      //   builder: (BuildContext context, BoxConstraints constraints) {
      //     return Center(
      //       child: Text('${constraints.maxHeight}'),
      //     );
      //   },
      // ),

      // body: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
      //   Wrap(
      //     // alignment: WrapAlignment.center,
      //     // crossAxisAlignment: WrapCrossAlignment.center,
      //     // spacing: 8,
      //     children: [
      //       ElevatedButton(
      //         onPressed: () {},
      //         child: const Text("Go to Profile"),
      //       ),
      //       ElevatedButton(
      //         onPressed: () {},
      //         child: const Text("Go to Profile"),
      //       ),
      //       ElevatedButton(
      //         onPressed: () {},
      //         child: const Text("Go to Profile"),
      //       ),
      //       ElevatedButton(
      //         onPressed: () {},
      //         child: const Text("Go to Profile"),
      //       ),
      //       ElevatedButton(
      //         onPressed: () {},
      //         child: const Text("Go to Profile"),
      //       ),
      //       ElevatedButton(
      //         onPressed: () {},
      //         child: const Text("Go to Profile"),
      //       ),
      //       ElevatedButton(
      //         onPressed: () {},
      //         child: const Text("Go to Profile"),
      //       ),
      //       ElevatedButton(
      //         onPressed: () {},
      //         child: const Text("Go to Prof;ile"),
      //       ),
      //     ],
      //   ),
      // ])
    );
  }
}

// children: [
//   SingleChildScrollView(
//     scrollDirection: Axis.horizontal,
//     child: Row(
//       children: [
//         ElevatedButton(
//           onPressed: () {},
//           child: const Text("Go to Profile"),
//         ),
//         ElevatedButton(
//           onPressed: () {},
//           child: const Text("Go to Profile"),
//         ),
//         ElevatedButton(
//           onPressed: () {},
//           child: const Text("Go to Profile"),
//         ),
//         ElevatedButton(
//           onPressed: () {},
//           child: const Text("Go to Profile"),
//         ),
//         ElevatedButton(
//           onPressed: () {},
//           child: const Text("Go to Profile"),
//         ),
//         ElevatedButton(
//           onPressed: () {},
//           child: const Text("Go to Profile"),
//         ),
//         ElevatedButton(
//           onPressed: () {},
//           child: const Text("Go to Profile"),
//         ),
//         ElevatedButton(
//           onPressed: () {},
//           child: const Text("Go to Profile"),
//         ),
//         ElevatedButton(
//           onPressed: () {},
//           child: const Text("Go to Profile"),
//         ),
//       ],
//     ),
//   )
// ]