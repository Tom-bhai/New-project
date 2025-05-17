import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    home: MyApp(),
  ));
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('my app'),
        actions: [
          PopupMenuButton(
              itemBuilder: (context) => ['Home', 'Setting', 'porfile', 'logout']
                  .map((option) => PopupMenuItem(
                        child: Text(option),
                        value: option,
                      ))
                  .toList())
        ],
      ),
    );
  }
}
