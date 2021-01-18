import 'package:chonchai_chana/constants.dart';
import 'package:chonchai_chana/widgets/symptom_card.dart';
import 'file:///D:/_Dev/_Flutter/chonchai_chana/lib/widgets/my_header.dart';
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
                  fontSize: 24.0,
                  fontWeight: FontWeight.w600,
                ),
                headline5: TextStyle(
                  color: Colors.black,
                  fontSize: 20.0,
                  fontWeight: FontWeight.w500,
                ),
                bodyText2: TextStyle(
                  color: Colors.black,
                  fontSize: 16.0,
                  fontWeight: FontWeight.normal,
                ),
                caption: TextStyle(
                  color: Colors.black,
                  fontSize: 14.0,
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
      body: SingleChildScrollView(
        child: Column(
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
                      " ขณะนี้โรคโควิด 19 มีการระบาดไปทั่ว ส่งผลกระทบแก่หลายประเทศทั่วโลก",
                      style: Theme.of(context).textTheme.bodyText2,
                    ),
                  ),
                  Container(
                    alignment: Alignment.centerLeft,
                    padding: const EdgeInsets.symmetric(vertical: 16.0),
                    child: Text(
                      "อาการ",
                      style: Theme.of(context).textTheme.headline5,
                    ),
                  ),
                  Center(
                    child: Wrap(
                      crossAxisAlignment: WrapCrossAlignment.center,
                      spacing: 16.0,
                      runSpacing: 16.0,
                      alignment: WrapAlignment.spaceAround,
                      runAlignment: WrapAlignment.spaceAround,
                      children: [
                        SymptomCard(
                          image: "assets/images/headache.png",
                          title: "ปวดหัว",
                        ),
                        SymptomCard(
                          image: "assets/images/cough.png",
                          title: "ไอ",
                        ),
                        SymptomCard(
                          image: "assets/images/fever.png",
                          title: "มีไข้สูงกว่า 37.5 องศา",
                        ),
                      ],
                    ),
                  ),
                  Container(height: 80.0),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
