import 'package:flutter/material.dart';
import 'package:flutter_application_1/LoginPage1.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(title: 'Flutter Demo', home: firstPage());
  }
}

class firstPage extends StatefulWidget {
  const firstPage({super.key});

  @override
  State<firstPage> createState() => _MyAppState();
}

class _MyAppState extends State<firstPage> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'Flutter Demo',
        home: Scaffold(
          backgroundColor: const Color(0xFFF8F6D6),
          body: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.end,
              children: <Widget>[
                Image.asset(
                  'image/page1.png', // Replace 'your_image.png' with your image asset path
                  width: 344, // Adjust width as needed
                  height: 500, // Adjust height as needed
                ),
                const SizedBox(height: 20),
                Container(
                  width: 544,
                  height: 300,
                  // color: Colors.white,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.only(
                      topRight: Radius.circular(40.0),
                      //bottomRight: Radius.circular(40.0),
                      topLeft: Radius.circular(40.0),
                      //bottomLeft: Radius.circular(40.0)
                    ),
                  ),
                  child: Center(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          'Consulting anywhere',
                          style: TextStyle(
                            fontSize: 24, // Adjust the font size as needed
                            fontWeight: FontWeight
                                .bold, // Adjust the font weight as needed
                            color:
                                Colors.black, // Adjust the text color as needed
                          ),
                        ),
                        SizedBox(height: 20),
                        Text(
                          'Consulting with doctors with us, wherever you are!',
                          style: TextStyle(
                            fontSize: 16, // Adjust the font size as needed
                            color:
                                Colors.black, // Adjust the text color as needed
                          ),
                        ),
                        SizedBox(height: 50),
                        SizedBox(
                          width: 150, // Adjust the width as needed
                          height: 50, // Adjust the height as needed
                        ),
                        ElevatedButton(
                          onPressed: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => LoginPage()));
                          },
                          style: ButtonStyle(
                            backgroundColor: MaterialStateProperty.all<Color>(
                              Color.fromARGB(
                                  255, 124, 182, 146), // Change the color here
                            ),
                          ),
                          child: const Text('Next >'),
                        )
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        ));
  }
}
