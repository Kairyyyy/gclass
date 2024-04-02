import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Lesson3ContentPage extends StatelessWidget {
  const Lesson3ContentPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Lesson 3',
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
                'Conceptual Modeling using the E/R',
                style: GoogleFonts.cabin(fontSize: 28, fontWeight: FontWeight.w900, color: const Color(0xffE52521)),
              ),
              const SizedBox(height: 5),
              RichText(
                text: TextSpan(
                  style: GoogleFonts.notoSerif(fontSize: 16.5, color: Colors.black), // Default style
                  children: [
                    TextSpan(
                      text: '\n• Entity-relationship (E-R) ',
                      style: GoogleFonts.notoSerif(fontSize: 17.5, fontWeight: FontWeight.w900, color: const Color(0xffE52521)),
                    ),
                    const TextSpan(
                      text: 'model was introduced by Chen in 1976. He described the main constructs of the E-R model i.e., entities, relationships and their associated attributes.\n',
                    ),
                    const TextSpan(
                      text: '   - Entity refers to an “object” or “thing” in real world. Object may be any person, place, event etc.\n',
                    ),
                    TextSpan(
                      text: '\n–Attributes: ',
                      style: GoogleFonts.notoSerif(fontSize: 17.5, fontWeight: FontWeight.w900, color: const Color(0xffE52521)),
                    ),
                    TextSpan(
                      text: 'are the characteristics of anyentity.\n',
                    ),
                    TextSpan(
                      text: '–Value ',
                      style: GoogleFonts.notoSerif(fontSize: 17.5, fontWeight: FontWeight.w900, color: const Color(0xffE52521)),
                    ),
                    TextSpan(
                      text: 'is the information or data which is stored in attributes of any entity. All the entities having same attributes makean entity set.\n',
                    ),
                    TextSpan(
                      text:
                      '–Domain or value set ',
                      style: GoogleFonts.notoSerif(fontSize: 17.5, fontWeight: FontWeight.w900, color: const Color(0xffE52521)),
                    ),
                    const TextSpan(
                      text: 'is the set of all values or information about any attribute.\n',
                    ),
                    TextSpan(
                      text:
                      '\nTypes of Attributes\n',
                      style: GoogleFonts.notoSerif(fontSize: 22, fontWeight: FontWeight.w900, color: const Color(0xffE52521)),
                    ),
                    TextSpan(
                      text: '\nSimple and Composite Attributes',
                      style: GoogleFonts.notoSerif(fontSize: 17.5, fontWeight: FontWeight.w900, color: const Color(0xffE52521)),
                    ),
                    const TextSpan(
                      text:
                      '\n -Simple Attributes are those which cannot be divided into subparts.\n -Composite Attributes are those which can be divided into subparts\n',
                    ),
                    TextSpan(
                      text: '\nSingle Valued and Multi-valued Attributes',
                      style: GoogleFonts.notoSerif(fontSize: 17.5, fontWeight: FontWeight.w900, color: const Color(0xffE52521)),
                    ),
                    TextSpan(
                      text:
                      '\n\nSingle Valued Attribute : ',
                      style: GoogleFonts.notoSerif(fontSize: 16, fontWeight: FontWeight.w900, color: const Color(0xffE52521)),
                    ),
                    const TextSpan(
                      text:
                      'An attribute having only single value for a particular entity is known as single value attribute.',
                    ),
                    TextSpan(
                      text:
                      '\nMulti-Valued Attributes : ',
                      style: GoogleFonts.notoSerif(fontSize: 16, fontWeight: FontWeight.w900, color: const Color(0xffE52521)),
                    ),
                    const TextSpan(
                      text:
                      'An attribute having more than one possible value for a particular entity is known as multi-valued attribute \n',
                    ),
                    TextSpan(
                      text: '\nDerived Attributes and Stored Attributes\n',
                      style: GoogleFonts.notoSerif(fontSize: 17.5, fontWeight: FontWeight.w900, color: const Color(0xffE52521)),
                    ),
                    TextSpan(
                      text:
                      '\nDerived Attributes : ',
                      style: GoogleFonts.notoSerif(fontSize: 16, fontWeight: FontWeight.w900, color: const Color(0xffE52521)),
                    ),
                    const TextSpan(
                      text:
                      'An attribute that can be derived from other known attributes is known as derived attribute.',
                    ),
                    TextSpan(
                      text:
                      '\nStored Attributes : ',
                      style: GoogleFonts.notoSerif(fontSize: 16, fontWeight: FontWeight.w900, color: const Color(0xffE52521)),
                    ),
                    const TextSpan(
                      text:
                      'An attribute which cannot be derived by other known attributes is known as stored attribute\n',
                    ),
                    TextSpan(
                      text: '\nRelationship Sets\n',
                      style: GoogleFonts.notoSerif(fontSize: 22, fontWeight: FontWeight.w900, color: const Color(0xffE52521)),
                    ),
                    TextSpan(
                      text:
                      '\nRelationship\n',
                      style: GoogleFonts.notoSerif(fontSize: 17.5, fontWeight: FontWeight.w900, color: const Color(0xffE52521)),
                    ),
                    const TextSpan(
                      text: 'A relationship is the association among several entities. It connects different entities through a meaningful relation\n',
                    ),
                    TextSpan(
                      text: '\nRelationship Set',
                      style: GoogleFonts.notoSerif(fontSize: 17.5, fontWeight: FontWeight.w900, color: const Color(0xffE52521)),
                    ),
                    const TextSpan(
                      text:
                      '\nA relationship set is a set of relationships of the same type\n',
                    ),
                    TextSpan(
                      text:
                      '\nDegree of Relationship Sets\n',
                      style: GoogleFonts.notoSerif(fontSize: 22, fontWeight: FontWeight.w900, color: const Color(0xffE52521)),
                    ),
                    TextSpan(
                      text: '\nBinary Relationship Set\n',
                      style: GoogleFonts.notoSerif(fontSize: 17.5, fontWeight: FontWeight.w900, color: const Color(0xffE52521)),
                    ),
                    const TextSpan(
                      text:
                      'A relationship set in which only two entity sets are involved is known as binary relationship set.\n',
                    ),
                    TextSpan(
                      text: '\nTernary Relationship Set\n',
                      style: GoogleFonts.notoSerif(fontSize: 17.5, fontWeight: FontWeight.w900, color: const Color(0xffE52521)),
                    ),
                    const TextSpan(
                      text:
                      'A relationship set in which three entity sets are involved is known as ternary relationship set or a relationship set having degree three.\n',
                    ),
                    TextSpan(
                      text:
                      '\nRole and Recursive Relationship Set\n',
                      style: GoogleFonts.notoSerif(fontSize: 22, fontWeight: FontWeight.w900, color: const Color(0xffE52521)),
                    ),
                    TextSpan(
                      text: '\nRole : ',
                      style: GoogleFonts.notoSerif(fontSize: 16, fontWeight: FontWeight.w900, color: const Color(0xffE52521)),
                    ),
                    const TextSpan(
                      text: 'function of any entity which it plays in relationship set is called that entity’s role.\n',
                    ),
                    TextSpan(
                      text:
                      '\nRecursive Relationship Set : ',
                      style: GoogleFonts.notoSerif(fontSize: 16, fontWeight: FontWeight.w900, color: const Color(0xffE52521)),
                    ),
                    const TextSpan(
                      text:
                      'When the same entity sets participate in same relationship set more than once with different roles each time, then this type of recursive relationship set is known as Recursive Relationship set\n',
                    ),
                    TextSpan(
                      text: '\nKeys\n',
                      style: GoogleFonts.notoSerif(fontSize: 22, fontWeight: FontWeight.w900, color: const Color(0xffE52521)),
                    ),
                    const TextSpan(
                      text:
                      '\nA key is an attribute or set of attributes that is used to identify data in entity sets. The attributes which are used as key are known as key attributes. Rest of all are known as Non-key attributes.\n– Super Key : A super key is a set ofcollection of one or more than one attributes that can identify data uniquely.\n– Candidate Key : The minimal super key is known as candidate key. Consider a super key and then take all of its proper subsets \n- Primary Key: An attribute which identifies data uniquely is known as Primary Key. OR The term Primary Key is used to denote Candidate key. Any entity set can have more than one Candidate key but only one Primary Key. \n-Alternate Keys : All the candidate keys other than Primary Key are known as Alternate Keys. \n- Secondary Key : An attribute or set of attributes which doesn’t identify data uniquely but identifies a group of data is known as secondary key. \n- Foreign Key : A foreign key is an attribute in any entity set which is also a Primary Key in any other entity set.\n',
                    ),
                    TextSpan(
                      text: '\nEntity/Relationship Modelling\n',
                      style: GoogleFonts.notoSerif(fontSize: 18, fontWeight: FontWeight.w900, color: const Color(0xffE52521)),
                    ),
                    const TextSpan(
                      text:
                      'E/R Modelling is used for conceptual design – Entities - objects or items of interest – Attributes - facts about, or properties of, an entity\n',
                    ),
                    TextSpan(
                      text: '\nEntity/Relationship Diagrams\n',
                      style: GoogleFonts.notoSerif(fontSize: 18, fontWeight: FontWeight.w900, color: const Color(0xffE52521)),
                    ),
                    const TextSpan(
                      text:
                      'E/R Models are often represented as E/R diagrams that – Give a conceptual view of the database – Are independent of the choice of DBMS – Can identify some problems in a design\n',
                    ),
                    TextSpan(
                      text: '\nEntities\n',
                      style: GoogleFonts.notoSerif(fontSize: 18, fontWeight: FontWeight.w900, color: const Color(0xffE52521)),
                    ),
                    const TextSpan(
                      text:
                      'Entities represent objects or things of interest – Physical things like students, lecturers, employees, products – More abstract things like modules, orders, courses,  projects\n',
                    ),
                    TextSpan(
                      text:
                      '\nDiagramming Entities\n',
                      style: GoogleFonts.notoSerif(fontSize: 18, fontWeight: FontWeight.w900, color: const Color(0xffE52521)),
                    ),
                    const TextSpan(
                      text:
                      'In an E/R Diagram, an entity is usually drawn as a box with rounded corners The box is labelled with the name of the class of objects represented by that entity\n',
                    ),
                    TextSpan(
                      text:
                      '\nAttributes\n',
                      style: GoogleFonts.notoSerif(fontSize: 18, fontWeight: FontWeight.w900, color: const Color(0xffE52521)),
                    ),
                    const TextSpan(
                      text:
                      'Attributes are facts, aspects, properties, or details about an entity – Students have IDs, names, courses, addresses, ... – Modules have codes, titles, credit weights, levels, ...\n',
                    ),
                    TextSpan(
                      text:
                      '\nDiagramming Attributes\n',
                      style: GoogleFonts.notoSerif(fontSize: 18, fontWeight: FontWeight.w900, color: const Color(0xffE52521)),
                    ),
                    const TextSpan(
                      text: 'In an E/R Diagram attributes may be drawn as ovals Each attribute is linked to its entity by a line The name of the attribute is written in the oval\n',
                    ),
                    TextSpan(
                      text:
                      '\nDiagramming Relationships\n',
                      style: GoogleFonts.notoSerif(fontSize: 18, fontWeight: FontWeight.w900, color: const Color(0xffE52521)),
                    ),
                    const TextSpan(
                      text: 'Relationships are links between two entities bThe name is given in a diamond box bThe ends of the link show cardinality\n',
                    ),
                    TextSpan(
                      text:
                      '\nMaking E/R Models\n',
                      style: GoogleFonts.notoSerif(fontSize: 18, fontWeight: FontWeight.w900, color: const Color(0xffE52521)),
                    ),
                    const TextSpan(
                      text:
                      '\nTo make an E/R model you need to identify\n – Entities\n  – Attributes\n – Relationships\n – Cardinality ratios General guidelines\n – Since entities are things or objects they are often nouns in the description\n  – Attributes are facts or properties, and so are often nouns also\n – Verbs often describe relationships between entities \n',
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