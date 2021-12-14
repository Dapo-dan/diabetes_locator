import 'package:flutter/material.dart';
import 'package:diabetes_locator_app/screen/google_map_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Diabetes locator app',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const HomePage(),
    );
  }
}

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Abstract'),
      ),
      body: Center(
        child: Container(
          padding: const EdgeInsets.fromLTRB(20,20,20,20),
          child: const Text(
              'The purpose of this application is to check the number of diabetic patients in Nigerian states. It was done using flutter and Google Maps API for the location',
              style: TextStyle(
                letterSpacing: 2.0,
                  fontSize: 30,
                  fontWeight: FontWeight.bold
              ),
            ),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () => Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => GoogleMapScreen(),
            )),
        tooltip: 'Google Map',
        child: const Icon(Icons.add_location_outlined),
      ),
    );
  }
}

