import 'package:flutter/material.dart';
import 'package:myapp/features/daily_news/presentation/pages/home/daily_news.dart';
import 'package:myapp/injection_container.dart';

void main() {
  initializeDependencies();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'News App',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const DailyNews(),
    );
  }
}

