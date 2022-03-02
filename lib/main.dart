import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blueGrey,
      ),
      home: const MyHomePage(title: 'Quotes'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    var screenInformation = MediaQuery.of(context);
    final double screenWidth = screenInformation.size.width;
    final double screenHeight = screenInformation.size.height;

    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Column(
        children: [
          Padding(
            padding: EdgeInsets.only(top: 16.0, bottom: 16.0),
            child: CircleAvatar(
              radius: 100.0,
              backgroundImage: AssetImage("resimler/fatihhoca.jpg"),
            ),
          ),
          Text(
            "Fatih Terim",
            style: TextStyle(
              color: Colors.redAccent,
              fontSize: screenWidth / 25,
              fontWeight: FontWeight.bold,
            ),
          ),
          Spacer(),
          Padding(
            padding: EdgeInsets.only(
                top: screenHeight / 100,
                left: screenWidth / 100,
                right: screenWidth / 100),
            child: Text(
              "In my book, there is no giving up or being defeated... "
                  "I never get mad at losers. But I will delete those "
                  "who gave up and accepted defeat from the beginning. "
                  "Even if he loses, I will always have those who fight "
                  "to the end, and they will definitely win in the end.",
              textAlign: TextAlign.center,
              style: TextStyle(
                  fontSize: screenWidth / 25,
              ),
            ),
          ),
          Spacer()
        ],
      ),
    );
  }
}
