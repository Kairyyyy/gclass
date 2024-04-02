import 'package:flutter/material.dart';
import 'package:gclass/quiz1dbms.dart';
import 'package:google_fonts/google_fonts.dart';

class Lesson2ContentPage extends StatelessWidget {
  final Function(bool, bool) updateLessonStatus;
  final Function(int) updateScore;


  const Lesson2ContentPage({super.key, required this.updateLessonStatus, required this.updateScore});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Lesson 2',
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
                'Architecture and Categorization of DBMS',
                style: GoogleFonts.cabin(fontSize: 28, fontWeight: FontWeight.w900, color: const Color(0xffE52521)),
              ),
              const SizedBox(height: 5),
              RichText(
                text: TextSpan(
                  style: GoogleFonts.notoSerif(fontSize: 16.5, color: Colors.black), // Default style
                  children: [
                    const TextSpan(
                      text:
                      'DBMS needs to support various types of data management-related activities, such as querying and storage. It also must provide interfaces to its environment. To achieve both of these goals, a DBMS is composed of various interacting modules that together make up the database management system architecture.\n\n',
                    ),
                    TextSpan(
                      text: 'Components of DBMS\n\n',
                      style: GoogleFonts.notoSerif(fontSize: 18, fontWeight: FontWeight.w900,color: const Color(0xffE52521)),
                    ),
                    TextSpan(
                      text: '1. Connection Manager - ',
                      style: GoogleFonts.notoSerif(fontSize: 17.5, fontWeight: FontWeight.w700,color: const Color(0xffE52521)),
                    ),
                    const TextSpan(
                      text:
                      'Provides facilities to set up a database connection. It can be set up locally or through a network, the latter being more common.\n- Monitors the client connection and requests to appropriate database servers.\n\n',
                    ),
                    TextSpan(
                      text: '2. DDL Compiler - ',
                      style: GoogleFonts.notoSerif(fontSize: 17.5, fontWeight: FontWeight.w700,color: const Color(0xffE52521)),
                    ),
                    const TextSpan(
                      text: 'Compiles the data definitions specified in DDL.\n',
                    ),
                    TextSpan(
                      text: '\n3. Query Processor - ',
                      style: GoogleFonts.notoSerif(fontSize: 17.5, fontWeight: FontWeight.w700,color: const Color(0xffE52521)),
                    ),
                    const TextSpan(
                      text: 'One of the most important parts of a DBMS. It assists in the execution of database queries such as retrieval of data, insertion of data, update of data, and removal of data from the database.\n',
                    ),
                    TextSpan(
                      text: '\n4. Storage Manager - ',
                      style: GoogleFonts.notoSerif(fontSize: 17.5, fontWeight: FontWeight.w700,color: const Color(0xffE52521)),
                    ),
                    const TextSpan(
                      text: 'Governs physical file access and as such supervises the correct and efficient storage of data. It consists of a transaction manager, manager, lock manager, buffer, and recovery manager. \n\na. Transaction Manager\n- Supervises the execution of database transactions.\n\nb. Buffer Manager\n- Is responsible for managing the buffer memory of the DBMS.\n\nc. Lock Manager\n- Is an essential component for providing concurrency control, which ensures data integrity at all times.\n\nd. Recovery Manager\n- Supervises the correct execution of database transactions.\n\n',
                    ),
                    TextSpan(
                      text: 'Query Processor consists of:\n\n',
                      style: GoogleFonts.notoSerif(fontSize: 18, fontWeight: FontWeight.w900,color: const Color(0xffE52521)),
                    ),
                    TextSpan(
                      text: '1. DML Compiler - ',
                      style: GoogleFonts.notoSerif(fontSize: 17.5, fontWeight: FontWeight.w700,color: const Color(0xffE52521)),
                    ),
                    const TextSpan(
                      text: 'Compiles the data manipulation statements specified in DML.\n\n',
                    ),
                    TextSpan(
                      text: '2. Query Parser - ',
                      style: GoogleFonts.notoSerif(fontSize: 17.5, fontWeight: FontWeight.w700,color: const Color(0xffE52521)),
                    ),
                    const TextSpan(
                      text: 'Parses the query into an internal representation format that can then be further evaluated by the system.\n\n',
                    ),
                    TextSpan(
                      text: '3. Query Rewriter -',
                      style: GoogleFonts.notoSerif(fontSize: 17.5, fontWeight: FontWeight.w700,color: const Color(0xffE52521)),
                    ),
                    const TextSpan(
                      text: 'Optimizes the query, independently of the current database state.\n\n',
                    ),
                    TextSpan(
                      text: '4. Query Optimizer - ',
                      style: GoogleFonts.notoSerif(fontSize: 17.5, fontWeight: FontWeight.w700,color: const Color(0xffE52521)),
                    ),
                    const TextSpan(
                      text: 'It optimizes the query based upon the current database state.\n\n',
                    ),
                    TextSpan(
                      text: '5. Query Executor - ',
                      style: GoogleFonts.notoSerif(fontSize: 17.5, fontWeight: FontWeight.w700,color: const Color(0xffE52521)),
                    ),
                    const TextSpan(
                      text: 'The result of the query optimization procedure is a final execution plan and takes care of the actual execution by calling on the storage manager to retrieve the data requested.\n\n',
                    ),
                    TextSpan(
                      text: 'DBMS Interfaces\n\n',
                      style: GoogleFonts.notoSerif(fontSize: 18, fontWeight: FontWeight.w900,color: const Color(0xffE52521)),
                    ),
                    const TextSpan(
                      text:
                      'A DBMS needs to interact with various parties, such as a database designer, a database administrator, an application, or even an end-user. To facilitate this communication, it provides various user interfaces such as a web-based interface, a stand-alone query language interface, a command-line interface, a forms-based interface, a graphical user interface, a natural language interface, an application programming interface (API), an admin interface, and a network interface.\n\n',
                    ),
                    TextSpan(
                      text: 'Categorization Based on Data Model\n\n',
                      style: GoogleFonts.notoSerif(fontSize: 18, fontWeight: FontWeight.w900,color: const Color(0xffE52521)),
                    ),
                    TextSpan(
                      text: '1. Hierarchical DBMSs',
                      style: GoogleFonts.notoSerif(fontSize: 17.5, fontWeight: FontWeight.w700,color: const Color(0xffE52521)),
                    ),
                    const TextSpan(
                      text:
                      ' were one of the first DBMS types developed and adopt a tree-like data model. The DML is procedural and record-oriented.\n\n',
                    ),
                    TextSpan(
                      text: '2. Network DBMSs ',
                      style: GoogleFonts.notoSerif(fontSize: 17.5, fontWeight: FontWeight.w700,color: const Color(0xffE52521)),
                    ),
                    const TextSpan(
                      text:
                      'use a network data model, which is more flexible than a tree-like data model. One of the most popular types are CODASYL DBMSs, which implement the CODASYL data model.\n\n',
                    ),
                    TextSpan(
                      text: '3. Relational DBMSs (RDBMSs)',
                      style: GoogleFonts.notoSerif(fontSize: 17.5, fontWeight: FontWeight.w700,color: const Color(0xffE52521)),
                    ),
                    const TextSpan(
                      text:
                      ' use the relational data model and are the most popular in the industry. They typically use SQL for both DDL and DML operations. SQL is declarative and set oriented.\n\n',
                    ),
                    TextSpan(
                      text: '4. Object-oriented DBMSs (OODBMSs)',
                      style: GoogleFonts.notoSerif(fontSize: 17.5, fontWeight: FontWeight.w700,color: const Color(0xffE52521)),
                    ),
                    const TextSpan(
                      text:
                      ' are based upon the object-oriented data model. An object encapsulates both data (also called variables) and functionality (also called methods). When combining an OODBMS with an object-oriented programming language (e.g., Java, Python), there is no impedance mismatch since the objects can be transparently stored and retrieved from the database.\n\n',
                    ),
                    TextSpan(
                      text: '5. Object-relational DBMS (ORDBMS),',
                      style: GoogleFonts.notoSerif(fontSize: 17.5, fontWeight: FontWeight.w700,color: const Color(0xffE52521)),
                    ),
                    const TextSpan(
                      text:
                      ' also commonly called an extended relational DBMS (ERDBMS), uses a relational model extended with object-oriented user-defined types, concepts, such as user-defined functions, collections, inheritance, and behavior.\n\n',
                    ),
                    TextSpan(
                      text: '6. XML DBMSs',
                      style: GoogleFonts.notoSerif(fontSize: 17.5, fontWeight: FontWeight.w700,color: const Color(0xffE52521)),
                    ),
                    const TextSpan(
                      text:
                      ' use the XML data model to store data. XML is a data representation standard.\n\n',
                    ),
                    TextSpan(
                      text: '7. NoSQL DBMSs -',
                      style: GoogleFonts.notoSerif(fontSize: 17.5, fontWeight: FontWeight.w700,color: const Color(0xffE52521)),
                    ),
                    const TextSpan(
                      text:
                      ' is a type of database management system (DBMS) that is designed to handle and store large volumes of unstructured and semi-structured data.\n\n',
                    ),
                    TextSpan(
                      text: 'Categorization Based on Architecture\n\n',
                      style: GoogleFonts.notoSerif(fontSize: 18, fontWeight: FontWeight.w900,color: const Color(0xffE52521)),
                    ),
                    const TextSpan(
                      text:
                      '• Centralized DBMS architecture (Monolithic architecture), the data are maintained on a centralized host, e.g., a mainframe system. All queries will then have to be processed by this single host.\n\n',
                    ),
                    const TextSpan(
                      text:
                      '• Client–server DBMS architecture, active clients request services from passive servers. A fat client variant stores more processing functionality on the client, whereas a fat server variant puts more on the server.\n\n',
                    ),
                    const TextSpan(
                      text:
                      '• n-tier DBMS architecture is a straightforward extension of the client–server architecture.\n\n',
                    ),
                    const TextSpan(
                      text:
                      '• Cloud DBMS architecture, the DBMS and database are hosted by a third-party cloud provider.\n\n',
                    ),
                    const TextSpan(
                      text:
                      '• Federated DBMS is a DBMS that provides a uniform interface to multiple underlying data sources such as other DBMSs, file systems, document management systems, etc.\n\n',
                    ),
                    const TextSpan(
                      text:
                      '• In-memory DBMS stores all data in internal memory instead of slower external storage such as disk-based storage.\n\n',
                    ),
                    TextSpan(
                      text: 'Categorization Based on Usage\n\n',
                      style: GoogleFonts.notoSerif(fontSize: 18, fontWeight: FontWeight.w900,color: const Color(0xffE52521)),
                    ),
                    const TextSpan(
                      text:
                      '• On-line transaction processing (OLTP) DBMSs focus on managing operational or transactional data.\n\n',
                    ),
                    const TextSpan(
                      text:
                      '• On-line analytical processing (OLAP) DBMSs focus on using operational data for tactical or strategical decision making.\n\n',
                    ),
                    const TextSpan(
                      text:
                      '• Multimedia DBMSs allow for the storage of multimedia data such as text, images, audio, video, 3D games, CAD designs, etc.\n\n',
                    ),
                    const TextSpan(
                      text:
                      '• Spatial DBMS supports the storage and querying of spatial data.\n\n',
                    ),
                    const TextSpan(
                      text:
                      '• Sensor DBMS manages sensor data such as biometric data obtained from wearables, or telematics data which continuously record driving behavior.\n\n',
                    ),
                    const TextSpan(
                      text:
                      '• Mobile DBMSs are the DBMSs running on smartphones, tablets, and other mobile devices.\n\n',
                    ),
                    const TextSpan(
                      text:
                      '• Open-source DBMSs are DBMSs for which the code is publicly available and can be extended by anyone.\n\n',
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
                          builder: (context) => QuizPage1(updateLessonStatus: updateLessonStatus, updateScore: updateScore),
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

