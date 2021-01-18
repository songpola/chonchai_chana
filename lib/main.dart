import 'package:chonchai_chana/constants.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

void main() {
  runApp(MainApp());
}

class MainApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'ChonchaiChana',
      // theme: ThemeData(
      //   textTheme: GoogleFonts.mitrTextTheme(Theme.of(context).textTheme),
      //   backgroundColor: kBackgroundColor,
      //   scaffoldBackgroundColor: kBackgroundColor,
      //   appBarTheme: AppBarTheme(titleTextStyle: GoogleFonts.mitr()),
      // ),
      home: HomePage(title: 'ชลชายชนะ'),
      debugShowCheckedModeBanner: false,
    );
  }
}

class HomePage extends StatefulWidget {
  HomePage({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text(widget.title)),
      body: SafeArea(
        child: Center(
          child: Text("Hello, World!"),
        ),
      ),
    );
  }
}
