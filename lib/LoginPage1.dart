import 'package:flutter/material.dart';

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
            backgroundColor: const Color(0xFF9accba)),
        backgroundColor: const Color(0xFFF8F6D6),
        body: Center(
          child: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
            Image.asset(
              'image/loginPage2.png', // Replace 'your_image.png' with your image asset path
              width: 344, // Adjust width as needed
              height: 400, // Adjust height as needed
            ),
            Container(
              width: 544,
              height: 387,
              // color: Colors.white,
              decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.only(
                    topRight: Radius.circular(40.0),
                    topLeft: Radius.circular(40.0),
                  )),
              child: Center(
                  child: Column(
                      // mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                    SizedBox(height: 20),
                    Text(
                      'Log In',
                      style: TextStyle(
                        fontSize: 24, // Adjust the font size as needed
                        fontWeight:
                            FontWeight.bold, // Adjust the font weight as needed
                        color: Colors.black, // Adjust the text color as needed
                      ),
                    ), // Add space below the "Log In" text
                    Padding(
                      padding: const EdgeInsets.all(
                          20), // Add padding around the column
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment
                            .start, // Align children to the start (left)
                        children: [
                          // SizedBox(height: 20),
                          Text(
                            'Email',
                            style: TextStyle(
                              fontSize: 15,
                              color: Colors.black,
                            ),
                          ),
                          // SizedBox(height: 20),
                          TextField(
                            decoration: InputDecoration(
                              hintText: 'Enter your username',
                              border: OutlineInputBorder(),
                            ),
                          ),
                        ],
                      ),
                    ),
                    // SizedBox(height: 20), // Add space below the "Log In" text
                    Padding(
                      padding: const EdgeInsets.all(
                          20), // Add padding around the column
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment
                            .start, // Align children to the start (left)
                        children: [
                          Text(
                            'Password',
                            style: TextStyle(
                              fontSize: 15,
                              color: Colors.black,
                            ),
                          ),
                          // SizedBox(height: 20),
                          TextField(
                            decoration: InputDecoration(
                              hintText: 'Enter your password',
                              border: OutlineInputBorder(),
                            ),
                          ),
                          SizedBox(
                            width: 150, // Adjust the width as needed
                            height: 10,
                          ),
                          Center(
                            child: ElevatedButton(
                              onPressed: () {
                                Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) => LoginPage()));
                              },
                              style: ButtonStyle(
                                backgroundColor:
                                    MaterialStateProperty.all<Color>(
                                  Color.fromARGB(255, 124, 182,
                                      146), // Change the color here
                                ),
                              ),
                              child: const Text('Next >'),
                            ),
                          )
                        ],
                      ),
                    )
                  ])),
            )
          ]),
        ));
  }
}
