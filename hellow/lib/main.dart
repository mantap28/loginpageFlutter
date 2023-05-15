import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(title: 'Aplikasi Widget'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0;

  void _incrementCounter() {
    setState(() {
      _counter++;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(child: Text(widget.title)),
      ),
      body: Center(
        child: Column(
          children: <Widget>[
            const TextField(
              decoration: InputDecoration(labelText: "Username"),
            ),const TextField(
              decoration: InputDecoration(labelText: "Password"),
              obscureText: true,
            ),
            Icon(Icons.desktop_mac_rounded),
            TextButton(onPressed: () {}, child: Container(
              height: 30,
              width: 70,
              decoration: BoxDecoration(
                color: Colors.blue
              ),
              child: Center(child: Text("Login", style: TextStyle(color: Colors.white),)),
            ))
          ],
        ),
      ),
      );
  }
}
