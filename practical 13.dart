import 'package:flutter/material.dart';
import 'package:geolocator/geolocator.dart';
import 'package:permission_handler/permission_handler.dart';

class Lab13 extends StatelessWidget {
  const Lab13({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Location Button',
      home: LocationButton(),
      debugShowCheckedModeBanner: false,
    );
  }
}

class LocationButton extends StatefulWidget {
  @override
  _LocationButtonState createState() => _LocationButtonState();
}

class _LocationButtonState extends State<LocationButton> {
  String _location = 'Tap the button to get location';

  Future<void> _getLocation() async {
    final status = await Permission.location.request();

    if (status.isGranted) {
      try {
        Position position = await Geolocator.getCurrentPosition(
          desiredAccuracy: LocationAccuracy.high,
        );

        setState(() {
          _location =
              'Latitude: ${position.latitude}, Longitude: ${position.longitude}';
        });
      } catch (e) {
        setState(() {
          _location = 'Failed to get location: $e';
        });
      }
    } else {
      setState(() {
        _location = 'Location permission denied';
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Lab 13: Hardware Interaction in Flutter',
          style: TextStyle(fontSize: 18),
        ),
      ),
      body: Center(
        child: ElevatedButton(
          onPressed: _getLocation,
          child: Padding(
            padding: const EdgeInsets.all(12.0),
            child: Text(
              _location,
              textAlign: TextAlign.center,
            ),
          ),
        ),
      ),
    );
  }
}
