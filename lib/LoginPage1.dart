import 'package:flutter/material.dart';
import 'package:flutter_application_1/SignUpPage2.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Login'),
        backgroundColor: const Color(0xFF9accba),
      ),
      backgroundColor: const Color(0xFFF8F6D6),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset(
              'image/loginPage2.png',
              width: 344,
              height: 400,
            ),
            Container(
              width: 544,
              height: 387,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.only(
                  topRight: Radius.circular(40.0),
                  topLeft: Radius.circular(40.0),
                ),
              ),
              child: Center(
                child: Column(
                  crossAxisAlignment:
                      CrossAxisAlignment.start, // Move text to the left
                  children: [
                    SizedBox(height: 20),
                    Padding(
                      padding: const EdgeInsets.all(20),
                      child: Column(
                        crossAxisAlignment:
                            CrossAxisAlignment.start, // Move text to the left
                        children: [
                          Text(
                            'Log In',
                            style: TextStyle(
                              fontSize: 24,
                              fontWeight: FontWeight.bold,
                              color: Colors.black,
                            ),
                          ),
                          SizedBox(height: 20),
                          Text(
                            'Email',
                            style: TextStyle(
                              fontSize: 15,
                              color: Colors.black,
                            ),
                          ),
                          TextField(
                            decoration: InputDecoration(
                              hintText: 'Enter your username',
                              border: OutlineInputBorder(),
                            ),
                          ),
                          SizedBox(height: 10),
                          Text(
                            'Password',
                            style: TextStyle(
                              fontSize: 15,
                              color: Colors.black,
                            ),
                          ),
                          TextField(
                            decoration: InputDecoration(
                              hintText: 'Enter your password',
                              border: OutlineInputBorder(),
                            ),
                          ),
                          SizedBox(
                            width: 150,
                            height: 10,
                          ),
                          Center(
                            child: ElevatedButton(
                              onPressed: () {
                                // Add login logic here
                              },
                              style: ButtonStyle(
                                backgroundColor:
                                    MaterialStateProperty.all<Color>(
                                  Color.fromARGB(255, 124, 182, 146),
                                ),
                              ),
                              child: const Text('Login'),
                            ),
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text(
                                'Don’t have an account?',
                                style: TextStyle(
                                  fontSize: 15,
                                  color: Colors.black,
                                ),
                              ),
                              TextButton(
                                onPressed: () {
                                  Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                      builder: (context) => SignUpPage(),
                                    ),
                                  );
                                },
                                child: Text(
                                  ' Sign up',
                                  style: TextStyle(
                                    fontSize: 15,
                                    color: Color.fromARGB(255, 124, 182, 146),
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
