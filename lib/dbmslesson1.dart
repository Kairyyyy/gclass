import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Lesson1ContentPage extends StatelessWidget {
  const Lesson1ContentPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Lesson 1',
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
                style: GoogleFonts.cabin(
                    fontSize: 28,
                    fontWeight: FontWeight.w900,
                    color: const Color(0xffE52521)),
              ),
              const SizedBox(height: 5),
              RichText(
                text: TextSpan(
                  style: GoogleFonts.notoSerif(fontSize: 16.5, color: Colors.black), // Default style
                  children: [
                    const TextSpan(
                      text:
                          'an organization must have accurate and reliable data (information) for effective decision and most critical resource of an organization gain a competitive edge. In this age of bombarded with data, getting the right information, in the right amount, at the right time is not an easy task. So, only those organizations will survive that successfully manage information\n',
                    ),
                    TextSpan(
                      text: '\nBasic Definitions and Concepts\n',
                      style: GoogleFonts.notoSerif(fontSize: 17.5, fontWeight: FontWeight.w900,color: const Color(0xffE52521)),
                    ),
                    TextSpan(
                      text: '\nData - ',
                      style: GoogleFonts.notoSerif(fontSize: 16.5, fontWeight: FontWeight.w700,color: const Color(0xffE52521)),
                    ),
                    const TextSpan(
                      text:
                          'defined as known facts that could be recorded and stored on Computer Media. It is also defined as raw facts from which the required information is produced \n',
                    ),
                    TextSpan(
                      text: '\nInformation - ',
                      style: GoogleFonts.notoSerif(fontSize: 16.5, fontWeight: FontWeight.w700,color: const Color(0xffE52521)),
                    ),
                    const TextSpan(
                      text:
                          'According to Burch et.al., “Information is data that have been put into a meaningful and useful content and communicated to a recipient who uses it to made decisions”.  \n',
                    ),
                    const TextSpan(
                      text:
                          '\nIn these days,there is no lack of data, but there is lack of quality information. The quality information means information that is accurate, timely and relevant, which are the three major key attributes of information. \n',
                    ),
                    TextSpan(
                      text: '\n1. Accuracy: ',
                      style: GoogleFonts.notoSerif(fontSize: 16.5, fontWeight: FontWeight.w700,color: const Color(0xffE52521)),
                    ),
                    const TextSpan(
                      text:
                          'It means that the information is free from errors,and it clearly and accurately reflects the meaning of data on which it is based.It also means it is free from bias and conveys an accurate picture to the recipient.\n',
                    ),
                    TextSpan(
                      text: '\n2. Timeliness: ',
                      style: GoogleFonts.notoSerif(fontSize: 16.5, fontWeight: FontWeight.w700,color: const Color(0xffE52521)),
                    ),
                    const TextSpan(
                      text:
                          'It means that the recipients receive the information when they need it and within the required time frame.\n',
                    ),
                    TextSpan(
                      text: '\n3. Relevancy: ',
                      style: GoogleFonts.notoSerif(fontSize: 16.5, fontWeight: FontWeight.w700,color: const Color(0xffE52521)),
                    ),
                    const TextSpan(
                      text:
                          'It means the usefulness of the piece of information for the corresponding persons.It is a very subjective matter.Some information that is relevant for one person might not be relevant for another and vice versa e.g.,the price of printer is irrelevant for a person who wants to purchase computer.\n',
                    ),
                    TextSpan(
                      text: '\nDatabase - ',
                      style: GoogleFonts.notoSerif(fontSize: 16.5, fontWeight: FontWeight.w700,color: const Color(0xffE52521)),
                    ),
                    const TextSpan(
                      text:
                          'is a collection of interrelated data stored together with controlled redundancy to serve one or more applications in an optimal way. \n',
                    ),
                    const TextSpan(
                      text:
                          'It is also defined as a collection of logically related data stored together that is designed to meet information requirements of an organization.We can also define it as an electronic filling system \n',
                    ),
                    TextSpan(
                      text:
                          '\nDatabases are organized by fields, records and files.  \n',
                      style: GoogleFonts.notoSerif(fontSize: 17.5, fontWeight: FontWeight.w700,color: const Color(0xffE52521)),
                    ),
                    TextSpan(
                      text: '\n1.Fields - ',
                      style: GoogleFonts.notoSerif(fontSize: 16.5, fontWeight: FontWeight.w700,color: const Color(0xffE52521)),
                    ),
                    const TextSpan(
                      text:
                          'It is the smallest unit of the data that has meaning to its users and is also called data item or data element. Name, Address and Telephone number are examples of fields. These are represented in the database by a value. \n',
                    ),
                    TextSpan(
                      text: '\n2. Records - ',
                      style: GoogleFonts.notoSerif(fontSize: 16.5, fontWeight: FontWeight.w700,color: const Color(0xffE52521)),
                    ),
                    const TextSpan(
                      text:
                          'A record is a collection of logically related fields and each field is possessing a fixed number of bytes and is of fixed data type. Alternatively, we can say a record is one complete set of fields and each field have some value. The complete information about a particular phone number in the database represents a record, Record are two types fixed length or valuable length records and variable length record.\n',
                    ),
                    TextSpan(
                      text: '\n3.Files - ',
                      style: GoogleFonts.notoSerif(fontSize: 16.5, fontWeight: FontWeight.w700,color: const Color(0xffE52521)),
                    ),
                    const TextSpan(
                      text:
                          'A file is a collection of related records. Generally, all the records in a file are of same size and record type but it is not always true. The records in a file may be of fixed length or variable length depending upon the size of the records contained in a file.    \n',
                    ),
                    TextSpan(
                      text: '\nDatabase Management System(DBMS) - ',
                      style: GoogleFonts.notoSerif(fontSize: 16.5, fontWeight: FontWeight.w700,color: const Color(0xffE52521)),
                    ),
                    const TextSpan(
                      text:
                          'is the software package used to define,create, use, and maintain a database.It typically consists of several software odules,each with their own functionality.  Popular DBMS vendors are Oracle,Microsoft,and IBM.MySQL is a well-known open-source DBMS.The combination of a DBMS an dadatabase is then often called a database system\n',
                    ),
                    TextSpan(
                      text:
                          '\nFile-based approach or Traditional file system\n',
                      style: GoogleFonts.notoSerif(fontSize: 18, fontWeight: FontWeight.w900,color: const Color(0xffE52521)),
                    ),
                    const TextSpan(
                      text:
                          '\n• In the early days of computing, every application stored its data into its own dedicated files. This is known as a file- based approach or traditional file system and is illustrated in Figure 1.1.  \n',
                    ),
                    TextSpan(
                      text: '\nDisadvantages of Traditional File System\n',
                      style: GoogleFonts.notoSerif(fontSize: 18, fontWeight: FontWeight.w900,color: const Color(0xffE52521)),
                    ),
                    const TextSpan(
                      text:
                          '\n1. Data Redundancy \n2. Data inconsistency \n3. Lack of Data Integration \n4. Program Dependence \n5. Data dependence \n6. Limited Data Sharing \n7. Poor Data Control \n8. Problem of Security \n9. Data Manipulation Capability is Inadequate \n10. Needs Excessive Programing\n',
                    ),
                    TextSpan(
                      text: '\nAdvantage of Database Approach\n',
                      style: GoogleFonts.notoSerif(fontSize: 18, fontWeight: FontWeight.w900,color: const Color(0xffE52521)),
                    ),
                    const TextSpan(
                      text:
                          '\n1. Controlled redundancy \n2. Data consistency \n3. Program data independence \n4. Sharing of data \n5. Enforcement of standards \n6. Improved data integrity \n7. Improved security \n8. Data access is efficient \n9. Conflicting requirements can be balanced\n10. Improved backup and recovery facility \n11. Minimal program maintenance \n12. Data quality is high \n13. Good data accessibility and responsiveness \n14. Concurrency control \n15. Economical to scale \n16. Increased programmer productivity\n',
                    ),
                    TextSpan(
                      text: '\nDisadvantages of Database Systems\n',
                      style: GoogleFonts.notoSerif(fontSize: 18, fontWeight: FontWeight.w900,color: const Color(0xffE52521)),
                    ),
                    const TextSpan(
                      text:
                          '\n1. Complexity increases \n2. Requirements of more disk space \n3. Additional cost of hardware \n4. Cost of conversion \n5. Need of additional and specialized manpower \n6. Need for backup and recovery \n7. Organizational conflict \n8. More installation and management cost\n',
                    ),
                    TextSpan(
                      text: '\nDatabase Model versus Instances\n',
                      style: GoogleFonts.notoSerif(fontSize: 18, fontWeight: FontWeight.w900,color: const Color(0xffE52521)),
                    ),
                    const TextSpan(
                      text:
                          '\nThe Database Model or Database schema -provides the description of the database data at different levels of detail and specifies the various data items,their characteristics,and relationships,constraints,storage details,etc.It is specified during database design and is not expected to change frequently.It is stored in the catalog,which is the heart of the DBMS  \n',
                    ),
                    const TextSpan(
                      text:
                          '\n•  The following are examples of data definitions that are an essential part of the database model stored in the catalog.  \n',
                    ),
                    const TextSpan(
                      text:
                          '\n Student (number,name, address,email)\n Course (number,name)\n Building (number,address)\n',
                    ),
                    const TextSpan(
                      text:
                          '\nThe database state then represents the datain the database at a particular moment.It is sometimes also called the current set of instances.Depending upon datamanipulations,such as adding,updating,or removing data,it typically changes on an ongoing basis.  \n',
                    ),
                    const TextSpan(
                      text:
                          '\nA database model comprises different data models,each describing the data from different perspectives.A good data model is the start of every successful database application. It provides a clear and unambiguous description of the data items, their relationship,and various data constraints from a particular perspective\n',
                    ),
                    TextSpan(
                      text: '\n Types of Data Model\n',
                      style: GoogleFonts.notoSerif(fontSize: 18, fontWeight: FontWeight.w900,color: const Color(0xffE52521)),
                    ),
                    const TextSpan(
                      text:
                          '\n• A conceptual data model provides a high-level description of the data items (e.g.,supplier,product)with their characteristics(e.g.,supplier name, product number)and relationships(e.g., a supplier can supply products). \n',
                    ),
                    const TextSpan(
                      text:
                          '\nA logical data model is a translation or mapping of the conceptual data model toward a specific implementation environment. The logical data model can be mapped to an internal data model that represents the data’s physical storage details.It clearly describes which data are stored where,in what format,which indexes are provided to speed up retrieval. \n',
                    ),
                    const TextSpan(
                      text:
                          '\nThe external data model contains various subsets of the data items in thelogical model,also called views,tailored toward the needs of specific applications or groups of users \n',
                    ),
                    TextSpan(
                      text: '\nThe Three Layer Architecture\n',
                      style: GoogleFonts.notoSerif(fontSize: 18, fontWeight: FontWeight.w900,color: const Color(0xffE52521)),
                    ),
                    TextSpan(
                      text: '\n1. Conceptual/logical layer - ',
                      style: GoogleFonts.notoSerif(fontSize: 16.5, fontWeight: FontWeight.w700,color: const Color(0xffE52521)),
                    ),
                    const TextSpan(
                      text:
                          'Here,the conceptual and logical data models.Both focus on the data items,their characteristics,and relationships without bothering too much about the actual physical DBMS implementation\n',
                    ),
                    TextSpan(
                      text: '\n2. External Layer - ',
                      style: GoogleFonts.notoSerif(fontSize: 16.5, fontWeight: FontWeight.w700,color: const Color(0xffE52521)),
                    ),
                    const TextSpan(
                      text:
                          'It has the external data model,which includes views offering a window on a carefully selected part of the logical data model.A view describes the part of the database that a particular application or user group is interested in,hiding the rest of the database.\n',
                    ),
                    TextSpan(
                      text: '\n3. Internal Layer - ',
                      style: GoogleFonts.notoSerif(fontSize: 16.5, fontWeight: FontWeight.w700,color: const Color(0xffE52521)),
                    ),
                    const TextSpan(
                      text:
                          'includes the internal datamodel,which specifie show the data are stored or organized physically.Ideally,changes in one layer should have no to minimal impact on the others. \n',
                    ),
                    TextSpan(
                      text: '\nCatalog - ',
                      style: GoogleFonts.notoSerif(fontSize: 16.5, fontWeight: FontWeight.w700,color: const Color(0xffE52521)),
                    ),
                    const TextSpan(
                      text:
                          ' The catalog is the heart of the DBMS.It contains the data definitions,or metadata,of your database application.It stores the definitions of the views,logical and internal databmodels,and synchronizes these three data models to ensure their consistency\n',
                    ),
                    TextSpan(
                      text: '\nDatabase Users \n',
                      style: GoogleFonts.notoSerif(fontSize: 18, fontWeight: FontWeight.w900,color: const Color(0xffE52521)),
                    ),
                    TextSpan(
                      text: '\n3. Internal Layer - ',
                      style: GoogleFonts.notoSerif(fontSize: 16.5, fontWeight: FontWeight.w700,color: const Color(0xffE52521)),
                    ),
                    const TextSpan(
                      text:
                          '\n•Information Architect – He/she designs the conceptual datamodel. He/she closely interacts with the business user to make sure the data requirements are fully understood and modeled. \n',
                    ),
                    TextSpan(
                      text: '\n•DatabaseDesigner – ',
                      style: GoogleFonts.notoSerif(fontSize: 16.5, fontWeight: FontWeight.w700,color: const Color(0xffE52521)),
                    ),
                    const TextSpan(
                      text:
                          'He/she translates the conceptual data model into a logical and internal data model. \n',
                    ),
                    TextSpan(
                      text: '\n•Database Administrator (DBA) – ',
                      style: GoogleFonts.notoSerif(fontSize: 16.5, fontWeight: FontWeight.w700,color: const Color(0xffE52521)),
                    ),
                    const TextSpan(
                      text:
                          "He/she is responsible for the implementation and monitoring of the database He/she sets up the database infrastructure and continously monitors it's performance by inspecting key performance indicatos such as respons times, though put rates, and storage space consumed.\n",
                    ),
                    TextSpan(
                      text: '\n•Application Developer – ',
                      style: GoogleFonts.notoSerif(fontSize: 16.5, fontWeight: FontWeight.w700,color: const Color(0xffE52521)),
                    ),
                    const TextSpan(
                      text:
                          'He/she develops database applications in a general purpose programming language such as Java or Python. He/she provides the data requirements, which are then translated by the database designer or DBA into view definitions. \n',
                    ),
                    TextSpan(
                      text: '\n•End users – ',
                      style: GoogleFonts.notoSerif(fontSize: 16.5, fontWeight: FontWeight.w700,color: const Color(0xffE52521)),
                    ),
                    const TextSpan(
                      text:
                          'He/she will run these applications to perform specific database operations. He/she can also directly query the database using interactive querying facilities for reporting purposes. \n',
                    ),
                    TextSpan(
                      text: '\nDatabase Languages \n',
                      style: GoogleFonts.notoSerif(fontSize: 18, fontWeight: FontWeight.w900,color: const Color(0xffE52521)),
                    ),
                    TextSpan(
                      text: '\n•Data Definition Language (DDL) – ',
                      style: GoogleFonts.notoSerif(fontSize: 16.5, fontWeight: FontWeight.w700,color: const Color(0xffE52521)),
                    ),
                    const TextSpan(
                      text:
                          'used by the DBA to express the database’s external,logical,and internal datamodels.These definitions are stored in the catalog\n',
                    ),
                    TextSpan(
                      text: '\n•Data Manipulation Language(DML) – ',
                      style: GoogleFonts.notoSerif(fontSize: 16.5, fontWeight: FontWeight.w700,color: const Color(0xffE52521)),
                    ),
                    const TextSpan(
                      text:
                          'used to retrieve,insert,delete,and modify data. DML statements can be embedded in a general-purpose programming language,or entered interactively through a front-end querying tool\n',
                    ),
                  ],
                ),
              ),
              const SizedBox(height: 10), // Adding margin on top of the button
            ],
          ),
        ),
      ),
    );
  }
}
