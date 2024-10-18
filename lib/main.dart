import 'package:flutter/material.dart';

//Divider, ModelBottomSheet, TextField

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
      home: practice(),
    );
  }
}

class practice extends StatelessWidget {
  const practice({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Shoe Shop', style: TextStyle(fontWeight: FontWeight.bold)),
        centerTitle: true,
        backgroundColor: Colors.lightBlueAccent,
        toolbarHeight: 63,
      ),
      body: Center(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            SizedBox(
              height: 100,
            ),
            ElevatedButton(
                onPressed: () {
                  // showAboutDialog(context: context);
                  showModalBottomSheet(
                      // backgroundColor: Colors.greenAccent.shade200,
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(30)),
                      isScrollControlled: true,
                      useSafeArea: true,
                      context: context,
                      builder: (ctx) {
                        return Column(
                          children: [
                            Padding(
                              padding: EdgeInsets.symmetric(vertical: 16),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Text(
                                    'Title',
                                    style: TextStyle(fontSize: 20),
                                  )
                                ],
                              ),
                            ),
                            Divider(
                              height: 20,
                              thickness: 4,
                            ),
                            Text('Sample'),
                            Row(
                              children: [
                                ElevatedButton(
                                  onPressed: () {},
                                  child: Text('Cancel'),
                                ),
                                ElevatedButton(
                                  onPressed: () {},
                                  child: Text('Save'),
                                )
                              ],
                            )
                          ],
                        );
                      });
                },
                child: Text('Show dialog'))
          ],
        ),
      ),
    );
  }
}
