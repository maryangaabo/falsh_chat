import 'package:falsh_chat_app/loginfrom.dart';
import 'package:flutter/material.dart';

class Login_in extends StatefulWidget {
  const Login_in({super.key});

  @override
  State<Login_in> createState() => _Login_inState();
}

class _Login_inState extends State<Login_in> {
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();

  void _login() {
    final email = _emailController.text;
    final password = _passwordController.text;
    // Add your login logic here
    print('Email: $email, Password: $password');
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          automaticallyImplyLeading: true,
          leading: IconButton(
              onPressed: () => Navigator.pop(context, false),
              icon: const Icon(Icons.arrow_back_ios)),
        ),
        backgroundColor: Colors.white,
        body: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Padding(
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
                  controller: _emailController,
                  decoration: InputDecoration(
                    hintText: "Enter Your Email",
                    hintStyle:
                        const TextStyle(fontSize: 14, color: Colors.black),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(28.0),
                      borderSide: const BorderSide(
                        color: Colors.grey,
                        width: 1.0,
                      ),
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(28.0),
                      borderSide: const BorderSide(
                        color: Colors.blue,
                        width: 2.0,
                      ),
                    ),
                    enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(28.0),
                      borderSide: const BorderSide(
                        color: Colors.grey,
                        width: 1.0,
                      ),
                    ),
                  ),
                ),
                const SizedBox(height: 13),
                TextField(
                  controller: _passwordController,
                  decoration: InputDecoration(
                    hintText: "Enter Your Password",
                    hintStyle:
                        const TextStyle(fontSize: 14, color: Colors.black),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(28.0),
                      borderSide: const BorderSide(
                        color: Colors.grey,
                        width: 1.0,
                      ),
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(28.0),
                      borderSide: const BorderSide(
                        color: Colors.blue,
                        width: 2.0,
                      ),
                    ),
                    enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(28.0),
                      borderSide: const BorderSide(
                        color: Colors.grey,
                        width: 1.0,
                      ),
                    ),
                  ),
                  obscureText: true,
                ),
                const SizedBox(height: 20),
                Container(
                  width: 200,
                  height: 46,
                  child: ElevatedButton(
                    onPressed: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => const Loginfrom(),
                          ));
                    },
                    style: ElevatedButton.styleFrom(
                      backgroundColor:
                          const Color(0xFF3fc4fe), // Corrected hex color
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(25),
                      ),
                    ),
                    child: const Text(
                      'Login',
                      style: TextStyle(color: Colors.white),
                    ),
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
