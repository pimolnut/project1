import 'package:flutter/material.dart';
import 'package:flutter_application_1/LoginPage1.dart';

class SignUpPage extends StatefulWidget {
  const SignUpPage({Key? key}) : super(key: key);

  @override
  State<SignUpPage> createState() => _SignUpPageState();
}

class _SignUpPageState extends State<SignUpPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Sign Up'),
        backgroundColor: const Color(0xFF9accba),
      ),
      backgroundColor: const Color(0xFFF8F6D6),
      body: Center(
        child: ListView(
          // Wrap with ListView
          children: [
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Image.asset(
                  'image/loginPage2.png',
                  width: 344,
                  height: 350,
                ),
                Container(
                  width: 544,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(40.0),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(20),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Sign Up',
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
                        SizedBox(height: 10),
                        Text(
                          'Confirm Password',
                          style: TextStyle(
                            fontSize: 15,
                            color: Colors.black,
                          ),
                        ),
                        TextField(
                          decoration: InputDecoration(
                            hintText: 'Password should be match',
                            border: OutlineInputBorder(),
                          ),
                        ),
                        SizedBox(height: 10),
                        Center(
                          child: ElevatedButton(
                            onPressed: () {
                              // Add your sign up logic here
                            },
                            style: ButtonStyle(
                              backgroundColor: MaterialStateProperty.all<Color>(
                                Color.fromARGB(255, 124, 182, 146),
                              ),
                            ),
                            child: const Text('Sign Up'),
                          ),
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              'Already have an account? ',
                              style: TextStyle(
                                fontSize: 15,
                                color: Colors.black,
                              ),
                            ),
                            TextButton(
                              onPressed: () {
                                Navigator.of(context).pop();
                              },
                              child: Text(
                                'Log in',
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
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
