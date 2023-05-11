import 'package:flutter/material.dart';

void main() => runApp(FeedbackApp());

class FeedbackApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Feedback App',
      home: FeedbackForm(),
    );
  }
}

class FeedbackForm extends StatefulWidget {
  @override
  _FeedbackFormState createState() => _FeedbackFormState();
}

class _FeedbackFormState extends State<FeedbackForm> {
  String _feedback = '';

  void _submitFeedback() {
    // Perform action with feedback data, e.g. send feedback to a server
    print('Feedback submitted: $_feedback');
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Feedback Form'),
      ),
      body: Container(
        padding: EdgeInsets.all(16.0),
        child: Column(
          children: [
            Text(
              'Please provide your feedback:',
              style: TextStyle(fontSize: 18.0),
            ),
            SizedBox(height: 16.0),
            TextField(
              onChanged: (value) {
                setState(() {
                  _feedback = value;
                });
              },
              maxLines: 4,
              decoration: InputDecoration(
                border: OutlineInputBorder(),
              ),
            ),
            SizedBox(height: 16.0),
            ElevatedButton(
              onPressed: _submitFeedback,
              child: Text('Submit'),
            ),
          ],
        ),
      ),
    );
  }
}
