import 'package:flutter/material.dart';
import 'package:nepal_travel/screens/places_screen.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          spacing: 8,
          children: [
            Text('Welcome to travel app', style: TextStyle(fontSize: 24)),
            GestureDetector(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (ctx) => PlacesScreen()),
                );
              },
              child: Text('Go to places'),
            ),
          ],
        ),
      ),
    );
  }
}
