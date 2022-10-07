import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:single_screens/bookmarks/bookmark_page.dart';
import 'package:single_screens/models/movie_model.dart';
import 'package:single_screens/movie_listing.dart';
import 'package:single_screens/welcome.dart';
import 'package:device_preview/device_preview.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Hive.initFlutter();
  Hive.registerAdapter(MovieAdapter());
  await Hive.openBox<Movie>('Movies');

  runApp(
    DevicePreview(
      enabled: !kReleaseMode,
      builder: (context) => const MyApp(), // Wrap your app
    ),
    //const MyApp()
  );
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      useInheritedMediaQuery: true,
      locale: DevicePreview.locale(context),
      builder: DevicePreview.appBuilder,
      debugShowCheckedModeBanner: false,
      home: const BookmarkPage(),
    );
  }
}
