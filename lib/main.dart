import 'package:chonchai_chana/constants.dart';
import 'package:chonchai_chana/my_header.dart';
import 'package:flutter/cupertino.dart';
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
      theme: ThemeData(
        brightness: Brightness.dark,
        textTheme: GoogleFonts.mitrTextTheme(
          Theme.of(context).textTheme.copyWith(
                headline6: TextStyle(
                  color: Colors.white,
                  fontSize: 28.0,
                  fontWeight: FontWeight.w600,
                ),
                headline5: TextStyle(
                  color: Colors.black,
                  fontSize: 22.0,
                  fontWeight: FontWeight.w500,
                ),
                bodyText2: TextStyle(
                  color: Colors.black,
                  fontSize: 16.0,
                  fontWeight: FontWeight.normal,
                ),
              ),
        ),
        scaffoldBackgroundColor: kBackgroundColor,
      ),
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
      body: Column(
        children: [
          MyHeader(
            image: "assets/icons/DrCorona1.svg",
            textTop: "มารู้จัก โควิด-19",
            textBottom: "กันเถอะ",
          ),
          Container(
            padding: const EdgeInsets.symmetric(horizontal: 16.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Align(
                  alignment: Alignment.centerLeft,
                  child: Text(
                    "โรคโควิด 19 คืออะไร",
                    style: Theme.of(context).textTheme.headline5,
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 16.0),
                  child: Text(
                      "โรคโควิด 19 คือโรคติดต่อซึ่งเกิดจากไวรัสโคโรนาชนิดที่มีการค้นพบล่าสุด"
                      " ไวรัสและโรคอุบัติเหตุใหม่นึ้ไม่เป็นที่รู้จักเลยก่อนที่จะมีการระบาดในเมืองอู่ฮั่น ประเทศจีนในเดือนธันวาคม ปี 2019"
                      " ขณะนี้โรคโควิด 19 มีการระบาดไปทั่ว ส่งผลกระทบแก่หลายประเทศทั่วโลก"),
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
