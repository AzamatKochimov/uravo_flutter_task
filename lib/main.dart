import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:test_uravo/src/main/pages/main_page.dart';
import 'package:test_uravo/src/search/controllers/search_provider.dart';

void main() {
  runApp(
    ChangeNotifierProvider(
      create: (_) => SearchProvider(),
      child: const MyApp(),
    ),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const MainPage(),
    );
  }
}