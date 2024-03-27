import 'package:flutter/material.dart';

class AboutUsPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('About Us'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text(
              'About Us Page',
              style: TextStyle(fontSize: 24.0),
            ),
            SizedBox(height: 20.0),
            ElevatedButton(
              onPressed: () {
                // Handle Button 1 press
              },
              child: Text('Button 1'),
            ),
            ElevatedButton(
              onPressed: () {
                // Handle Button 2 press
              },
              child: Text('Button 2'),
            ),
            ElevatedButton(
              onPressed: () {
                // Handle Button 3 press
              },
              child: Text('Button 3'),
            ),
            ElevatedButton(
              onPressed: () {
                // Handle Button 4 press
              },
              child: Text('Button 4'),
            ),
            ElevatedButton(
              onPressed: () {
                // Handle Button 5 press
              },
              child: Text('Button 5'),
            ),
            ElevatedButton(
              onPressed: () {
                // Handle Button 6 press
              },
              child: Text('Button 6'),
            ),
          ],
        ),
      ),
    );
  }
}
