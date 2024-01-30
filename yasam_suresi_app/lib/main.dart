import 'package:flutter/material.dart';
import 'package:yasam_suresi_app/input_page.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        appBarTheme: AppBarTheme(color: Colors.lightBlue[300]),
        scaffoldBackgroundColor: Colors.lightBlue[300],
      ),
      debugShowCheckedModeBanner: false,
      title: 'Material App',
      home: Scaffold(
        appBar: AppBar(
          centerTitle: true,
          title: const Text('BEKLENEN YAŞAM SÜRESİ'),
        ),
        body: InputPage(),
      ),
    );
  }
}

