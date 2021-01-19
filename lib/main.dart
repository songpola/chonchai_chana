import 'package:chonchai_chana/constants.dart';
import 'package:chonchai_chana/widgets/symptom_card.dart';
import 'package:expansion_card/expansion_card.dart';
import 'file:///D:/_Dev/_Flutter/chonchai_chana/lib/widgets/my_header.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:google_fonts/google_fonts.dart';

void main() {
  runApp(MainApp());
}

class MainApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'ชลชายชนะ',
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
                  CovidInfoItem(
                    title: "ต้นกำเนิดของไวรัส",
                    info:
                        "• ต้นตอของไวรัสน่าจะมาจากการที่ไวรัสจากสัตว์ตัวกลางระบาดมาสู่คน\n"
                        "• ผู้ป่วยรายแรกเท่ากันที่ทราบกัน เริ่มมีอาการตั้งแต่ 1 ธันวาคม และไม่มีความเชื่อมโยงกับตลาดต้องสงสัยในเมืองอู่ฮั่น ประเทศจีน แต่ผู้ป่วยหลายรายอาจมีมาตั้งแต่ช่วงกลางเดือนพฤศจิกายนหรือก่อนหน้านั้น\n"
                        "• มีการเก็บตัวอย่างจากสิ่งแวดล้อมในตลาดไปส่งตรวจและพบเชื้อไวรัสและพบมากที่สุดในบริเวณที่ค้าสัตว์ป่าและสัตว์เลี้ยงในฟาร์ม\n"
                        "• ตลาดอาจเป็นต้นกำเนิดของไวรัส หรืออาจมีบทบาทในการขยายวงของการระบาดในระยะเริ่มแรก\n"
                        "• การเพิ่มจำนวนของไวรัสเกิดขึ้นในระบบทางเดินหายใจส่วนบนและในปอด มีงานวิจัยในช่วงแรกระบุว่า การเพิ่มจำนวนของไวรัสได้ในระบบทางเดินอาหาร แต่การติดต่อโดยระบบทางเดินอาหารยังไม่เป็นที่ยืนยัน\n"
                        "• ช่วงพีคของการแพร่เชื้อน่าจะเกิดขึ้นในช่วงแรกที่แสดงอาการและลดลงหลังจากนั้น\n"
                        "• การแพร่เชื้อก่อนแสดงอาการอาจเกิดขึ้นได้ อย่างไรก็ตาม หากไม่มีอาการไอ(กลไกหลักในการขับไวรัสออกมา) อาจจำกัดการแพร่เชื้อในช่วงนั้น\n",
                  ),
                  CovidInfoItem(
                    title: "เหตุการณ์ระบาดเป็นวงกว้าง",
                    info:
                        "เหตุการณ์ระบาดเป็นวงกว้างเกิดเมื่อคนหนึ่งคนแพร่เชื้อไวรัสไปสู่คนกลุ่มใหญ่ผิดปกติ สถานการณ์ที่จะทวีความรุนแรงของการระบาดเป็นวงกว้างรวมถึง\n"
                        "• การชุมนุมขนาดใหญ่\n"
                        "• ประชากรสูงอายุ\n"
                        "• ประชากรไร้ถิ่นฐาน\n"
                        "• การสัมผัสโรคจากต่างประเทศ\n"
                        "• ความหนาแน่นของเขตเมือง\n"
                        "• ระบบสาธารณสุขไม่เข็มแข็ง\n"
                        "• รัฐบาลขาดความโปร่งใส\n"
                        "• สื่อขาดเสรีภาพ",
                  ),
                  CovidInfoItem(
                    title: "มาตรการทางสาธารณสุข",
                    info:
                        "• การกักกัน คือ การจำกัดกิจกรรมต่างๆหรือการแยกผู้ที่ไม่ป่วย แต่อาจมีประวัติส้มผัสใกล้ชิดกับผู้ป่วยโควิด 19 จุดประสงค์คือเพื่อป้องกันการแพร่ระบาดของโรคในห้วงเวลาที่คนเริ่มมีอาการ\n"
                        "• การแยกกัก หมายถึง การแยกผู้ป่วยที่มีอาการของโรคโควิด 19 และอาจแพร่เชื้อได้ จึงทำเพื่อป้องกันการแพร่ระบาดของโรค\n"
                        "• การเว้นระยะ คือ การอยู่ห่างกันและกัน องค์การอนามัยโลกแนะนำให้เว้นระยะอย่าง 1 เมตรจากผู้อื่น ส่วนนี้เป็นมาตรการทั่วไปที่ทุกคนควรทำถึงแม้ว่าจะแข็งแรง\n"
                        "• การติดตามผู้สัมผัสโรค ทำเพื่อระบุหาคนที่อาจมีประวัติสัมผัสโรคเพื่อที่จะแยกกักออกไปโดยเร็ว",
                  ),
                  CovidInfoItem(
                    title: "ลักษณะจำเพาะของโรค",
                    info: "อัตราการแพร่เชื้อและความรุนแรง\n"
                        "1.	Basic Reproductive Rate(RO) คือ ค่าเฉลี่ยที่ผู้ป่วย 1 คน จะแพร่เชื้อให้ผู้อื่นในกลุ่มประชากรที่มีความไวต่อการรับเชื้อ ค่า RO ของโรคโควิด 19 อยู่ประมาณ 2 และ 4\n"
                        "2.	Clinical Onset Interval คือ ช่วงเวลาแสดงอาการในผู้ป่วยรายต่อๆ กันในห่วงโซ่ของการแพร่ระบาด ในงานวิจัยส่วนใหญ่ เวลาเฉลี่ยอยู่ที่ 4 และ 5 วัน\n"
                        "3.	Case Fatality Ratio (CFR) หรืออัตราการเสียชีวิต คือ สัดส่วนของผู้ป่วยที่ถึงแก่ชีวิตอัตราคร่าวๆของทั่วโลกอยู่ที่ 7% (ธันวาคม 2019-พฤษฎาคม 2020)",
                  ),
                  CovidInfoItem(
                    title: "กลุ่มเสี่ยง",
                    info:
                        "1. เสี่ยงต่ำ งานวิจัยระบุว่า เด็กและคนหนุ่มสาวติดเชื้อและแพร่เชื้อได้ อย่างไรก็ตามเด็กมักจะไม่มีอาการรุนแรง\n"
                        "2. เสี่ยงสูง ความเสี่ยงต่ออาการรุนแรงของโรคเพิ่มตามอายุและในผู้ที่มีโรคประจำตัว เช่น ความดันโลหิตสูง ดรคเบาหวาน โรคหลอดเลือดหัวใจ โรคระบบทางเดินหายใจเรื้อรังและโรคมะเร็ง",
                  ),
                  CovidInfoItem(
                    title: "ภูมิคุ้มกัน",
                    info: "1. ระยะสั้น\n"
                        "(a) ลดลงอย่างต่อเนื่อง\n"
                        "(b) ผู้ป่วยอาจยังแพร่เชื้อได้แม้มีอาการดีขึ้น สิ่งนี้มีนัยสำคัญต่อการควบคุมป้องกันโรคในบริบทสถานพยาบาลและในการจำหน่ายผู้ป่วย ผู้ป่วยบางรายยังคงต้องแยกกักตัวเองต่อที่บ้านหลังจากได้รับการจำหน่ายแล้ว\n"
                        "\n"
                        "2. ระยะยาว\n"
                        "(a) ขณะนี้ ยังไม่มีหลักฐานเพียงพอเกี่ยวกับประสิทธิภาพหรือระยะเวลาของภูมิคุ้มกันที่สร้างจากสารแอนติบอดี้ที่จะรับประกันความเที่ยงตรงของสิ่งที่เรียกว่า “พาสปอร์ตภูมิคุ้มกัน” หรือ “ใบรับประกันว่าไม่มีความเสี่ยง”\n"
                        "(b) มีข้อกังวลว่า ผู้คนอาจเข้าใจว่าตนเองมีภูมิคุ้มกันต่อการติดเชื้อครั้งที่สอง และละเลยการปฎิบัติตามคำแนะนำทางสุขภาพ ซึ่งอาจเป็นการเพิ่มความเสี่ยงให้เกิดการระบาดต่อเนื่อง\n"
                        "\n"
                        "ภูมิคุ้มกัน คือ สารแอนติบอดี้ต้านเชื้อโควิด 19 (ทั้ง IgG และ IgM) จะปรากฏขึ้น 6 ถึง 12 วันนับจากเริ่มแสดงอาการ หลังจากนั้น เชื้อไวรัสจะค่อยๆลดลงอย่างต่อเนื่อง ผู้ป่วยอาจยังแพร่เชื้อได้แม้มีอาการดีขึ้นและยังคงต้องแยกตัวเองต่อที่บ้านหลังจากได้รับการจำหน่ายแล้ว",
                  ),
                  CovidInfoItem(
                    title: "การตรวจ",
                    info:
                        "ไม่มีการตรวจโควิด 19 ชนิดใดได้รับการขึ้นทะเบียน ยกเว้นภายใต้ข้อกำหนดการใช้ในสภาวะฉุกเฉินเท่านั้น ทุกประเภทกำลังอยู่ระหว่างการประเมิน\n"
                        "1.	Nucleic Acid Amplification Test (NAATs) ใช้เพื่อตรวจวินิจฉัยการติดเชื้อ (ว่าตรวจพบไวรัสหรือไม่) ในระยะเฉียบพลันของโรค การตรวจเทคนิคนี้ใช้เวลาระหว่าง 13 นาทีถึง 3 ชั่วโมง และจำหน่ายมีอุปกรณ์เครื่องมือเฉพาะ\n"
                        "2.	การตรวจหาแอนติบอดี้ ด้วยการสร้างภูมิคุ้มกันจะใช้ตรวจหาแอนติบอดี้ IgM และ IgG ที่สร้างขึ้นมาต้านไวรัส ไม่มีประโยชน์ในการวินิจฉัยโรคเนื่องจากการตอบสนองของร่างกายไม่สามารถตรวจพบได้ในสัปดาห์แรกของการเจ็บป่วยการตรวจใช้เวลา 15 นาที และสามารถใช้ตรวจว่าใครเคยติดเชื้อมาก่อนการศึกษาในระดับประชากรด้วยเทคนิคตรวจแอนติบอดี้ขณะนี้ทำอยู่ใน 6 ประเทศ\n"
                        "3.	การตรวจหาแอนติเจน ใช้ตรวจหาแอนติเจนของไวรัสและอาจเป็นประโยชน์ในการวินิจฉัยการติดเชื้อฉับพลัน การพัฒนาชุดตรวจทำอยู่ในหลายประเทศ",
                  ),
                  CovidInfoItem(
                    title: "การรักษา",
                    info:
                        "ขณะนี้ยังไม่มียาต้านไวรัสที่ได้รับการขึ้นทะเบียนให้ใช้รักษาโรคโควิด 19 แต่มีการทำวิจัยเพื่อพิจารณาว่ามียาตัวใดบ้างที่จะปรับวัตถุประสงค์การใช้เดิมเพื่อการรักษาโรคโควิด 19\n"
                        "\n"
                        "องค์การอนามัยโลกกำลังประสานงานร่วมมือในโครงการขนาดใหญ่ชื่อ Solidarity Trial ในหลายประเทศเพื่อประเมินยา/สูตรการรักษา 4 ชนิด ดังนี้\n"
                        "1.	Remdesivir เดิมพัฒนาขึ้นเพื่ออีดบลา\n"
                        "2.	Lopinavir/Ritonavir การผสมกันของยาต้านเอชไอวี\n"
                        "3.	Lopinavir/Ritonavir + Interferon Beta ซึ่งมีคุณสมบัติต้านไวรัส\n"
                        "4.	Choloroquine ยาต้านมาลาเรียที่มีคุณสมบัติต้านไวรัส",
                  ),
                  CovidInfoItem(
                    title: "มาตรการระดับบุคคล",
                    info:
                        "1. การรักษาสุขอนามัยของมือและมารยาทใน การไอ/จามเป็นสิ งสําคัญที่ ควรทํา ตลอดเวลาและเป็นวิธีที่ดีที่ สุดที่จะป้องกัน ตัวเองและผู้อื่น\n"
                        "2. เมื่อเป็นไปได้รักษาระยะอย่างน้อย 1 เมตร จากผู้อื่ น เนื่องจากผู้ติดเชื้อบางรายอาจ ยังไม่แสดงอาการหรือมีอาการไม่รุนแรง ดังนั้ นการเว้นระยะห่างจากทุกคนสําคัญ มากหากคุณอยู่ในพื้นที่ ที่มีการระบาดของ โรคโควิด19",
                  ),
                  CovidInfoItem(
                    title: "ผลกระทบทางเศรษฐกิจและสังคม",
                    info:
                        "• การระบาดไปทั่วในวงกว้างของโรคโควิด 19 และวิกฤตทางเศรษฐกิจที่เชื่อมโยงกับสถาณการณ์นี้ทำให้เกิดความท้าทายใหญ่หชวงในระดับโลกและระดับท้องถิ่น\n"
                        "• ผลกระทบทางสุขภาพ เศรษฐกิจและสังคมเกิดขึ้นกับกลุ่มคนทุกกลุ่ม แต่บ่อนทำลายกลุ่มประชากรเปราะบางมากที่สุด ซึ่งรวมถึง คนยากจน ผู้สูงอายุ ผู้พิการ เยาวชน และกลุ่มคนชาติพันธุ์\n"
                        "• วิกฤตทางโรคระบาดและเศรษฐกิจกระทบต่อกลุ่มประชากรเปราะบางอย่างไม่เป็นธรรม ซึ่งอาจจุดชนวนให้เกิดความไม่เท่าเทียมดันและความยากจนมากขึ้น\n"
                        "• วิกฤตโลกในครั้งนี้ต้องการประสารงาน ความเป็นอันหนึ่งอันเดียวกัน และ นโยบายทางเศรษฐกิจ สังคมและสาธารณสุขที่มีประสิทธิภาพ",
                  ),
                  Container(
                    padding: const EdgeInsets.symmetric(vertical: 32.0),
                    child: Text(
                      "อ้างอิง:\n"
                      "https://www.who.int/thailand/emergencies/novel-coronavirus-2019/q-a-on-covid-19",
                    ),
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}

class CovidInfoItem extends StatelessWidget {
  final String title;
  final String info;

  const CovidInfoItem({
    Key key,
    this.title,
    this.info,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: ExpansionCard(
        leading: Icon(Icons.info_outline, color: Colors.black),
        title: Container(
          child: Text(
            title,
            style: Theme.of(context).textTheme.headline5,
          ),
        ),
        children: [
          Divider(
            indent: 16.0,
            endIndent: 16.0,
            height: 16.0,
            color: Colors.blue,
            thickness: 3.0,
          ),
          Container(
            padding: const EdgeInsets.only(left: 24.0),
            child: Text(
              info,
            ),
          ),
        ],
      ),
    );
  }
}
