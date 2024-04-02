import 'dart:math';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:gclass/mainpage.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Captcha Typing',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const _CaptchaTypingScreen(),
      debugShowCheckedModeBanner: false,
    );
  }
}

class _CaptchaTypingScreen extends StatefulWidget {
  const _CaptchaTypingScreen();

  @override
  _CaptchaTypingScreenState createState() => _CaptchaTypingScreenState();
}

class _CaptchaTypingScreenState extends State<_CaptchaTypingScreen> {
  String generatedCode = '';
  final TextEditingController _textEditingController = TextEditingController();

  @override
  void initState() {
    super.initState();
    generateCode();
  }

  void generateCode() {
    final random = Random();
    const characters = 'ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz0123456789';
    generatedCode = String.fromCharCodes(Iterable.generate(6, (_) => characters.codeUnitAt(random.nextInt(characters.length))));
  }

  void checkCode(String input) {
    if (input == generatedCode) {
      showDialog(
        context: context,
        builder: (BuildContext context) {
          return AlertDialog(
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(15.0),
            ),
            contentPadding: EdgeInsets.zero,
            content: Container(
              width: 300, // Adjust the width as needed
              height: 280, // Adjust the height as needed
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage('assetsimages/successML.jpg'),
                  fit: BoxFit.cover,
                ),
                borderRadius: BorderRadius.circular(15.0),
              ),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: <Widget>[
                  Expanded(
                    child: Align(
                      alignment: Alignment.topCenter,
                      child: Padding(
                        padding: const EdgeInsets.symmetric(vertical: 8.0, horizontal: 20.0),
                        child: Text(
                          'SUCCESS',
                          style: GoogleFonts.play(fontSize: 40.0, fontWeight: FontWeight.w900, color: Colors.black, letterSpacing: 10),
                        ),
                      ),
                    ),
                  ),
                  Container(
                    height: 48, // Adjust the height of the buttons row
                    padding: const EdgeInsets.all(8.0), // Adjust padding as needed
                    color:  Color(0xff000000), // Set background color to white
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: <Widget>[
                        TextButton(
                          onPressed: () {
                            Navigator.of(context).pop();
                          },
                          style: ButtonStyle(
                            foregroundColor: MaterialStateProperty.all<Color>(Colors.black),
                            minimumSize: MaterialStateProperty.all<Size>(Size(100, 40)), // Set button size
                          ),
                          child: Text('Go Back',
                              style: GoogleFonts.play(color: Colors.white, fontSize: 15)
                          ),
                        ),
                        VerticalDivider(
                          color: Colors.white, // Set the color of the divider
                          thickness: 1, // Set the thickness of the divider
                        ),
                        TextButton(
                          onPressed: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(builder: (context) => const MainPage()),
                            );
                          },
                          style: ButtonStyle(
                            foregroundColor: MaterialStateProperty.all<Color>(Colors.black),
                            minimumSize: MaterialStateProperty.all<Size>(Size(100, 40)), // Set button size
                          ),
                          child: Text('Continue',
                          style: GoogleFonts.play(color: Colors.white, fontSize: 15),
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            backgroundColor: Colors.transparent, // Make background transparent
            contentTextStyle: TextStyle(color: Colors.transparent), // Text color
            titleTextStyle: TextStyle(color: Colors.transparent), // Title text color
            actionsPadding: EdgeInsets.zero, // Padding for the actions
            actions: <Widget>[], // No actions in this case
            titlePadding: EdgeInsets.zero, // Padding for the title
            insetPadding: EdgeInsets.zero, // Inset padding
            elevation: 0, // No elevation
            scrollable: false, // Not scrollable
            clipBehavior: Clip.antiAlias, // Clip content to the shape
          );
        },
      );
    } else {
      showDialog(
        context: context,
        builder: (BuildContext context) {
          return AlertDialog(
            title: const Text('Invalid Code'),
            content: const Text('Please try again.'),
            actions: <Widget>[
              TextButton(
                onPressed: () {
                  Navigator.of(context).pop();
                },
                child: const Text('OK'),
              ),
            ],
          );
        },
      );
    }
  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Captcha Login',
          style: GoogleFonts.headlandOne(color: Colors.white, fontSize: 15),
        ),
        centerTitle: true,
        backgroundColor: Colors.black87,
      ),
      body: Container(
        decoration: const BoxDecoration(
          image: DecorationImage(
            image: AssetImage('assetsimages/mario.jpg'), // Replace 'background_image.jpg' with your image asset path
            fit: BoxFit.cover, // Adjust the fit as needed
          ),
        ),
        padding: const EdgeInsets.fromLTRB(40.0, 40.0, 40.0, 30.0), // Add margins
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              generatedCode,
              style: GoogleFonts.pressStart2p(color: Colors.white, fontSize: 35),
            ),
            const SizedBox(height: 5.0), // Add some space between generated code and header line
            const Divider(
              color: Colors.white,
            ), // Add a divider as a header line
            const SizedBox(height: 5.0), // Add some space between header line and "Group D" text
            Text(
              'Group D',
              style: GoogleFonts.playfair(fontSize: 20.0, color: Colors.white70),
            ),
            const SizedBox(height: 10.0),
            Expanded(
              child: Center(
                child: Padding(
                  padding: const EdgeInsets.only(bottom: 20.0), // Adjust the bottom padding as needed
                  child: TextField(
                    controller: _textEditingController,
                    textAlign: TextAlign.center,
                    textAlignVertical: TextAlignVertical.center,
                    style: GoogleFonts.play(color: Colors.black, fontSize: 17.5),
                    decoration: InputDecoration(
                      hintText: 'Enter the code',
                      hintStyle: const TextStyle(color: Colors.black),
                      filled: true,
                      fillColor: Colors.lightGreen,
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(15.0), // Set border radius here
                        borderSide: const BorderSide(color: Colors.white),
                      ),
                      enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(15.0), // Set border radius here
                        borderSide: const BorderSide(color: Colors.white),
                      ),
                      focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(15.0), // Set border radius here
                        borderSide: const BorderSide(color: Colors.white),
                      ),
                      contentPadding: const EdgeInsets.symmetric(horizontal: 15.0, vertical: 10.0), // Adjust padding here
                    ),
                    onChanged: (value) {
                      // You can perform validation here if needed
                    },
                  ),
                ),
              ),
            ),
            const SizedBox(height: 10.0),
            SizedBox(
              width: double.infinity,
              child: ElevatedButton(
                onPressed: () {
                  String userInput = _textEditingController.text.trim(); // Get user input
                  checkCode(userInput);
                },
                child: const Text('LOGIN'),
              ),
            ),
            const SizedBox(height: 10.0),
            SizedBox(
              width: double.infinity,
              child: ElevatedButton(
                onPressed: () {
                  generateCode();
                  setState(() {}); // Refresh UI
                },
                child: const Text('GENERATE ANOTHER KEY'),
              ),
            ),
          ],
        ),
      ),
    );
  }
}