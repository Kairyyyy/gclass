import 'package:flutter/material.dart';

class DBMSPage extends StatefulWidget {
  @override
  _DBMSPageState createState() => _DBMSPageState();
}

class _DBMSPageState extends State<DBMSPage> {
  bool _lesson3Enabled = false;
  bool _lesson4Enabled = false;

  void _updateLessonStatus(bool lesson3Enabled, bool lesson4Enabled) {
    setState(() {
      _lesson3Enabled = lesson3Enabled;
      _lesson4Enabled = lesson4Enabled;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('DBMS'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text(
              'Welcome to DBMS Page',
              style: TextStyle(fontSize: 24.0),
            ),
            SizedBox(height: 20.0),
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => Lesson1Page()),
                );
              },
              child: Text('Lesson 1'),
            ),
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => Lesson2ContentPage(updateLessonStatus: _updateLessonStatus)),
                );
              },
              child: Text('Lesson 2'),
            ),
            ElevatedButton(
              onPressed: _lesson3Enabled
                  ? () {
                // Handle Lesson 3 button press
              }
                  : null,
              child: Text('Lesson 3'),
            ),
            ElevatedButton(
              onPressed: _lesson4Enabled
                  ? () {
                // Handle Lesson 4 button press
              }
                  : null,
              child: Text('Lesson 4'),
            ),
          ],
        ),
      ),
    );
  }
}

class Lesson1Page extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Lesson 1'),
      ),
      body: SingleChildScrollView(
        padding: EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'LESSON 1',
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 10),
            Text(
              'Fundamentals of Database Management',
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 10),
            Text(
                'INTRODUCTION\n'
                    'An organization must have accurate and reliable data (information) for effective decision making. Data (information) is the backbone and most critical resource of an organization that enables managers and organizations to gain a competitive edge. In this age of information explosion, where people are bombarded with data, getting the right information, in the right amount, at the right time is not an easy task. So, only those organizations will survive that successfully manage information.\n'
                    '\n'
                    'Basic Definitions and Concepts\n'
                    '• Data - defined as known facts that could be recorded and stored on Computer Media. It is also defined as raw facts from which the required information is produced\n'
                    '• Information - According to Burch et. al., “Information is data that have been put into a meaningful and useful content and communicated to a recipient who uses it to made decisions”.\n'
                    '\n'
                    'Basic Definitions and Concepts\n'
                    '1. Accuracy : It means that the information is free from errors, and it clearly and accurately reflects the meaning of data on which it is based. It also means it is free from bias and conveys an accurate picture to the recipient.\n'
                    '2. Timeliness : It means that the recipients receive the information when they need it and within the required time frame.\n'
                    '3. Relevancy : It means the usefulness of the piece of information for the corresponding persons. It is a very subjective matter. Some information that is relevant for one person might not be relevant for another and vice versa e.g., the price of printer is irrelevant for a person who wants to purchase computer.\n'
                    '\n'
                    'Basic Definitions and Concepts\n'
                    'Database - is a collection of interrelated data stored together with controlled redundancy to serve one or more applications in an optimal way.\n'
                    'It is also defined as a collection of logically related data stored together that is designed to meet information requirements of an organization. We can also define it as an electronic filling system\n'
                    '\n'
                    'Basic Definitions and Concepts\n'
                    'Databases are organized by fields, records and files. 1. Fields - It is the smallest unit of the data that has meaning to its users and is also called data item or data element. Name, Address and Telephone number are examples of fields. These are represented in the database by a value. 2. Records - A record is a collection of logically related fields and each field is possessing a fixed number of bytes and is of fixed data type. Alternatively, we can say a record is one complete set of fields and each field have some value. The complete information about a particular phone number in the database represents a record. Records are of two types fixed length records and variable length records. 3. Files - A file is a collection of related records. Generally, all the records in a file are of same size and record type but it is not always true. The records in a file may be of fixed length or variable length depending upon the size of the records\n'
                    '\n'
                    'Basic Definitions and Concepts\n'
                    'Database Management System (DBMS) - is the software package used to define, create, use, and maintain a database. It typically consists of several software modules, each with their own functionality. Popular DBMS vendors are Oracle, Microsoft, and IBM. MySQL is a well-known open-source DBMS. The combination of a DBMS and a database is then often called a database system\n'
                    '\n'
                    'Database Model versus Instances\n'
                    'The database model or database schema - provides the description of the database data at different levels of detail and specifies the various data items, their characteristics, and relationships, constraints, storage details, etc. It is specified during database design and is not expected to change frequently. It is stored in the catalog, which is the heart of the DBMS\n'
                    '\n'
                    'A database model comprises different data models, each describing the data from different perspectives. A good data model is the start of every successful database application. It provides a clear and unambiguous description of the data items, their relationships, and various data constraints from a particular perspective\n'
                    '\n'
                    'Types of Data Model\n'
                    '• A conceptual data model provides a high-level description of the data items (e.g., supplier, product) with their characteristics (e.g., supplier name, product number) and relationships (e.g., a supplier can supply products).\n'
                    'A logical data model is a translation or mapping of the conceptual data model toward a specific implementation environment.\n'
                    '\n'
                    'The logical data model can be mapped to an internal data model that represents the data’s physical storage details. It clearly describes which data are stored where, in what format, which indexes are provided to speed up retrieval.\n'
                    '\n'
                    'The external data model contains various subsets of the data items in the logical model, also called views, tailored toward the needs of specific applications or groups of users\n'
                    '\n'
                    'Catalog\n'
                    'The catalog is the heart of the DBMS. It contains the data definitions, or metadata, of your database application. It stores the definitions of the views, logical and internal data models, and synchronizes these three data models to ensure their consistency\n'
                    '\n'
                    'Database Users\n'
                    '• Information Architect – He/she designs the conceptual data model. He/she closely interacts with the business user to make sure the data requirements are fully understood and modeled.\n'
                    '• Database Designer – He/she translates the conceptual data model into a logical and internal data model.\n'
                    '• Database Administrator (DBA) – He/she is responsible for the implementation and monitoring of the database. He/she sets up the database infrastructure and continuously monitors its performance by inspecting key performance indicators such as response times, throughput rates, and storage space consumed.\n'
                    '• Application Developer – He/she develops database applications in a general purpose programming language such as Java or Python. He/she provides the data requirements, which are then translated by the database designer or DBA into view definitions.\n'
                    '• End users – He/she will run these applications to perform specific database operations. He/she can also directly query the database using interactive querying facilities for reporting purposes.\n'
                    '\n'
                    'Database Languages\n'
                    '• Data Definition Language (DDL) – used by the DBA to express the database’s external, logical, and internal data models. These definitions are stored in the catalog.\n'
                    '• Data Manipulation Language (DML) – used to retrieve, insert, delete, and modify data.\n'
                    '\n'
                    'DML statements can be embedded in a general-purpose programming language, or entered interactively through a front-end querying tool',
              style: TextStyle(fontSize: 16),
            ),
          ],
        ),
      ),
    );
  }
}

class Lesson2ContentPage extends StatelessWidget {
  final Function(bool, bool) updateLessonStatus;

  Lesson2ContentPage({required this.updateLessonStatus});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Lesson 2'),
      ),
      body: SingleChildScrollView(
        padding: EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'LESSON 2',
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 10),
            Text(
              'Architecture and Categorization of DBMS',
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 10),
            Text(
              'INTRODUCTION\n'
                  'DBMS needs to support various types of data management-related activities, such as querying and storage. It also must provide interfaces to its environment. To achieve both of these goals, a DBMS is composed of various interacting modules that together make up the database management system architecture.\n'
                  '\n'
                  'Components of DBMS\n'
                  '1. Connection Manager:\n'
                  '- Provides facilities to set-up a database connection. It can be set-up locally or through a network, the latter being more common.\n'
                  '- Monitors the client connection and requests to appropriate database servers.\n\n'
                  '2. DDL Compiler:\n'
                  '- Compiles the data definitions specified in DDL.\n\n'
                  '3. Query Processor:\n'
                  '- One of the most important parts of a DBMS. It assists in the execution of database queries such as retrieval of data, insertion of data, update of data, and removal of data from the database.\n\n'
                  '4. Storage Manager:\n'
                  '- Governs physical file access and as such supervises the correct and efficient storage of data. It consists of a transaction manager, buffer manager, lock manager, and recovery manager.\n'
                  '   a. Transaction Manager:\n'
                  '   - Supervises the execution of database transactions.\n\n'
                  '   b. Buffer Manager:\n'
                  '   - Is responsible for managing the buffer memory of the DBMS.\n\n'
                  '   c. Lock Manager:\n'
                  '   - Is an essential component for providing concurrency control, which ensures data integrity at all times.\n\n'
                  '   d. Recovery Manager:\n'
                  '   - Supervises the correct execution of database transactions.\n\n'
                  'Query Processor consists of:\n'
                  '1. DML Compiler:\n'
                  '- Compiles the data manipulation statements specified in DML.\n\n'
                  '2. Query Parser:\n'
                  '- Parses the query into an internal representation format that can then be further evaluated by the system.\n\n'
                  '3. Query Rewriter:\n'
                  '- Optimizes the query, independently of the current database state.\n\n'
                  'Categorization Based on Data Model\n'
                  '1. Hierarchical DBMSs:\n'
                  '- Were one of the first DBMS types developed and adopt a tree-like data model. The DML is procedural and record-oriented.\n\n'
                  '2. Network DBMSs:\n'
                  '- Use a network data model, which is more flexible than a tree-like data model. One of the most popular types are CODASYL DBMSs, which implement the CODASYL data model.\n\n'
                  '3. Relational DBMSs (RDBMSs):\n'
                  '- Use the relational data model and are the most popular in the industry. They typically use SQL for both DDL and DML operations. SQL is declarative and set oriented.\n\n'
                  '4. Object-oriented DBMSs (OODBMSs):\n'
                  '- Are based upon the object-oriented data model. An object encapsulates both data (also called variables) and functionality (also called methods). When combining an OODBMS with an object-oriented programming language (e.g., Java, Python), there is no impedance mismatch since the objects can be transparently stored and retrieved from the.\n\n'
                  '5. Object-relational DBMS (ORDBMS):\n'
                  '- Also commonly called an extended relational DBMS (ERDBMS), uses a relational model extended with object-oriented user-defined types, concepts, such as user-defined functions, collections, inheritance, and behavior.\n\n'
                  '6. XML DBMSs:\n'
                  '- Use the XML data model to store data. XML is a data representation standard.\n\n'
                  '7. NoSQL DBMSs:\n'
                  '- Is a type of database management system (DBMS) that is designed to handle and store large volumes of unstructured and semi-structured data.\n\n'
                  'Categorization Based on Architecture\n'
                  '• Centralized DBMS architecture (Monolithic architecture):\n'
                  '- The data are maintained on a centralized host, e.g., a mainframe system. All queries will then have to be processed by this single host.\n\n'
                  '• Client–server DBMS architecture:\n'
                  '- Active clients request services from passive servers. A fat client variant stores more processing functionality on the client, whereas a fat server variant puts more on the server.\n\n'
                  '• N-tier DBMS architecture:\n'
                  '- Is a straightforward extension of the client–server architecture.\n\n'
                  '• Cloud DBMS architecture:\n'
                  '- The DBMS and database are hosted by a third-party cloud provider.\n\n'
                  '• Federated DBMS:\n'
                  '- Is a DBMS that provides a uniform interface to multiple underlying data sources such as other DBMSs, file systems, document management systems, etc.\n\n'
                  '• In-memory DBMS:\n'
                  '- Stores all data in internal memory instead of slower external storage such as disk-based storage.',
              style: TextStyle(fontSize: 16),
            ),
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => QuizPage(updateLessonStatus: updateLessonStatus)),
                );
              },
              child: Text('Take Quiz'),
            ),

          ],
        ),
      ),
    );
  }
}


class QuizPage extends StatefulWidget {
  final Function(bool, bool) updateLessonStatus;

  QuizPage({required this.updateLessonStatus});

  @override
  _QuizPageState createState() => _QuizPageState();
}

class _QuizPageState extends State<QuizPage> {
  int _currentIndex = 0;
  int _score = 0;

  List<Map<String, dynamic>> _quizData = [
    {
      'question':
      '1. A language used for both data definition and data manipulation and is one of the most popular database.',
      'options': ['DBMS', 'RDBMS', 'SQL', 'NONE OF THE ABOVE'],
      'correctIndex': 2,
    },
    {
      'question': 'This model was introduced by Chen in 1976',
      'options': ['Database Model', 'Conceptual Model', 'Entity-Relationship Model', 'NONE OF THE ABOVE'],
      'correctIndex': 2,
    },
    {
      'question':
      'Is a type of database management system that is designed to handle and store large volumes of unstructured and semi-structured data.',
      'options': ['object relational DBMS', 'object-oriented database', 'Hierarchical DBMS', 'NoSQL DBMS'],
      'correctIndex': 3,
    },
    {
      'question':
      'This is use for creating the "skeleton" of the database and is used to store the information of metadata',
      'options': ['Data definition language or DDL', 'Data manipulation Language or DML', 'Database management system or DBMS', 'Data System or DS'],
      'correctIndex': 0,
    },
    {
      'question': 'A translation or mapping of the conceptual data model toward a specific implementation environment.',
      'options': ['Logical data model', 'Conceptual data model', 'External data model', 'None of the above'],
      'correctIndex': 0,
    },
  ];

  void _checkAnswer(int selectedIndex) {
    if (selectedIndex == _quizData[_currentIndex]['correctIndex']) {
      setState(() {
        _score++;
      });
    }
    _nextQuestion();
  }

  void _nextQuestion() {
    setState(() {
      if (_currentIndex < _quizData.length - 1) {
        _currentIndex++;
      } else {
        // End of quiz
        _showResultDialog();
      }
    });
  }

  void _showResultDialog() {
    showDialog(
      context: context,
      builder: (context) => AlertDialog(
        title: Text('Quiz Completed'),
        content: Text('Your score: $_score out of ${_quizData.length}'),
        actions: [
          TextButton(
            onPressed: () {
              Navigator.pop(context); // Close the dialog
              if (_score > 2) {
                widget.updateLessonStatus(true, true);
              }
              Navigator.popUntil(context, ModalRoute.withName('/dbms')); // Navigate back to DBMSPage
            },
            child: Text('OK'),
          ),
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Quiz'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text(
              _quizData[_currentIndex]['question'],
              style: TextStyle(fontSize: 20),
            ),
            SizedBox(height: 20),
            ...(_quizData[_currentIndex]['options'] as List<String>).map((option) {
              return ElevatedButton(
                onPressed: () {
                  _checkAnswer(_quizData[_currentIndex]['options'].indexOf(option));
                },
                child: Text(option),
              );
            }).toList(),
          ],
        ),
      ),
    );
  }
}
