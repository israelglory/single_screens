import 'package:flutter/material.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:single_screens/models/movie_model.dart';
import 'package:single_screens/movie_listing.dart';
import 'package:single_screens/welcome.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Hive.initFlutter();
  Hive.registerAdapter(MovieAdapter());
  await Hive.openBox<Movie>('Movies');

  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: MovieListing(),
    );
  }
}
