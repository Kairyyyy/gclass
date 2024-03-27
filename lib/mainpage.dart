import 'package:flutter/material.dart';
import 'package:gclass/AboutUs.dart';
import 'package:gclass/DBMS.dart';
import 'package:gclass/ITE4.dart';


class MainPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Main Page'),
      ),
      body: Container(
        margin: EdgeInsets.all(20), // Set the margin around the container
        child: ListView(
          shrinkWrap: true, // Set shrinkWrap to true
          children: [
            SizedBox(
              width: double.infinity,
              height: 60, // Set the desired height for the button
              child: ElevatedButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => DBMSPage()),
                  );
                },
                child: Text('DBMS', style: TextStyle(fontSize: 20)),
              ),
            ),
            SizedBox(height: 20), // Add some vertical space between buttons
            SizedBox(
              width: double.infinity,
              height: 60, // Set the desired height for the button
              child: ElevatedButton(
                onPressed: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => ITE4page()),
                  );
                },
                child: Text('ITE 4', style: TextStyle(fontSize: 20)),
              ),
            ),
            SizedBox(height: 20), // Add some vertical space between buttons
            SizedBox(
              width: double.infinity,
              height: 60, // Set the desired height for the button
              child: ElevatedButton(
                onPressed: () {
                  // Handle About Us button press
                  // Navigate to the About Us page or perform any other action
                },
                child: Text('Quizzes', style: TextStyle(fontSize: 20)),
              ),
            ),
            SizedBox(height: 20), // Add some vertical space between buttons
            SizedBox(
              width: double.infinity,
              height: 60, // Set the desired height for the button
              child: ElevatedButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => AboutUsPage()),
                  );
                },
                child: Text('About Us', style: TextStyle(fontSize: 20)),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
