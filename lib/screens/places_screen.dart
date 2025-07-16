import 'package:flutter/material.dart';
import 'package:nepal_travel/models/place.dart';

class PlacesScreen extends StatefulWidget {
  const PlacesScreen({super.key});

  @override
  State<PlacesScreen> createState() => _PlacesScreenState();
}

class _PlacesScreenState extends State<PlacesScreen> {
  final List<Place> _allPlaces = [
    Place(
      title: 'Pokhara',
      description:
          "It's a very nice place to visit. Places like fewa lake and others.",
    ),
    Place(
      title: 'Kathmandu',
      description:
          "There are places like Pashupatinath temple, dharahara, Bouddhanath temple",
    ),
    Place(title: 'Lumbini', description: "Birth place of Gautam Buddha"),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView.builder(
        itemCount: _allPlaces.length,
        itemBuilder: (context, index) {
          final place = _allPlaces[index];
          return Container(
            margin: EdgeInsets.all(8),
            padding: EdgeInsets.symmetric(horizontal: 12, vertical: 10),
            decoration: BoxDecoration(
              border: Border.all(),
              borderRadius: BorderRadius.circular(8),
            ),
            child: Text(place.title),
          );
        },
      ),
    );
  }
}
