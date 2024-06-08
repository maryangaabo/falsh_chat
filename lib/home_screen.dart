import 'package:falsh_chat_app/login.dart';
import 'package:falsh_chat_app/sign.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class Home_screen extends StatefulWidget {
  const Home_screen({super.key});

  @override
  State<Home_screen> createState() => _Home_screenState();
}

class _Home_screenState extends State<Home_screen> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: const Color(0xFFFc0cbd1),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Center(
              child: Padding(
                padding: const EdgeInsets.all(3.0),
                child: Center(
                  child: Image.asset(
                    "image/logo.png",
                    width: 121,
                    height: 123,
                  ),
                ),
              ),
            ),
            const Text(
              "Fast chat",
              style: TextStyle(fontSize: 39, fontWeight: FontWeight.w900),
            ),
            const SizedBox(
              height: 199,
            ),
            Container(
              height: 60,
              width: 350,
              child: ElevatedButton(
                  onPressed: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => Login_in(),
                        ));
                  },
                  style: ElevatedButton.styleFrom(
                    backgroundColor: const Color(0xFFFF3fc4fe),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(25),
                    ),
                  ),
                  child: const Text(
                    "Login",
                    style: TextStyle(color: Colors.white),
                  )),
            ),
            const SizedBox(
              height: 29,
            ),
            Container(
              height: 60,
              width: 350,
              child: ElevatedButton(
                  onPressed: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => sign_in(),
                        ));
                  },
                  style: ElevatedButton.styleFrom(
                    backgroundColor: const Color(0xFFFF438afe),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(25),
                    ),
                  ),
                  child: const Text(
                    "Regester",
                    style: TextStyle(color: Colors.white),
                  )),
            ),
          ],
        ),
      ),
    );
  }
}
