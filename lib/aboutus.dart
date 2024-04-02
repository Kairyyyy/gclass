import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class AboutUsPage extends StatelessWidget {
  const AboutUsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'About Us',
          style: GoogleFonts.dongle(fontSize: 30, color: Colors.white),
        ),
        iconTheme: const IconThemeData(color: Colors.white),
        backgroundColor: const Color(0xff2c0000),
      ),
      body: SingleChildScrollView(
        child: Container(
          color: const Color(0xff420000),
          child: Padding(
            padding: const EdgeInsets.only(top: 0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                const SizedBox(height: 20), // Adjust top margin
                Text(
                  'Group D',
                  style: GoogleFonts.pressStart2p(fontSize: 24, color: Colors.white),
                ),
                const SizedBox(height: 20), // Spacer between title and cards
                _buildMemberCard(
                  context,
                  'MagnoPage',
                  'Kairy Ken\n(Programmer)',
                  'assetsimages/magno.jpg',
                ),
                _buildMemberCard(
                  context,
                  'CardelPage',
                  'Carrel John\n(Designer/Documentor)',
                  'assetsimages/cardel.jpg',
                ),
                _buildMemberCard(
                  context,
                  'ChengPage',
                  'Jeric Cheng\n(Designer 2/Lesson Provider)',
                  'assetsimages/cheng.jpg',
                ),
                _buildMemberCard(
                  context,
                  'GeuelPage',
                  'Geuel Lei\n(Lesson Provider)',
                  'assetsimages/geuel.jpg',
                ),
                _buildMemberCard(
                  context,
                  'GaryPage',
                  'Gary\n(Lesson Provider)',
                  'assetsimages/gary.jpg',
                ),
                _buildMemberCard(
                  context,
                  'SosaPage',
                  'Tristan\n(Lesson Provider)',
                  'assetsimages/sosa.jpg',
                ),
                const SizedBox(height: 20), // Add bottom margin
              ],
            ),
          ),
        ),
      ),
    );
  }

  Widget _buildMemberCard(BuildContext context, String routeName, String memberDetails, String imagePath) {
    return GestureDetector(
      onTap: () {
        switch(routeName) {
          case 'MagnoPage':
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => const MagnoPage()),
            );
            break;
          case 'CardelPage':
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => const CardelPage()),
            );
            break;
          case 'ChengPage':
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => const ChengPage()),
            );
            break;
          case 'GeuelPage':
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => const GeuelPage()),
            );
            break;
          case 'GaryPage':
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => const GaryPage()),
            );
            break;
          case 'SosaPage':
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => const SosaPage()),
            );
            break;
          default:
          // Do nothing
            break;
        }
      },
      child: Container(
        margin: const EdgeInsets.only(bottom: 20), // Adjust margin at the bottom of each card
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20), // Add left and right padding
          child: Card(
            elevation: 5,
            color: const Color.fromRGBO(255, 255, 255, 0.6),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(15),
            ),
            child: Padding(
              padding: const EdgeInsets.all(12.0),
              child: Row(
                children: [
                  SizedBox(
                    width: 100,
                    height: 100,
                    child: ElevatedButton(
                      onPressed: () {}, // No need for onPressed here
                      style: ElevatedButton.styleFrom(
                        shape: const CircleBorder(),
                        padding: EdgeInsets.zero,
                      ),
                      child: Container(
                        decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          image: DecorationImage(
                            image: AssetImage(imagePath),
                            fit: BoxFit.cover,
                          ),
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(width: 20),
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          memberDetails.split('\n')[0], // Extracting name part
                          style: GoogleFonts.play(fontSize: 23, height: 1.0, color: Colors.black, fontWeight: FontWeight.bold), // Make name text bold
                        ),
                        Text(
                          memberDetails.split('\n')[1], // Extracting role part
                          style:  GoogleFonts.play(fontSize: 16, height: 1.0, color: Colors.black), // Make role text smaller
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}

class MagnoPage extends StatelessWidget {
  const MagnoPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'About Us',
          style: GoogleFonts.dongle(fontSize: 30, color: Colors.white),
        ),
        iconTheme: const IconThemeData(color: Colors.white),
        backgroundColor: const Color(0xff2c0000),
      ),
      body: SingleChildScrollView(
        child: Container(
          color: const Color(0xff420000),
          width: MediaQuery.of(context).size.width,
          height: MediaQuery.of(context).size.height,
          padding: const EdgeInsets.symmetric(vertical: 20),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Text(
                'GROUP 4',
                style: GoogleFonts.pressStart2p(fontSize: 24, color: Colors.white),
              ),
              const SizedBox(height: 20),
              const Padding(
                padding: EdgeInsets.all(8.0),
                child: CircleAvatar(
                  radius: 80, // Adjust the radius as needed
                  backgroundImage: AssetImage('assetsimages/magno.jpg'),
                ),
              ),
              const SizedBox(height: 20),
              Text(
                'Kairy Ken A. Magno',
                style: GoogleFonts.dongle(fontSize: 45.0, height: 1.0, color: Colors.white),
              ),
              Text(
                '(Programmer)',
                style: GoogleFonts.dongle(fontSize: 30.0, height: -0.0009, color: Colors.white),
              ),
              const SizedBox(height: 50),
              Center(
                child: SizedBox(
                  width: MediaQuery.of(context).size.width * 0.9, // Adjust width as needed
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      SizedBox(
                        width: double.infinity,
                        child: Container(
                          decoration: BoxDecoration(
                            color: Colors.white.withOpacity(0.6),
                            borderRadius: BorderRadius.circular(20), // Apply border radius
                          ),
                          padding: const EdgeInsets.all(10.0),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Text(
                                'Basic Information:',
                                style: GoogleFonts.dongle(fontSize: 35.0, fontWeight: FontWeight.bold),
                              ),
                              Text(
                                'Age: 20 y/o',
                                style: GoogleFonts.dongle(fontSize: 25, height: 1 ,color: Colors.black),
                              ),
                              Text(
                                'Birthday: February 14, 2004',
                                style: GoogleFonts.dongle(fontSize: 25, height: 1 , color: Colors.black),
                              ),
                              Text(
                                'Gender: Male',
                                style: GoogleFonts.dongle(fontSize: 25, height: 1 , color: Colors.black),
                              ),
                              const SizedBox(height: 10),
                            ],
                          ),
                        ),
                      ),
                      const SizedBox(height: 20),
                      SizedBox(
                        width: double.infinity,
                        child: Container(
                          decoration: BoxDecoration(
                            color: Colors.white.withOpacity(0.6),
                            borderRadius: BorderRadius.circular(20), // Apply border radius
                          ),
                          padding: const EdgeInsets.all(10.0),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Text(
                                'Skills/Strenghts:',
                                style: GoogleFonts.dongle(fontSize: 35.0, fontWeight: FontWeight.bold),
                              ),
                              Text(
                                'Hard Working',
                                style: GoogleFonts.dongle(fontSize: 25, height: 1 , color: Colors.black),
                              ),
                              Text(
                                'Perseverance',
                                style: GoogleFonts.dongle(fontSize: 25, height: 1 , color: Colors.black),
                              ),
                              Text(
                                'Smart',
                                style: GoogleFonts.dongle(fontSize: 25, height: 1 , color: Colors.black),
                              ),
                              Text(
                                'Responsible',
                                style: GoogleFonts.dongle(fontSize: 25, height: 1 , color: Colors.black),
                              ),
                              Text(
                                'Time Management',
                                style: GoogleFonts.dongle(fontSize: 25, height: 1 , color: Colors.black),
                              ),
                              const SizedBox(height: 10),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class CardelPage extends StatelessWidget {
  const CardelPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'About Us',
          style: GoogleFonts.dongle(fontSize: 30, color: Colors.white),
        ),
        iconTheme: const IconThemeData(color: Colors.white),
        backgroundColor: const Color(0xff2c0000),
      ),
      body: SingleChildScrollView(
        child: Container(
          color: const Color(0xff420000),
          width: MediaQuery.of(context).size.width,
          height: MediaQuery.of(context).size.height,
          padding: const EdgeInsets.symmetric(vertical: 20),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Text(
                'GROUP 4',
                style: GoogleFonts.pressStart2p(fontSize: 24, color: Colors.white),
              ),
              const SizedBox(height: 20),
              const Padding(
                padding:  EdgeInsets.all(8.0),
                child: CircleAvatar(
                  radius: 80, // Adjust the radius as needed
                  backgroundImage: AssetImage('assetsimages/cardel.jpg'),
                ),
              ),
              const SizedBox(height: 20),
              Text(
                'Carrel John E. Buenaventura',
                style: GoogleFonts.dongle(fontSize: 32.0, height: 1.0, color: Colors.white),
              ),
              Text(
                '(Designer/Documentator)',
                style: GoogleFonts.dongle(fontSize: 25.0, height: -0.0009, color: Colors.white),
              ),
              const SizedBox(height: 50),
              Center(
                child: SizedBox(
                  width: MediaQuery.of(context).size.width * 0.9, // Adjust width as needed
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      SizedBox(
                        width: double.infinity,
                        child: Container(
                          decoration: BoxDecoration(
                            color: Colors.white.withOpacity(0.6),
                            borderRadius: BorderRadius.circular(20), // Apply border radius
                          ),
                          padding: const EdgeInsets.all(10.0),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Text(
                                'Basic Information:',
                                style: GoogleFonts.dongle(fontSize: 35.0, fontWeight: FontWeight.bold),
                              ),
                              Text(
                                'Age: 20 y/o',
                                style: GoogleFonts.dongle(fontSize: 25, height: 1 ,color: Colors.black),
                              ),
                              Text(
                                'Birthday: December 09, 2003',
                                style: GoogleFonts.dongle(fontSize: 25, height: 1 , color: Colors.black),
                              ),
                              Text(
                                'Gender: Male',
                                style: GoogleFonts.dongle(fontSize: 25, height: 1 , color: Colors.black),
                              ),
                              const SizedBox(height: 10),
                            ],
                          ),
                        ),
                      ),
                      const SizedBox(height: 20),
                      SizedBox(
                        width: double.infinity,
                        child: Container(
                          decoration: BoxDecoration(
                            color: Colors.white.withOpacity(0.6),
                            borderRadius: BorderRadius.circular(20), // Apply border radius
                          ),
                          padding: const EdgeInsets.all(10.0),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Text(
                                'Skills/Strenghts:',
                                style: GoogleFonts.dongle(fontSize: 35.0, fontWeight: FontWeight.bold),
                              ),
                              Text(
                                'Communication Skills',
                                style: GoogleFonts.dongle(fontSize: 25, height: 1 , color: Colors.black),
                              ),
                              Text(
                                'Confidence',
                                style: GoogleFonts.dongle(fontSize: 25, height: 1 , color: Colors.black),
                              ),
                              Text(
                                'Tactful',
                                style: GoogleFonts.dongle(fontSize: 25, height: 1 , color: Colors.black),
                              ),
                              Text(
                                'Responsible',
                                style: GoogleFonts.dongle(fontSize: 25, height: 1 , color: Colors.black),
                              ),
                              Text(
                                'Time Management',
                                style: GoogleFonts.dongle(fontSize: 25, height: 1 , color: Colors.black),
                              ),
                              const SizedBox(height: 10),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class ChengPage extends StatelessWidget {
  const ChengPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'About Us',
          style: GoogleFonts.dongle(fontSize: 30, color: Colors.white),
        ),
        iconTheme: const IconThemeData(color: Colors.white),
        backgroundColor: const Color(0xff2c0000),
      ),
      body: SingleChildScrollView(
        child: Container(
          color: const Color(0xff420000),
          width: MediaQuery.of(context).size.width,
          height: MediaQuery.of(context).size.height,
          padding: const EdgeInsets.symmetric(vertical: 20),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Text(
                'GROUP 4',
                style: GoogleFonts.pressStart2p(fontSize: 24, color: Colors.white),
              ),
              const SizedBox(height: 20),
              const Padding(
                padding:  EdgeInsets.all(8.0),
                child: CircleAvatar(
                  radius: 80, // Adjust the radius as needed
                  backgroundImage: AssetImage('assetsimages/cheng.jpg'),
                ),
              ),
              const SizedBox(height: 20),
              Text(
                'Jeric Daniel B. Cheng',
                style: GoogleFonts.dongle(fontSize: 45.0, height: 1.0, color: Colors.white),
              ),
              Text(
                '(Designer2/Lesson Provider)',
                style: GoogleFonts.dongle(fontSize: 30.0, height: -0.0009, color: Colors.white),
              ),
              const SizedBox(height: 50),
              Center(
                child: SizedBox(
                  width: MediaQuery.of(context).size.width * 0.9, // Adjust width as needed
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      SizedBox(
                        width: double.infinity,
                        child: Container(
                          decoration: BoxDecoration(
                            color: Colors.white.withOpacity(0.6),
                            borderRadius: BorderRadius.circular(20), // Apply border radius
                          ),
                          padding: const EdgeInsets.all(10.0),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Text(
                                'Basic Information:',
                                style: GoogleFonts.dongle(fontSize: 35.0, fontWeight: FontWeight.bold),
                              ),
                              Text(
                                'Age: 20 y/o',
                                style: GoogleFonts.dongle(fontSize: 25, height: 1 ,color: Colors.black),
                              ),
                              Text(
                                'Birthday: april 12, 2003',
                                style: GoogleFonts.dongle(fontSize: 25, height: 1 , color: Colors.black),
                              ),
                              Text(
                                'Gender: Male',
                                style: GoogleFonts.dongle(fontSize: 25, height: 1 , color: Colors.black),
                              ),
                              const SizedBox(height: 10),
                            ],
                          ),
                        ),
                      ),
                      const SizedBox(height: 20),
                      SizedBox(
                        width: double.infinity,
                        child: Container(
                          decoration: BoxDecoration(
                            color: Colors.white.withOpacity(0.6),
                            borderRadius: BorderRadius.circular(20), // Apply border radius
                          ),
                          padding: const EdgeInsets.all(10.0),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Text(
                                'Skills/Strenghts:',
                                style: GoogleFonts.dongle(fontSize: 35.0, fontWeight: FontWeight.bold),
                              ),
                              Text(
                                'Knowledgeable',
                                style: GoogleFonts.dongle(fontSize: 25, height: 1 , color: Colors.black),
                              ),
                              Text(
                                'Connections',
                                style: GoogleFonts.dongle(fontSize: 25, height: 1 , color: Colors.black),
                              ),
                              Text(
                                'Hard Working',
                                style: GoogleFonts.dongle(fontSize: 25, height: 1 , color: Colors.black),
                              ),
                              Text(
                                'Communication Skill',
                                style: GoogleFonts.dongle(fontSize: 25, height: 1 , color: Colors.black),
                              ),
                              const SizedBox(height: 10),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class GeuelPage extends StatelessWidget {
  const GeuelPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'About Us',
          style: GoogleFonts.dongle(fontSize: 30, color: Colors.white),
        ),
        iconTheme: const IconThemeData(color: Colors.white),
        backgroundColor: const Color(0xff2c0000),
      ),
      body: SingleChildScrollView(
        child: Container(
          color: const Color(0xff420000),
          width: MediaQuery.of(context).size.width,
          height: MediaQuery.of(context).size.height,
          padding: const EdgeInsets.symmetric(vertical: 20),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Text(
                'GROUP 4',
                style: GoogleFonts.pressStart2p(fontSize: 24, color: Colors.white),
              ),
              const SizedBox(height: 20),
              const Padding(
                padding:  EdgeInsets.all(8.0),
                child: CircleAvatar(
                  radius: 80, // Adjust the radius as needed
                  backgroundImage: AssetImage('assetsimages/geuel.jpg'),
                ),
              ),
              const SizedBox(height: 20),
              Text(
                'Geuel Lei A. Cabello',
                style: GoogleFonts.dongle(fontSize: 45.0, height: 1.0, color: Colors.white),
              ),
              Text(
                '(Lesson Provider)',
                style: GoogleFonts.dongle(fontSize: 30.0, height: -0.0009, color: Colors.white),
              ),
              const SizedBox(height: 50),
              Center(
                child: SizedBox(
                  width: MediaQuery.of(context).size.width * 0.9, // Adjust width as needed
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      SizedBox(
                        width: double.infinity,
                        child: Container(
                          decoration: BoxDecoration(
                            color: Colors.white.withOpacity(0.6),
                            borderRadius: BorderRadius.circular(20), // Apply border radius
                          ),
                          padding: const EdgeInsets.all(10.0),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Text(
                                'Basic Information:',
                                style: GoogleFonts.dongle(fontSize: 35.0, fontWeight: FontWeight.bold),
                              ),
                              Text(
                                'Age: 20 y/o',
                                style: GoogleFonts.dongle(fontSize: 25, height: 1 ,color: Colors.black),
                              ),
                              Text(
                                'Birthday: August 25, 2003',
                                style: GoogleFonts.dongle(fontSize: 25, height: 1 , color: Colors.black),
                              ),
                              Text(
                                'Gender: Male',
                                style: GoogleFonts.dongle(fontSize: 25, height: 1 , color: Colors.black),
                              ),
                              const SizedBox(height: 10),
                            ],
                          ),
                        ),
                      ),
                      const SizedBox(height: 20),
                      SizedBox(
                        width: double.infinity,
                        child: Container(
                          decoration: BoxDecoration(
                            color: Colors.white.withOpacity(0.6),
                            borderRadius: BorderRadius.circular(20), // Apply border radius
                          ),
                          padding: const EdgeInsets.all(10.0),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Text(
                                'Skills/Strenghts:',
                                style: GoogleFonts.dongle(fontSize: 35.0, fontWeight: FontWeight.bold),
                              ),
                              Text(
                                'Communication Skills',
                                style: GoogleFonts.dongle(fontSize: 25, height: 1 , color: Colors.black),
                              ),
                              Text(
                                'Time Management',
                                style: GoogleFonts.dongle(fontSize: 25, height: 1 , color: Colors.black),
                              ),
                              Text(
                                'Resource Producer',
                                style: GoogleFonts.dongle(fontSize: 25, height: 1 , color: Colors.black),
                              ),
                              const SizedBox(height: 10),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class GaryPage extends StatelessWidget {
  const GaryPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'About Us',
          style: GoogleFonts.dongle(fontSize: 30, color: Colors.white),
        ),
        iconTheme: const IconThemeData(color: Colors.white),
        backgroundColor: const Color(0xff2c0000),
      ),
      body: SingleChildScrollView(
        child: Container(
          color: const Color(0xff420000),
          width: MediaQuery.of(context).size.width,
          height: MediaQuery.of(context).size.height,
          padding: const EdgeInsets.symmetric(vertical: 20),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Text(
                'GROUP 4',
                style: GoogleFonts.pressStart2p(fontSize: 24, color: Colors.white),
              ),
              const SizedBox(height: 20),
              const Padding(
                padding:  EdgeInsets.all(8.0),
                child: CircleAvatar(
                  radius: 80, // Adjust the radius as needed
                  backgroundImage: AssetImage('assetsimages/gary.jpg'),
                ),
              ),
              const SizedBox(height: 20),
              Text(
                'Gary Gabayno',
                style: GoogleFonts.dongle(fontSize: 45.0, height: 1.0, color: Colors.white),
              ),
              Text(
                '(Lesson Provider)',
                style: GoogleFonts.dongle(fontSize: 30.0, height: -0.0009, color: Colors.white),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class SosaPage extends StatelessWidget {
  const SosaPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'About Us',
          style: GoogleFonts.dongle(fontSize: 30, color: Colors.white),
        ),
        iconTheme: const IconThemeData(color: Colors.white),
        backgroundColor: const Color(0xff2c0000),
      ),
      body: SingleChildScrollView(
        child: Container(
          color: const Color(0xff420000),
          width: MediaQuery.of(context).size.width,
          height: MediaQuery.of(context).size.height,
          padding: const EdgeInsets.symmetric(vertical: 20),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Text(
                'GROUP 4',
                style: GoogleFonts.pressStart2p(fontSize: 24, color: Colors.white),
              ),
              const SizedBox(height: 20),
              const Padding(
                padding:  EdgeInsets.all(8.0),
                child: CircleAvatar(
                  radius: 80, // Adjust the radius as needed
                  backgroundImage: AssetImage('assetsimages/sosa.jpg'),
                ),
              ),
              const SizedBox(height: 20),
              Text(
                'Tristan Sosa',
                style: GoogleFonts.dongle(fontSize: 45.0, height: 1.0, color: Colors.white),
              ),
              Text(
                '(Lesson Provider)',
                style: GoogleFonts.dongle(fontSize: 30.0, height: -0.0009, color: Colors.white),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
