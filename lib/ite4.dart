import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'dart:math';

class ITE4page extends StatefulWidget {
  const ITE4page({super.key});

  @override
  _ITE4pageState createState() => _ITE4pageState();
}

class _ITE4pageState extends State<ITE4page> {
  int totalScore = 0;

  void _updateScore(int score) {
    setState(() {
      totalScore = score;
    });
  }

  @override
  Widget build(BuildContext context) {
    double buttonBorderRadius = 10.0;
    Color buttonBackgroundColor = const Color(0xff0c2f2d); // Initial background color
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'ITE 4 (Software Engineering)',
          style: GoogleFonts.dongle(fontSize: 30, color: Colors.white),
        ),
        iconTheme: const IconThemeData(color: Colors.white),
        backgroundColor: const Color(0xff0c2f2d),
      ),
      body: Stack(
        children: [
          // Background Image
          Container(
            decoration: const BoxDecoration(
              image: DecorationImage(
                image: AssetImage(
                    'assetsimages/ite4BG.jpg'), // Change the path to your image
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
                const SizedBox(height: 50),
                SizedBox(
                  width: double.infinity,
                  height: 100,
                  child: ElevatedButton(
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => Lesson1Page(updateScore: _updateScore)),
                      );
                    },
                    style: ElevatedButton.styleFrom(
                      backgroundColor: buttonBackgroundColor,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(buttonBorderRadius),
                      ),
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        const Icon(
                          Icons.book,
                          color: Color(0xff00e1ff),
                        ), // Icon to the left of the button
                        const SizedBox(width: 20), // Adding space between icon and text
                        Text(
                          'LESSON 1',
                          style: GoogleFonts.oswald(fontSize: 20, color: Colors.white, letterSpacing: 1),
                        ),
                      ],
                    ),
                  ),
                ),
                const SizedBox(height: 20),
                SizedBox(
                  width: double.infinity,
                  height: 100,
                  child: ElevatedButton(
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => TotalScorePage(totalScore: totalScore),
                        ),
                      );
                    },
                    style: ElevatedButton.styleFrom(
                      backgroundColor: buttonBackgroundColor,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(buttonBorderRadius),
                      ),
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        const Icon(
                          Icons.quiz,
                          color: Color(0xff00e1ff),
                        ), // Icon to the left of the button
                        const SizedBox(width: 20), // Adding space between icon and text
                        Text(
                          'TOTAL SCORE IN QUIZ',
                          style: GoogleFonts.oswald(
                            fontSize: 20, // Adjust font size as needed
                            color: Colors.white, // Adjust text color as needed
                            letterSpacing: 1,
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

class Lesson1Page extends StatelessWidget {
  final Function(int) updateScore;

  const Lesson1Page({super.key, required this.updateScore});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Lesson 1',
          style: GoogleFonts.dongle(fontSize: 35, color: Colors.white),
        ),
        backgroundColor: const Color(0xff9d0202),
        iconTheme: const IconThemeData(color: Colors.white),
      ),
      backgroundColor: const Color(0xfffde6e6),
      body: Container(
        margin: const EdgeInsets.fromLTRB(25, 10, 25, 10),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const SizedBox(height: 5),
              Text(
                'Fundamentals of Database Management',
                style: GoogleFonts.cabin(fontSize: 28, fontWeight: FontWeight.w900, color: const Color(0xffE52521)),
              ),
              const SizedBox(height: 5),
              RichText(
                text: TextSpan(
                  style: GoogleFonts.timmana(fontSize: 18, color: Colors.black), // Default style
                  children: [
                    TextSpan(
                      text: '\nSoftware Engineering',
                      style: GoogleFonts.timmana(fontSize: 22, fontWeight: FontWeight.w900, color: const Color(0xffE52521)),
                    ),
                    const TextSpan(
                      text:
                      '\nSoftware Engineering is a systematic, disciplined, quantifiable study and approach to the design, development, operation, and maintenance of a software system. Software Engineering provides a standard procedure to design and develop software.\n',
                    ),
                    TextSpan(
                      text: '\nDual Role of Software',
                      style: GoogleFonts.timmana(fontSize: 22, fontWeight: FontWeight.w900, color: const Color(0xffE52521)),
                    ),
                    const TextSpan(
                      text: '\n1. As a product –',
                      style: TextStyle(fontWeight: FontWeight.bold),
                    ),
                    const TextSpan(
                      text:
                      ' It delivers the computing potential across networks of Hardware. It enables the Hardware to deliver the expected functionality. It acts as an information transformer because it produces, manages, acquires, modifies, displays, or transmits information.\n',
                    ),
                    const TextSpan(
                      text: '\n2. As a vehicle for delivering a product –',
                      style: TextStyle(fontWeight: FontWeight.bold),
                    ),
                    const TextSpan(
                      text:
                      ' It provides system functionality (e.g., payroll system) It controls other software (e.g., an operating system) It helps build other software (e.g., software tools)\n',
                    ),
                    TextSpan(
                      text: '\nAttributes of Good Software',
                      style: GoogleFonts.timmana(fontSize: 22, fontWeight: FontWeight.w900, color: const Color(0xffE52521)),
                    ),
                    const TextSpan(
                      text:
                      '\nSoftware products have a number of associated attributes that reflect the quality of that software. These attributes are not directly concerned with what the software does. They reflect its behavior while it is executing, the structure and organization of source program and associated documentation.\n',
                    ),
                    TextSpan(
                      text: '\n1. Acceptability',
                      style: GoogleFonts.timmana(fontSize: 19, fontWeight: FontWeight.w900, color: const Color(0xffE52521)),
                    ),
                    const TextSpan(
                      text:
                      '\nSoftware must be acceptable to the type of users for which it is designed. This means that it must be understandable, usable, and compatible with other systems that they use.\n',
                    ),
                    TextSpan(
                      text: '\n2. Dependability and security',
                      style: GoogleFonts.timmana(fontSize: 19, fontWeight: FontWeight.w900, color: const Color(0xffE52521)),
                    ),
                    const TextSpan(
                      text:
                      '\nSoftware dependability includes a range of characteristics including reliability, security, and safety. Dependable software should not cause physical or economic damage in the event of system failure. Software has to be secure so that malicious users cannot access or damage the system.\n',
                    ),
                    TextSpan(
                      text: '\n3. Efficiency',
                      style: GoogleFonts.timmana(fontSize: 19, fontWeight: FontWeight.w900, color: const Color(0xffE52521)),
                    ),
                    const TextSpan(
                      text:
                      '\nSoftware should not make wasteful use of system resources such as memory and processor cycles. Efficiency therefore includes responsiveness, processing time, resource utilization, etc.\n',
                    ),
                    TextSpan(
                      text: '\n4. Maintainability',
                      style: GoogleFonts.timmana(fontSize: 19, fontWeight: FontWeight.w900, color: const Color(0xffE52521)),
                    ),
                    const TextSpan(
                      text:
                      '\nSoftware should be written in such a way that it can evolve to meet the changing needs of customers. This is a critical attribute because software change is an inevitable requirement of a changing business environment.\n',
                    ),
                    TextSpan(
                      text: '\nObjectives of Software Engineering\n',
                      style: GoogleFonts.timmana(fontSize: 22, fontWeight: FontWeight.w900, color: const Color(0xffE52521)),
                    ),
                    TextSpan(
                      text: '\n1. Maintainability',
                      style: GoogleFonts.timmana(fontSize: 19, fontWeight: FontWeight.w900, color: const Color(0xffE52521)),
                    ),
                    const TextSpan(
                      text:
                      '\nIt should be feasible for the software to evolve to meet changing requirements.\n',
                    ),
                    TextSpan(
                      text: '\n2. Efficiency',
                      style: GoogleFonts.timmana(fontSize: 19, fontWeight: FontWeight.w900, color: const Color(0xffE52521)),
                    ),
                    const TextSpan(
                      text:
                      '\nThe software should not make wasteful use of computing devices such as memory, processor cycles, etc.\n',
                    ),
                    TextSpan(
                      text: '\n3. Correctness',
                      style: GoogleFonts.timmana(fontSize: 19, fontWeight: FontWeight.w900, color: const Color(0xffE52521)),
                    ),
                    const TextSpan(
                      text:
                      '\nA software product is correct if the different requirements as specified in the SRS document have been correctly implemented.\n',
                    ),
                    TextSpan(
                      text: '\n4. Reusability',
                      style: GoogleFonts.timmana(fontSize: 19, fontWeight: FontWeight.w900, color: const Color(0xffE52521)),
                    ),
                    const TextSpan(
                      text:
                      '\nA software product has good reusability if the different modules of the product can easily be reused to develop new products.\n',
                    ),
                    TextSpan(
                      text: '\n5. Testability',
                      style: GoogleFonts.timmana(fontSize: 19, fontWeight: FontWeight.w900, color: const Color(0xffE52521)),
                    ),
                    const TextSpan(
                      text:
                      '\nHere software facilitates both the establishment of test criteria and the evaluation of the software with respect to those criteria.\n',
                    ),
                    TextSpan(
                      text: '\n6. Reliability',
                      style: GoogleFonts.timmana(fontSize: 19, fontWeight: FontWeight.w900, color: const Color(0xffE52521)),
                    ),
                    const TextSpan(
                      text:
                      '\nIt is an attribute of software quality. The extent to which a program can be expected to perform its desired function, over an arbitrary time period.\n',
                    ),
                    TextSpan(
                      text: '\n7. Portability',
                      style: GoogleFonts.timmana(fontSize: 19, fontWeight: FontWeight.w900, color: const Color(0xffE52521)),
                    ),
                    const TextSpan(
                      text:
                      '\nIn this case, the software can be transferred from one computer system or environment to another.\n',
                    ),
                    TextSpan(
                      text: '\n8. Adaptability',
                      style: GoogleFonts.timmana(fontSize: 19, fontWeight: FontWeight.w900, color: const Color(0xffE52521)),
                    ),
                    const TextSpan(
                      text:
                      '\nIn this case, the software allows differing system constraints and the user needs to be satisfied by making changes to the software.\n',
                    ),
                    TextSpan(
                      text: '\n9. Interoperability',
                      style: GoogleFonts.timmana(fontSize: 19, fontWeight: FontWeight.w900, color: const Color(0xffE52521)),
                    ),
                    const TextSpan(
                      text:
                      '\nCapability of 2 or more functional units to process data cooperatively.\n',
                    ),
                    TextSpan(
                      text: '\nDifference between Software Engineering and System Engineering',
                      style: GoogleFonts.timmana(fontSize: 22, fontWeight: FontWeight.w900, color: const Color(0xffE52521)),
                    ),
                    const TextSpan(
                      text:
                      '\nSystem engineering is concerned with all aspects of computer-based systems development including hardware, software, and process engineering. Software engineering is part of this more general process. Software engineering is concerned with all aspect of the development and evolution of the computer system or other complex system. Whereas software plays major roles in system engineering. System engineering is there for, concerned with hardware development process design.\n',
                    ),
                    TextSpan(
                      text: '\nWhy is Software Engineering required?',
                      style: GoogleFonts.timmana(fontSize: 22, fontWeight: FontWeight.w900, color: const Color(0xffE52521)),
                    ),
                    const TextSpan(
                      text:
                      '\nSoftware Engineering is required due to the following reasons:\n  - To manage Large software\n  - For more Scalability\n  - Cost Management\n  - To manage the dynamic nature of software\n  - For better quality Management\n',
                    ),
                    TextSpan(
                      text: '\nImportance of Software Engineering\n',
                      style: GoogleFonts.timmana(fontSize: 22, fontWeight: FontWeight.w900, color: const Color(0xffE52521)),
                    ),
                    const TextSpan(
                      text: '\n1. Reduces complexity:',
                      style: TextStyle(fontWeight: FontWeight.bold),
                    ),
                    const TextSpan(
                      text:
                      ' Big software is always complicated and challenging to progress. Software engineering has a great solution to reduce the complication of any project. Software engineering divides big problems into various small issues. And then start solving each small issue one by one. All these small problems are solved independently to each other.\n',
                    ),
                    const TextSpan(
                      text: '\n2. To minimize software cost:',
                      style: TextStyle(fontWeight: FontWeight.bold),
                    ),
                    const TextSpan(
                      text:
                      ' Software needs a lot of hard work and software engineers are highly paid experts. A lot of manpower is required to develop software with a large number of codes. But in software engineering, programmers project everything and decrease all those things that are not needed. In turn, the cost for software productions becomes less as compared to any software that does not use software engineering method.\n',
                    ),
                    const TextSpan(
                      text: '\n3. To decrease time:',
                      style: TextStyle(fontWeight: FontWeight.bold),
                    ),
                    const TextSpan(
                      text:
                      ' Anything that is not made according to the project always wastes time. And if you are making great software, then you may need to run many codes to get the definitive running code. This is a very time-consuming procedure, and if it is not well handled, then this can take a lot of time. So if you are making your software according to the software engineering method, then it will decrease a lot of time.\n',
                    ),
                    const TextSpan(
                      text: '\n4. Handling big projects:',
                      style: TextStyle(fontWeight: FontWeight.bold),
                    ),
                    const TextSpan(
                      text:
                      ' Big projects are not done in a couple of days, and they need lots of patience, planning, and management. And to invest six and seven months of any company, it requires heaps of planning, direction, testing, and maintenance. No one can say that he has given four months of a company to the task, and the project is still in its first stage. Because the company has provided many resources to the plan and it should be completed. So to handle a big project without any problem, the company has to go for a software engineering method.\n',
                    ),
                    const TextSpan(
                      text: '\n5. Reliable software:',
                      style: TextStyle(fontWeight: FontWeight.bold),
                    ),
                    const TextSpan(
                      text:
                      ' Software should be secure, means if you have delivered the software, then it should work for at least its given time or subscription. And if any bugs come in the software, the company is responsible for solving all these bugs. Because in software engineering, testing and maintenance are given, so there is no worry of its reliability.\n',
                    ),
                    const TextSpan(
                      text: '\n6. Effectiveness:',
                      style: TextStyle(fontWeight: FontWeight.bold),
                    ),
                    const  TextSpan(
                      text:
                      ' Effectiveness comes if anything has made according to the standards. Software standards are the big target of companies to make it more effective. So Software becomes more effective in the act with the help of software engineering.\n',
                    ),
                    TextSpan(
                      text: '\nChallenges and Cost of Software Engineering',
                      style: GoogleFonts.timmana(fontSize: 22, fontWeight: FontWeight.w900, color: const Color(0xffE52521)),
                    ),
                    const TextSpan(
                      text:
                      '\n- Challenges of Software Engineering: Coping with increasing diversity, demands for reduced delivery times, and developing trustworthy software.\n- Cost of Software Engineering: Roughly 60% of software costs are development costs, 40% are testing costs. For custom software, evolution costs often exceed development costs.\n',
                    ),
                    TextSpan(
                      text: '\nSoftware Engineering Diversity',
                      style: GoogleFonts.timmana(fontSize: 22, fontWeight: FontWeight.w900, color: const Color(0xffE52521)),
                    ),
                    const TextSpan(
                      text:
                      '\nSoftware engineering is a systematic approach to the production of software that takes into account practical cost, schedule, and dependability issues, as well as the needs of software customers and producers. There are no universal software engineering methods that are suitable for all systems and all companies. Rather, a diverse set of software engineering methods and tools has evolved over the past 50 years.\n',
                    ),
                    TextSpan(
                      text: '\nProfessional Software Development',
                      style: GoogleFonts.timmana(fontSize: 22, fontWeight: FontWeight.w900, color: const Color(0xffE52521)),
                    ),
                    const TextSpan(
                      text:
                      '\nSoftware engineering is intended to support professional software development rather than individual programming. It includes techniques that support program specification, design, and evolution, none of which are normally relevant for personal software development.\n',
                    ),
                    TextSpan(
                      text: '\nSoftware Engineering Ethics',
                      style: GoogleFonts.timmana(fontSize: 22, fontWeight: FontWeight.w900, color: const Color(0xffE52521)),
                    ),
                    const TextSpan(
                      text:
                      '\nSoftware engineers must behave in an ethical and morally responsible way. They must respect the confidentiality of their employers or clients, not misrepresent their level of competence, respect intellectual property rights, and not misuse other people’s computers.\n',
                    ),
                    TextSpan(
                      text: '\nACM/IEEE Code of Ethics',
                      style: GoogleFonts.timmana(fontSize: 22, fontWeight: FontWeight.w900, color: const Color(0xffE52521)),
                    ),
                    const TextSpan(
                      text:
                      '\nThe ACM/IEEE Code of Ethics contains eight Principles related to the behavior of and decisions made by professional software engineers, including practitioners, educators, managers, supervisors, and policy makers, as well as trainees and students of the profession.\n',
                    ),
                    TextSpan(
                      text: '\nEthical Dilemmas',
                      style: GoogleFonts.timmana(fontSize: 22, fontWeight: FontWeight.w900, color: const Color(0xffE52521)),
                    ),
                    const TextSpan(
                      text:
                      '\n- Disagreement in principle with the policies of senior management.\n- Your employer acts in an unethical way and releases a safety-critical system without finishing the testing of the system.\n- Participation in the development of military weapons systems or nuclear systems.\n',
                    ),
                    TextSpan(
                      text: '\nETHICAL PRINCIPLES',
                      style: GoogleFonts.timmana(fontSize: 22, fontWeight: FontWeight.w900, color: const Color(0xffE52521)),
                    ),
                    const TextSpan(
                      text: '\n1. PUBLIC -',
                      style: TextStyle(fontWeight: FontWeight.bold),
                    ),
                    const TextSpan(
                      text: ' Software engineers shall act consistently with the public interest.\n',
                    ),
                    const TextSpan(
                      text: '2. CLIENT AND EMPLOYER -',
                      style: TextStyle(fontWeight: FontWeight.bold),
                    ),
                    const TextSpan(
                      text: ' Software engineers shall act in a manner that is in the best interests of their client and employer consistent with the public interest.\n',
                    ),
                    const TextSpan(
                      text: '3. PRODUCT -',
                      style: TextStyle(fontWeight: FontWeight.bold),
                    ),
                    const TextSpan(
                      text: ' Software engineers shall ensure that their products and related modifications meet the highest professional standards possible.\n',
                    ),
                    const TextSpan(
                      text: '4. JUDGMENT -',
                      style: TextStyle(fontWeight: FontWeight.bold),
                    ),
                    const TextSpan(
                      text: ' Software engineers shall maintain integrity and independence in their professional judgment.\n',
                    ),
                    const TextSpan(
                      text: '5. MANAGEMENT -',
                      style: TextStyle(fontWeight: FontWeight.bold),
                    ),
                    const TextSpan(
                      text: ' Software engineering managers and leaders shall subscribe to and promote an ethical approach to the management of software development and maintenance.\n',
                    ),
                    const TextSpan(
                      text: '6. PROFESSION -',
                      style: TextStyle(fontWeight: FontWeight.bold),
                    ),
                    const TextSpan(
                      text: ' Software engineers shall advance the integrity and reputation of the profession consistent with the public interest.\n',
                    ),
                    const TextSpan(
                      text: '7. COLLEAGUES -',
                      style: TextStyle(fontWeight: FontWeight.bold),
                    ),
                    const TextSpan(
                      text: ' Software engineers shall be fair to and supportive of their colleagues.\n',
                    ),
                    const TextSpan(
                      text: '8. SELF -',
                      style: TextStyle(fontWeight: FontWeight.bold),
                    ),
                    const TextSpan(
                      text: ' Software engineers shall participate in lifelong learning regarding the practice of their profession and shall promote an ethical approach to the practice of the profession.\n',
                    ),
                  ],
                ),
              ),
              const SizedBox(height: 10), // Adding margin on top of the button
              Center(
                child: Container(
                  width: 105, // Width of the button
                  height: 105, // Height of the button
                  decoration: const BoxDecoration(
                    image: DecorationImage(
                      image: AssetImage('assetsimages/takequiz.jpg'),
                      fit: BoxFit.fill,
                    ),
                  ),
                  child: ElevatedButton(
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => QuizPage(updateScore: updateScore),
                        ),
                      );
                    },
                    style: ElevatedButton.styleFrom(
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(0), // Make button square
                      ),
                      padding: EdgeInsets.zero, // Remove default padding
                      elevation: 0, // Remove button shadow
                      backgroundColor: Colors.transparent, // Make button background transparent
                    ),
                    child: Container(
                      width: 105, // Width of the button
                      height: 105, // Height of the button
                      decoration: const BoxDecoration(
                        image: DecorationImage(
                          image: AssetImage('assetsimages/takequiz.jpg'),
                          fit: BoxFit.fill,
                        ),
                      ),
                      child: Center(
                        child: Text(
                          'Take\nQuiz',
                          style: GoogleFonts.pressStart2p(color: Colors.white), // Using Google Font with white color
                          textAlign: TextAlign.center, // Center the text within the button
                        ),
                      ),
                    ),
                  ),
                ),
              ),
              const SizedBox(height: 20),
            ],
          ),
        ),
      ),
    );
  }
}

List<Map<String, dynamic>> _shuffleQuestions(List<Map<String, dynamic>> quizData) {
  final random = Random();
  for (int i = quizData.length - 1; i > 0; i--) {
    int j = random.nextInt(i + 1);
    var temp = quizData[i];
    quizData[i] = quizData[j];
    quizData[j] = temp;
  }
  return quizData.sublist(0, 10); // Select only the first 5 questions
}

class QuizPage extends StatefulWidget {
  final Function(int) updateScore;

  const QuizPage({super.key, required this.updateScore});

  @override
  _QuizPageState createState() => _QuizPageState();
}

class _QuizPageState extends State<QuizPage> {
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
      'What is software?',
      'options': [
        'A set of computer programs and their accompanying documentation.',
        'Hardware components used in computers.',
        'The physical components of a computer system.',
        'The process of coding and debugging computer programs.'
      ],
      'correctIndex': 0,
    },
    {
      'question':
      'What is software engineering?',
      'options': [
        'Software engineering is the process of designing and building software systems.',
        'Software engineering involves managing software projects and teams.',
        'Software engineering focuses on developing high-quality and reliable software.',
        'Software engineering encompasses the entire lifecycle of software development, from requirements gathering to maintenance and support.'
      ],
      'correctIndex': 3,
    },
    {
      'question':
      'What are the fundamental software engineering activities?',
      'options': [
        'Software specification',
        'Software development',
        'Software validation',
        'all of the above '
      ],
      'correctIndex': 3,
    },
    {
      'question':
      'What is the difference between software engineering and computer science?',
      'options': [
        'Computer science focuses on theory and fundamentals; software engineering is concerned with the practicalities of developing and delivering useful software.',
        'Software engineering deals with the theoretical aspects of programming languages, while computer science focuses on practical software development.',
        'Computer science primarily involves hardware design, whereas software engineering focuses on software architecture and development.',
        'Software engineering emphasizes mathematical algorithms, while computer science concentrates on coding and implementation.'
      ],
      'correctIndex': 0,
    },
    {
      'question':
      'What is the difference between software engineering and system engineering?',
      'options': [
        'Software engineering focuses solely on software development, while system engineering encompasses hardware, software, and process engineering.',
        'System engineering deals with computer-based systems development, while software engineering is a broader field that includes system engineering.',
        ' Software engineering involves only the development of software, whereas system engineering covers hardware, software, and process engineering aspects.',
        'System engineering is concerned with the overall development of computer-based systems, while software engineering specifically addresses the development of software within those systems.'
      ],
      'correctIndex': 3,
    },
    {
      'question':
      'What are these application systems that run on a local computer, such as a PC? They include all necessary functionality and do not need to be connected to a network.',
      'options': [
        'Stand-alone application',
        'Network-dependent software',
        'Local network application',
        'Cloud-based application'
      ],
      'correctIndex': 0,
    },
    {
      'question':
      'Increasingly, systems are required to operate as distributed systems across networks that include different types of computer and mobile devices. Which term best describes this characteristic?',
      'options': [
        'Monolithic',
        'Homogeneity',
        'Heterogeneity',
        'Concurrency'
      ],
      'correctIndex': 2,
    },
    {
      'question':
      'What term describes systems that are composed of a number of other software systems?',
      'options': [
        'Aggregated systems',
        'Composite systems',
        'Integrated systems',
        'Systems of systems'
      ],
      'correctIndex': 3,
    },
    {
      'question':
      'Software may be implemented using service-oriented software engineering, where the software components are stand-alone web services. Which term best describes this approach?',
      'options': [
        'Microservices architecture',
        'Monolithic architecture',
        'Service-oriented systems',
        'Component-based architecture'
      ],
      'correctIndex': 2,
    },
    {
      'question':
      'These are systems that are developed by scientists and engineers to model physical processes or situations, which include many, separate, interacting objects.',
      'options': [
        'Scientific models',
        'Computational algorithms',
        'Systems for modeling and simulation',
        'Engineering prototypes'
      ],
      'correctIndex': 2,
    },
    {
      'question':
      'How do emerging software engineering techniques impact system demands?',
      'options': [
        'They simplify system development and reduce complexity. ',
        'They maintain the same level of system complexity as before.',
        'They lead to a decrease in system size and capabilities. ',
        'They necessitate handling increasing system complexity'
      ],
      'correctIndex': 3,
    },
    {
      'question':
      'What is a common outcome when companies fail to implement software engineering methods in their programming practices?',
      'options': [
        'Reduced development costs and improved reliability.',
        'Enhanced productivity and faster project completion.',
        'Increased expenses and diminished reliability.',
        'Streamlined processes and better customer satisfaction.'
      ],
      'correctIndex': 2,
    },
    {
      'question':
      'What type of systems are available for purchase by any interested customer, operating independently without requiring integration with other systems?',
      'options': [
        'Collaborative systems',
        'Custom-built systems',
        'Stand-alone systems',
        'Integrated systems'
      ],
      'correctIndex': 2,
    },
    {
      'question':
      'What term describes software developed exclusively for a particular client to fulfill their unique requirements?',
      'options': [
        'Tailor-made software',
        'Off-the-shelf software',
        'Generic software',
        'Mass-produced software'
      ],
      'correctIndex': 0,
    },
    {
      'question':
      'What aspect of software development encompasses considerations such as responsiveness, processing time, and memory utilization to avoid wasteful usage of system resources?',
      'options': [
        'Scalability',
        'Compatibility',
        'Reliability',
        'Efficiency'
      ],
      'correctIndex': 3,
    },{
      'question':
      'What criteria must software meet to be deemed suitable for its intended users, ensuring it is comprehensible, usable, and interoperable with other systems they utilize?',
      'options': [
        'Accessibility',
        'Reliability',
        'Adaptability',
        'Acceptability'
      ],
      'correctIndex': 3,
    },
    {
      'question':
      'What characteristic of software development ensures that software can adapt and evolve to accommodate the evolving needs of customers in a dynamic business environment?',
      'options': [
        'Maintabability ',
        'Scalability',
        'Security',
        'Flexibility '
      ],
      'correctIndex': 0,
    },
    {
      'question':
      'What encompasses various attributes such as reliability, security, and safety in software development, ensuring that system failures do not result in physical or economic harm, and preventing malicious users from accessing or damaging the system?',
      'options': [
        'Maintainability',
        'Efficiency',
        'Dependability and security',
        'Acceptability'
      ],
      'correctIndex': 2,
    },
    {
      'question':
      'In service-oriented software engineering, how are software components typically implemented?',
      'options': [
        'As standalone desktop applications',
        'As integrated mobile applications',
        'As standalone web services',
        'As monolithic server applications'
      ],
      'correctIndex': 2,
    },
    {
      'question':
      'Which technologies facilitate the development of dynamic and interactive user interfaces directly within a web browser?',
      'options': [
        'Server-side scripting languages',
        'Command-line interfaces',
        'Interface development technologies like AJAX and HTML5',
        'Standalone desktop application frameworks'
      ],
      'correctIndex': 2,
    },
  ];

  void _checkAnswer(int selectedIndex) {
    if (selectedIndex == _quizData[_currentIndex]['correctIndex']) {
      setState(() {
        _score++;
        _correctAnswers++;
      });
      widget.updateScore(_score);
    }
    else{
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
        _showResultPage();
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
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Quiz',
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

class TotalScorePage extends StatelessWidget {
  final int totalScore;

  const TotalScorePage({super.key, required this.totalScore});

  @override
  Widget build(BuildContext context) {
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

class QuizResultPage extends StatelessWidget {
  final int score;
  final int totalQuestions;
  final int correctAnswers;
  final int wrongAnswers;

  const QuizResultPage(
      {super.key, required this.score, required this.totalQuestions, required this.correctAnswers, required this.wrongAnswers});

  @override
  Widget build(BuildContext context) {
    String message;
    String imagePath;
    String message2;

    if (score >= 6) {
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
                            child: const Text('Go Back To Lesson 1'),
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
                            child: const Text('Go Back To ITE 4'),
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