import 'package:flutter/material.dart';

void main() {
  runApp(FunFactsApp());
}

class FunFactsApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Fun Fact about me',
      home: FunFactsHome(),
    );
  }
}

class FunFactsHome extends StatefulWidget {
  @override
  _FunFactsHomeState createState() => _FunFactsHomeState();
}

class _FunFactsHomeState extends State<FunFactsHome> {
  int _counter = 0;
  String _fact = "Tap the button to reveal a fun fact";

  final List<String> _facts = [
    "I am very lazy at doing housework.",
    "I do my best work at the last moment.",
    "I can give my best when required.",
    "I have curly hair.",
    "I have baby nails.",
  ];

  void _showFact() {
    setState(() {
      _fact = _facts[_counter % _facts.length];
      _counter++;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Fun Fact About Me"),
        backgroundColor: Colors.teal,
      ),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              CircleAvatar(
                radius: 60,
                backgroundImage: NetworkImage(
                    'https://images.unsplash.com/photo-1503023345310-bd7c1de61c7d'), // Replaced with valid image link
              ),
              SizedBox(height: 20),
              Text(
                "Hi, I'm Dua!",
                style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
              ),
              SizedBox(height: 20),
              Text(
                _fact,
                style: TextStyle(fontSize: 18),
                textAlign: TextAlign.center,
              ),
              SizedBox(height: 20),
              ElevatedButton(
                onPressed: _showFact,
                child: Text("Show Fun Fact"),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
