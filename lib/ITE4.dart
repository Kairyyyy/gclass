import 'package:flutter/material.dart';

class ITE4page extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('ITE 4'),
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
                // Handle Lesson 1 button press
              },
              child: Text('Lesson 1'),
            ),
            ElevatedButton(
              onPressed: () {
                // Handle Lesson 2 button press
              },
              child: Text('Lesson 2'),
            ),
            ElevatedButton(
              onPressed: () {
                // Handle Lesson 3 button press
              },
              child: Text('Lesson 3'),
            ),
            ElevatedButton(
              onPressed: null, // Disabling Lesson 4 button
              child: Text('Lesson 4'),
            ),
            ElevatedButton(
              onPressed: null, // Disabling Lesson 5 button
              child: Text('Lesson 5'),
            ),
          ],
        ),
      ),
    );
  }
}
