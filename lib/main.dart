import 'package:flutter/material.dart';
import 'package:nightlamp_flutter/screens/living_home_page.dart';

void main() {
  runApp(const NightLampApp());
}

class NightLampApp extends StatelessWidget {
  const NightLampApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Night lamp',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      debugShowCheckedModeBanner: false,
      home: const LivingHomePage(),
    );
  }
}

