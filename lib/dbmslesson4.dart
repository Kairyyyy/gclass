import 'package:flutter/material.dart';
import 'package:gclass/quiz2dbms.dart';
import 'package:google_fonts/google_fonts.dart';

class Lesson4ContentPage extends StatelessWidget {
  final Function(int) updateQuiz2Score;

  const Lesson4ContentPage({super.key, required this.updateQuiz2Score});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Lesson 4',
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
                'Relational Database Management and SQL',
                style: GoogleFonts.cabin(fontSize: 28, fontWeight: FontWeight.w900, color: const Color(0xffE52521)),
                ),
              const SizedBox(height: 5),
              RichText(
                text: TextSpan(
                  style: GoogleFonts.notoSerif(fontSize: 16.5, color: Colors.black),
                  children: [
                    TextSpan(
                      text: '\nRelational databases\n',
                      style: GoogleFonts.notoSerif(fontSize: 17.5, fontWeight: FontWeight.w900, color: const Color(0xffE52521)),
                    ),
                    const TextSpan(
                      text:
                          '• Relational databases are based upon the relational data model and managed by a relational database management system, or RDBMS.\n',
                    ),
                    TextSpan(
                      text: '\nStructured Query Language\n',
                      style: GoogleFonts.notoSerif(fontSize: 17.5,
                          fontWeight: FontWeight.w900,
                          color: const Color(0xffE52521)
                      ),
                    ),
                    const TextSpan(
                      text:
                          '• Structured Query Language, or SQL, is the language used for both data definition and data manipulation. It is one of the most popular database languages currently in use  in the industry. It what follows, we elaborate on its key characteristics and position it in terms of the three-layer database architecture.\n',
                    ),
                    TextSpan(
                      text: '\nKey Characteristics of SQL\n',
                      style: GoogleFonts.notoSerif(fontSize: 17.5,
                          fontWeight: FontWeight.w900,
                          color: const Color(0xffE52521)
                      ),
                    ),
                    const TextSpan(
                      text:
                          'Various versions of the SQL standard havebeen introduced, starting with the first, SQL-86  in 1986, and the most recent one in 2016 (SQL:2016). It was accepted as a standard for relational data definition and manipulation by the American National Standards Institute (ANSI) in 1986 and by the International Organization for Standardization (ISO) in 1987. \n',
                    ),
                    const TextSpan(
                      text:
                          '\n• Note that each relational database vendor provides its own implementation (also called SQL dialect) of SQL, in which the bulk of the standard is typically implemented and complemented with some vendor-specific add-ons.\n',
                    ),
                    TextSpan(
                      text: '\nKey Characteristics of SQL\n',
                      style: GoogleFonts.notoSerif(fontSize: 17.5,
                          fontWeight: FontWeight.w900,
                          color: const Color(0xffE52521)
                      ),
                    ),
                    const TextSpan(
                      text:
                          '\nSQL is primarily set-oriented and declarative. In other words, as opposed to record-oriented database languages, SQL can retrieve and manipulate many records at a time (i.e., it operates on sets of records instead of individual records).\n',
                    ),
                    const TextSpan(
                        text:
                            '\nFurthermore, you only need to specify which data to retrieve, in contrast to procedural database languages, which also require you to explicitly define the navigational access path to the data.\n'),
                    const TextSpan(
                        text:
                            '\nSQL can be used both interactively from a command prompt or executed by a program, written in a particular programming language (Java, Python, and many others). In that case, the general-purpose programming language is called the host language to the SQL code\n'),
                    TextSpan(
                      text: '\nCategories of SQL\n',
                      style: GoogleFonts.notoSerif(fontSize: 17.5,
                          fontWeight: FontWeight.w900,
                          color: const Color(0xffE52521)
                      ),
                    ),
                    const TextSpan(
                      text:
                          '\n1. Data Definition Language DDL stands for Data Definition Language. It is used to define database structure or pattern. It is used to create schema, tables, indexes, constraints, etc. in the database. \n',
                    ),
                    TextSpan(
                      text: '\n1. Data Definition Language\n',
                      style: GoogleFonts.notoSerif(fontSize: 17.5,
                          fontWeight: FontWeight.w900,
                          color: const Color(0xffE52521)
                      ),
                    ),
                    const TextSpan(
                      text:
                          '\n• Using the DDL statements, you can create the skeleton of the database. Data definition language is used to store the information of metadata like the number of tables and schemas, their names, indexes, columns in each table, constraints, etc.\n',
                    ),
                    const TextSpan(
                      text:
                          '\nHere are some tasks that come under DDL:\n– Create: It is used to create objects in the database.\n– Alter: It is used to alter the structure of the database.\n– Drop: It is used to delete objects from the database.\n– Truncate: It is used to remove all records from a table.\n– Rename: It is used to rename an object.\n– Comment: It is used to comment on the data dictionary. \n',
                    ),
                    const TextSpan(
                      text:
                          "\nThese commands are used to update the database schema that's why they come under Data definition language. \n",
                    ),
                    TextSpan(
                      text: '\nCategories of SQL\n',
                      style: GoogleFonts.notoSerif(fontSize: 17.5,
                          fontWeight: FontWeight.w900,
                          color: const Color(0xffE52521)
                      ),
                    ),
                    const TextSpan(
                      text:
                          '\n 2. Data Manipulation Language DML stands for Data Manipulation Language. It  is used for accessing and manipulating data in a database. It handles user requests. \n',
                    ),
                    TextSpan(
                      text: '\n2. Data Manipulation Language\n',
                      style: GoogleFonts.notoSerif(fontSize: 17.5,
                          fontWeight: FontWeight.w900,
                          color: const Color(0xffE52521)
                      ),
                    ),
                    const TextSpan(
                      text:
                          '\nHere are some tasks that come under DML:\n  • Select: It is used to retrieve data from a database.\n  • Insert: It is used to insert data into a table.\n  • Update: It is used to update existing data within a table.\n  • Delete: It is used to delete all records from a table.\n  • Merge: It performs UPSERT operation, i.e., insert or update operations.\n  • Call: It is used to call a structured query language or a Java subprogram.\n  • Explain Plan: It has the parameter of explaining data.\n  • Lock Table: It controls concurrency.\n',
                    ),
                    const TextSpan(
                      text:
                          '\n3.Data Control Language DCL stands for Data Control Language. It is used to retrieve the stored or saved data. The DCL execution is transactional. It also has rollback parameters.\n',
                    ),
                    TextSpan(
                      text: '\n3.Data Control Language\n',
                      style: GoogleFonts.notoSerif(fontSize: 17.5,
                          fontWeight: FontWeight.w900,
                          color: const Color(0xffE52521)
                      ),
                    ),
                    const TextSpan(
                      text:
                          '\nHere are some tasks that come under DCL: \n  – Grant: It is used to give user access privileges to a database.\n  – Revoke: It is used to take back permissions from the user. \n  – There are the following operations which have the authorization of Revoke: CONNECT, INSERT, USAGE, EXECUTE, DELETE, UPDATE and SELECT. \n',
                    ),
                    TextSpan(
                      text: '\n4. Transaction Control Language TCL\n',
                      style: GoogleFonts.notoSerif(fontSize: 17.5,
                          fontWeight: FontWeight.w900,
                          color: const Color(0xffE52521)
                      ),
                    ),
                    const TextSpan(
                      text:
                          '\nis used to run the changes made by the DML statement. TCL can be grouped into a logical transaction. \n',
                    ),
                    const TextSpan(
                      text:
                          '\nHere are some tasks that come under TCL:\n    – Commit: It is used to save the transaction on the database.\n    – Rollback: It is used to restore the database to original since the last Commit.\n',
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
                          builder: (context) =>
                              QuizPage2(updateQuiz2Score: updateQuiz2Score),
                        ),
                      );
                    },
                    style: ElevatedButton.styleFrom(
                      shape: RoundedRectangleBorder(
                        borderRadius:
                            BorderRadius.circular(0), // Make button square
                      ),
                      padding: EdgeInsets.zero, // Remove default padding
                      elevation: 0, // Remove button shadow
                      backgroundColor: Colors
                          .transparent, // Make button background transparent
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
                          style: GoogleFonts.pressStart2p(
                              color: Colors
                                  .white), // Using Google Font with white color
                          textAlign: TextAlign
                              .center, // Center the text within the button
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
