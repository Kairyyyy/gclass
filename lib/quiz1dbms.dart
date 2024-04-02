import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'dart:math';

List<Map<String, dynamic>> _shuffleQuestions(List<Map<String, dynamic>> quizData) {
  final random = Random();
  for (int i = quizData.length - 1; i > 0; i--) {
    int j = random.nextInt(i + 1);
    var temp = quizData[i];
    quizData[i] = quizData[j];
    quizData[j] = temp;
  }
  return quizData.sublist(0, 5); // Select only the first 5 questions
}

class QuizPage1 extends StatefulWidget {
  final Function(bool, bool) updateLessonStatus;
  final Function(int) updateScore;

  const QuizPage1({super.key, required this.updateLessonStatus, required this.updateScore});

  @override
  _QuizPageState1 createState() => _QuizPageState1();
}

class _QuizPageState1 extends State<QuizPage1> {
  int _currentIndex = 0;
  int _score = 0;
  int _correctAnswers = 0;
  int _wrongAnswers = 0;
  late List<Map<String, dynamic>> _quizData;

  @override
  void initState() {
    super.initState();
    _quizData = _shuffleQuestions(List.from(_originalQuizData));
  }

  final List<Map<String, dynamic>> _originalQuizData = [
    {
      'question':
      'A translation or mapping of the conceptual data model toward a specific implementation environment.',
      'options': ['Logical data model', 'Conceptual data model', 'External data model', 'None of the above'],
      'correctIndex': 0,
    },
    {
      'question':
      'He/she will run these application to perform specific database operations',
      'options': ['Application Developer', 'Data Definition Language', 'Information architect', 'End users'],
      'correctIndex': 3,
    },
    {
      'question':
      'It is the heart of dbms and it contains the data definition or metadata of your database application',
      'options': ['Data', 'Catalog', 'Database', 'None of the above'],
      'correctIndex': 1,
    },
    {
      'question':
      'Defined as known facts that could be recorded and stored on Computer Media.',
      'options': ['Data', 'Information', 'Maybe', 'None of the above'],
      'correctIndex': 0,
    },
    {
      'question':
      'Is a collection of interrelated data stored together with controlled redundancy to serve one or more applications in an optimal way.',
      'options': ['Data', 'Database', 'Information', 'None of the above'],
      'correctIndex':1,
    },
    {
      'question':
      'Is a type of database management system that is designed to handle and store large volumes of unstructured and semi-structured data.',
      'options': ['Object relational DBMS', 'object-oriented database', 'Hierarchical DMBS', 'NoSQL DBMS'],
      'correctIndex': 3,
    },
    {
      'question': 'One of the first DBMS types developed, and adopt a tree-like data model.',
      'options': ['Network DMBS', 'Hierarchical DBMS', 'Maybe', 'None of the above'],
      'correctIndex': 1,
    },
    {
      'question':
      ' Are based upon the object-oriented data model.',
      'options': ['NoSQL DBMS', 'XML DBMS', 'Object-oriented DBMS', 'None of the above'],
      'correctIndex': 2,
    },
    {
      'question':
      'Monitors the client connection and requests to appropriate database servers',
      'options': ['Query Processor', 'Data deliverer', 'Connection Manager', 'DDL Compiler'],
      'correctIndex': 0,
    },
    {
      'question':
      'Parses the query into an internal representation format that can then be further evaluated by the system.',
      'options': ['Query Executor', 'DML Compiler', 'Query Rewriter', 'Query Parser'],
      'correctIndex': 0,
    },
  ];

  void _checkAnswer(int selectedIndex) {
    if (selectedIndex == _quizData[_currentIndex]['correctIndex']) {
      setState(() {
        _score++;
        _correctAnswers++;
      });
      widget.updateScore(_score);
    } else {
      _wrongAnswers++;
    }
    _nextQuestion();
  }

  void _nextQuestion() {
    setState(() {
      if (_currentIndex < _quizData.length - 1) {
        _currentIndex++;
      } else {
        // End of quiz
        _showResultPage(); // Navigate to result page
        if (_score > 2) {
          widget.updateLessonStatus(true, true);
        }
      }
    });
  }

  void _showResultPage() {
    Navigator.pushReplacement(
      context,
      MaterialPageRoute(
        builder: (context) => QuizResultPage(
          score: _score,
          totalQuestions: _quizData.length,
          correctAnswers: _correctAnswers,
          wrongAnswers: _wrongAnswers,
          updateLessonStatus: widget.updateLessonStatus,
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Quiz',
          style: GoogleFonts.play(color: Colors.white),
        ),
        iconTheme: const IconThemeData(color: Colors.white),
        backgroundColor: Colors.black,
      ),
      body: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
            image: const AssetImage(
              "assetsimages/quizWP.jpg",
            ),
            fit: BoxFit.cover,
            colorFilter: ColorFilter.mode(
              Colors.black.withOpacity(0.15), // Adjust darkness level as needed
              BlendMode.srcOver,
            ),
          ),
        ),
        child: Column(
          children: [
            Expanded(
              flex: 2,
              child: Padding(
                padding: const EdgeInsets.fromLTRB(20, 70, 20, 0),
                child: Text(
                  _quizData[_currentIndex]['question'],
                  textAlign: TextAlign.center,
                  style: GoogleFonts.breeSerif(fontSize: 20.0, color: Colors.white, fontWeight: FontWeight.w900),
                ),
              ),
            ),
            Container(
              margin: const EdgeInsets.only(bottom: 12.0),
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 8.0),
                child: GridView.count(
                  crossAxisCount: 2,
                  mainAxisSpacing: 10.0,
                  crossAxisSpacing: 10.0,
                  shrinkWrap: true,
                  children: List.generate(
                    _quizData[_currentIndex]['options'].length,
                        (index) {
                      final optionText = _quizData[_currentIndex]['options'][index];
                      final fontSize = optionText.length > 70 ? 12.0 : 16.0;
                      return SizedBox(
                        width: double.infinity,
                        height: double.infinity,
                        child: ElevatedButton(
                          onPressed: () {
                            _checkAnswer(index);
                          },
                          style: ElevatedButton.styleFrom(
                            padding: const EdgeInsets.all(10.0),
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(10),
                            ),
                          ),
                          child: Text(
                            optionText,
                            textAlign: TextAlign.center,
                            style: GoogleFonts.questrial(fontSize: fontSize),
                          ),
                        ),
                      );
                    },
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class QuizResultPage extends StatelessWidget {
  final int score;
  final int totalQuestions;
  final int correctAnswers;
  final int wrongAnswers;
  final Function(bool, bool) updateLessonStatus;

  const QuizResultPage(
      {super.key, required this.score, required this.totalQuestions, required this.correctAnswers, required this.wrongAnswers, required this.updateLessonStatus});

  @override
  Widget build(BuildContext context) {
    String message;
    String imagePath;
    String message2;

    if (score >= 3) {
      message = 'Congratulations\nYou Passed';
      message2 ='You may now proceed to Lesson 3 and Lesson 4';
      imagePath = 'assetsimages/good.png';
    } else {
      message = 'You Did\nNot Pass';
      imagePath = 'assetsimages/bad.png';
      message2 ='Try Again T_T';
    }

    String totalScoreImagePath = 'assetsimages/total.png';

    return Scaffold(
      appBar: AppBar(
        title: Text('Quiz Result',
          style: GoogleFonts.dongle(fontSize: 40, color: Colors.white),
        ),
        iconTheme: const IconThemeData(color: Colors.white),
        backgroundColor: Colors.black,
      ),
      body: Stack(
        children: [
          // Background image container
          Positioned.fill(
            child: Container(
              decoration: const BoxDecoration(
                image: DecorationImage(
                  image: AssetImage('assetsimages/result.jpg'),
                  fit: BoxFit.cover,
                ),
              ),
            ),
          ),
          // Content container

          Positioned.fill(
            child: SingleChildScrollView(
              padding: EdgeInsets.zero,
              child: Container(
                margin: const EdgeInsets.fromLTRB(20, 50, 20, 0),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: [
                    Text(
                      message,
                      style: GoogleFonts.pressStart2p(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                        color: Colors.white,
                      ),
                      textAlign: TextAlign.center,
                    ),
                    const SizedBox(height: 10),
                    Image.asset(
                      imagePath,
                      width: 225,
                      height: 225,
                    ),
                    const SizedBox(height: 20),
                    Container(
                      decoration: BoxDecoration(
                        color: Colors.white.withOpacity(0.9),
                        borderRadius: BorderRadius.circular(40),
                      ),
                      child: Padding(
                        padding: const EdgeInsets.symmetric(vertical: 15),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Image.asset(
                              totalScoreImagePath,
                              width: 30,
                              height: 30,
                            ),
                            const SizedBox(width: 5),
                            Text('$totalQuestions', style: GoogleFonts.play(fontSize: 30)),
                            const SizedBox(width: 20),
                            Container(
                              width: 1,
                              height: 40,
                              color: Colors.black,
                            ),
                            const SizedBox(width: 20),
                            const Icon(Icons.check_circle, color: Colors.green, size: 30),
                            const SizedBox(width: 5),
                            Text('$correctAnswers', style: GoogleFonts.play(fontSize: 30)),
                            const SizedBox(width: 20),
                            Container(
                              width: 1,
                              height: 40,
                              color: Colors.black,
                            ),
                            const SizedBox(width: 20),
                            const Icon(Icons.cancel, color: Colors.red, size: 30),
                            const SizedBox(width: 5),
                            Text('$wrongAnswers', style: GoogleFonts.play(fontSize: 30)),
                          ],
                        ),
                      ),
                    ),
                    const SizedBox(height: 15),
                    Text(
                      message2,
                      style: GoogleFonts.play(
                          fontSize: 25,
                          color: Colors.white
                      ),
                      textAlign: TextAlign.center,
                    ),
                    const SizedBox(height: 30),
                    Column(
                      children: [
                        SizedBox(
                          width: double.infinity,
                          child: ElevatedButton(
                            onPressed: () {
                              Navigator.pop(context);
                            },
                            child: const Text('Go Back To Lesson 2'),
                          ),
                        ),
                        const SizedBox(height: 10),
                        SizedBox(
                          width: double.infinity,
                          child: ElevatedButton(
                            onPressed: () {
                              Navigator.pop(context);
                              Navigator.pop(context);
                            },
                            child: const Text('Go Back To IT 7'),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}



