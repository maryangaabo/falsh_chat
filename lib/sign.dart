import 'package:flutter/material.dart';

class sign_in extends StatefulWidget {
  const sign_in({super.key});

  @override
  State<sign_in> createState() => _sign_inState();
}

class _sign_inState extends State<sign_in> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: const Scaffold(
        body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Padding(
              padding: EdgeInsets.all(1.0),
              child: Image(
                image: AssetImage(
                  "image/logo.png",
                ),
                width: 121,
                height: 123,
              ),
            ),
            const SizedBox(height: 150),
            TextField(
              decoration: InputDecoration(
                hintText: "Enter Your  Email",
              ),
            )
          ],
        ),
      ),
    );
  }
}
