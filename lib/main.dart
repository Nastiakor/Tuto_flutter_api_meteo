import 'package:api_cours/views/HomeView.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:api_cours/services/ApiKeyService.dart';
import 'package:api_cours/services/LocationService.dart';

void main() {
  //Assurer l'init
  WidgetsFlutterBinding.ensureInitialized();
  //Vouloir uniquement en portrait
  SystemChrome.setPreferredOrientations([DeviceOrientation.portraitUp]);
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(primarySwatch: Colors.teal),
      debugShowCheckedModeBanner: false,
      home: HomeView(),
    );
  }
}
