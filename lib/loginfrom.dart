import 'package:flutter/material.dart';

class Loginfrom extends StatefulWidget {
  const Loginfrom({super.key});

  @override
  State<Loginfrom> createState() => _LoginfromState();
}

class _LoginfromState extends State<Loginfrom> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Colors.amber,
        appBar: AppBar(
          automaticallyImplyLeading: true,
          leading: IconButton(
              onPressed: () => Navigator.pop(context, false),
              icon: Icon(Icons.arrow_back_ios)),
        ),
      ),
    );
  }
}
