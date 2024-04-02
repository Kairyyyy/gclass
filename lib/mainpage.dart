import 'package:flutter/material.dart';
import 'package:gclass/aboutus.dart';
import 'package:gclass/dbms.dart';
import 'package:gclass/ite4.dart';

class MainPage extends StatelessWidget {
  const MainPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Home',
          style: TextStyle(color: Colors.white),
        ),
        backgroundColor: const Color(0xffb64a06),
        iconTheme: const IconThemeData(color: Colors.white),
      ),
      body: Stack(
        children: [
          Container(
            decoration: const BoxDecoration(
              image: DecorationImage(
                image: AssetImage(
                    'assetsimages/homeBG.jpg'),
                fit: BoxFit.cover, // Adjust the image's fit as needed
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(20),
            child: ListView(
              shrinkWrap: true,
              children: [
                SizedBox(
                  height: 60, // Set the desired height for the button
                  child: ElevatedButton.icon(
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => const DBMSPage()),
                      );
                    },
                    style: ElevatedButton.styleFrom(
                      backgroundColor: const Color(0xffc8470d),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10), // Adjust the border radius as needed
                      ),
                    ),
                    icon: const Icon(
                        Icons.subject,
                        color: Colors.white
                      ), // Add an icon before the text
                    label: const Row(
                      mainAxisAlignment: MainAxisAlignment.start, // Align icon to the left
                      children: [
                        SizedBox(width: 10), // Add space between icon and text
                        Expanded(
                          child: Text('DBMS', style: TextStyle(fontSize: 20, color: Colors.white), textAlign: TextAlign.center), // Center-align text
                        ),
                        SizedBox(width: 40), // Add space between text and right edge
                      ],
                    ),
                  ),
                ),
                const SizedBox(height: 20),
                SizedBox(
                  height: 60, // Set the desired height for the button
                  child: ElevatedButton.icon(
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => const ITE4page()),
                      );
                    },
                    style: ElevatedButton.styleFrom(
                      backgroundColor: const Color(0xffc8470d),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10), // Adjust the border radius as needed
                      ),
                    ),
                    icon: const Icon(
                        Icons.subject,
                        color: Colors.white
                      ),
                    label: const Row(
                      mainAxisAlignment: MainAxisAlignment.start, // Align icon to the left
                      children: [
                        SizedBox(width: 10), // Add space between icon and text
                        Expanded(
                          child: Text('ITE 4', style: TextStyle(fontSize: 20, color: Colors.white), textAlign: TextAlign.center), // Center-align text
                        ),
                        SizedBox(width: 40), // Add space between text and right edge
                      ],
                    ),
                  ),
                ),
                const SizedBox(height: 20),
                SizedBox(
                  height: 60, // Set the desired height for the button
                  child: ElevatedButton.icon(
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => const AboutUsPage()),
                      );
                    },
                    style: ElevatedButton.styleFrom(
                      backgroundColor: const Color(0xffc8470d),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10), // Adjust the border radius as needed
                      ),
                    ),
                    icon: const Icon(
                        Icons.account_box,
                        color: Colors.white
                    ),
                    label: const Row(
                      mainAxisAlignment: MainAxisAlignment.start, // Align icon to the left
                      children: [
                        SizedBox(width: 10), // Add space between icon and text
                        Expanded(
                          child: Text('About Us', style: TextStyle(fontSize: 20, color: Colors.white), textAlign: TextAlign.center), // Center-align text
                        ),
                        SizedBox(width: 40), // Add space between text and right edge
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

