import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'dbmslesson1.dart';
import 'dbmslesson2.dart';
import 'dbmslesson3.dart';
import 'dbmslesson4.dart';

class DBMSPage extends StatefulWidget {
  const DBMSPage({super.key});

  @override
  _DBMSPageState createState() => _DBMSPageState();
}

class _DBMSPageState extends State<DBMSPage> {
  bool _lesson3Enabled = false;
  bool _lesson4Enabled = false;
  int _quiz1Score = 0;
  int _quiz2Score = 0;

  void _updateScore(int score) {
    setState(() {
      _quiz1Score = score;
    });
  }

  void _updateQuiz2Score(int score) {
    setState(() {
      _quiz2Score = score;
    });
  }

  void _updateLessonStatus(bool lesson3Enabled, bool lesson4Enabled) {
    setState(() {
      _lesson3Enabled = lesson3Enabled;
      _lesson4Enabled = lesson4Enabled;
    });
  }

  @override
  Widget build(BuildContext context) {
    double buttonBorderRadius = 10.0;
    Color buttonBackgroundColor = const Color(0xff025432); // Initial background color
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'IT 7 (DBMS)',
          style: TextStyle(color: Colors.white),
        ),
        iconTheme: const IconThemeData(color: Colors.white),
        backgroundColor: const Color(0xff025432),
      ),
      body: Stack(
        children: [
          // Background Image
          Container(
            decoration: const BoxDecoration(
              image: DecorationImage(
                image: AssetImage(
                  'assetsimages/it7WP.jpg',
                ), // Change the path to your image
                fit: BoxFit.cover,
              ),
            ),
          ),
          // Button Layout
          Container(
            margin: const EdgeInsets.fromLTRB(15, 0, 15, 0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const SizedBox(height: 20),
                SizedBox(
                  width: double.infinity,
                  height: 68,
                  child: ElevatedButton(
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => const Lesson1ContentPage(),
                        ),
                      );
                    },
                    style: ElevatedButton.styleFrom(
                      backgroundColor: buttonBackgroundColor,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(buttonBorderRadius),
                      ),
                    ),
                    child: const Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Icon(
                          Icons.book,
                          color: Color(0xffff8181),
                        ), // Icon to the left of the button
                        SizedBox(
                          width: 10,
                        ), // Adding space between icon and text
                        Text(
                          'Lesson 1',
                          style: TextStyle(
                            fontSize: 16, // Adjust font size as needed
                            color: Colors.white, // Adjust text color as needed
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                const SizedBox(height: 10),
                SizedBox(
                  width: double.infinity,
                  height: 68,
                  child: ElevatedButton(
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => Lesson2ContentPage(
                            updateLessonStatus: _updateLessonStatus,
                            updateScore: _updateScore,
                          ),
                        ),
                      );
                    },
                    style: ElevatedButton.styleFrom(
                      backgroundColor: buttonBackgroundColor,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(buttonBorderRadius),
                      ),
                    ),
                    child: const Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Icon(
                          Icons.book,
                          color: Color(0xffff8181),
                        ), // Icon to the left of the button
                        SizedBox(
                          width: 10,
                        ), // Adding space between icon and text
                        Text(
                          'Lesson 2',
                          style: TextStyle(
                            fontSize: 16, // Adjust font size as needed
                            color: Colors.white, // Adjust text color as needed
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                const SizedBox(height: 10),
                SizedBox(
                  width: double.infinity,
                  height: 68,
                  child: ElevatedButton(
                    onPressed: _lesson3Enabled
                        ? () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => const Lesson3ContentPage(),
                        ),
                      );
                    }
                        : null,
                    style: ElevatedButton.styleFrom(
                      backgroundColor: buttonBackgroundColor,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(buttonBorderRadius),
                      ),
                    ),
                    child: const Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Icon(
                          Icons.book,
                          color: Color(0xffff8181),
                        ),
                        SizedBox(
                          width: 10,
                        ), // Adding space between icon and text
                        Text(
                          'Lesson 3',
                          style: TextStyle(
                            fontSize: 16, // Adjust font size as needed
                            color: Colors.white, // Adjust text color as needed
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                const SizedBox(height: 10),
                SizedBox(
                  width: double.infinity,
                  height: 68,
                  child: ElevatedButton(
                    onPressed: _lesson4Enabled
                        ? () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => Lesson4ContentPage(
                            updateQuiz2Score: _updateQuiz2Score
                          ),
                        ),
                      );
                    }
                        : null,
                    style: ElevatedButton.styleFrom(
                      backgroundColor: buttonBackgroundColor,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(buttonBorderRadius),
                      ),
                    ),
                    child: const Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Icon(
                          Icons.book,
                          color: Color(0xffff8181),
                        ),
                        SizedBox(
                          width: 10,
                        ), // Adding space between icon and text
                        Text(
                          'Lesson 4',
                          style: TextStyle(
                            fontSize: 16, // Adjust font size as needed
                            color: Colors.white, // Adjust text color as needed
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                const SizedBox(height: 10),
                SizedBox(
                  width: double.infinity,
                  height: 68,
                  child: ElevatedButton(
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => TotalScorePage(quiz1Score: _quiz1Score, quiz2Score: _quiz2Score
                          ),
                        ),
                      );
                    },
                    style: ElevatedButton.styleFrom(
                      backgroundColor: buttonBackgroundColor,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(buttonBorderRadius),
                      ),
                    ),
                    child: const Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Icon(
                          Icons.quiz,
                          color: Color(0xffff8181),
                        ), // Icon to the left of the button
                        SizedBox(
                          width: 10,
                        ), // Adding space between icon and text
                        Text(
                          'TOTAL SCORE IN QUIZ',
                          style: TextStyle(
                            fontSize: 16, // Adjust font size as needed
                            color: Colors.white, // Adjust text color as needed
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}


class TotalScorePage extends StatelessWidget {
  final int quiz1Score;
  final int quiz2Score;

  const TotalScorePage({super.key, required this.quiz1Score, required this.quiz2Score});

  @override
  Widget build(BuildContext context) {
    int totalScore = quiz1Score + quiz2Score;
    return Scaffold(
      appBar: AppBar(
        title: Text('Total Score :',
          style: GoogleFonts.headlandOne(fontSize: 20, color: Colors.white),
        ),
        // Making the leading icon (back arrow) white
        iconTheme: const IconThemeData(color: Colors.white),
        backgroundColor: Colors.black,
      ),
      // Adding a background image
      body: Container(
        decoration: const BoxDecoration(
          image: DecorationImage(
            image: AssetImage('assetsimages/totalsWP.jpg'), // Provide path to your image
            fit: BoxFit.fill,
          ),
        ),
        child: Padding(
          padding: const EdgeInsets.only(top: 90.0), // Adjust the value according to your needs
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Text(
                  '$totalScore',
                  style: GoogleFonts.pressStart2p(fontSize: 60, fontWeight: FontWeight.bold, color: const Color(
                      0xffff0000)),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

