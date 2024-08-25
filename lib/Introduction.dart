import 'package:bac_2025/home.dart';
import 'package:flutter/material.dart';
import 'package:introduction_screen/introduction_screen.dart';
import 'package:shared_preferences/shared_preferences.dart';

class Introduction extends StatefulWidget {
  const Introduction({Key? key}) : super(key: key);

  @override
  _IntroductionState createState() => _IntroductionState();
}

class _IntroductionState extends State<Introduction> {
  @override
  Widget build(BuildContext context) {
    return Directionality(
      textDirection: TextDirection.rtl,
      child: Scaffold(
        body: IntroductionScreen(
          pages: pages,
          showSkipButton: true,
          skip: Text("تخطي",
              style: TextStyle(
                  fontWeight: FontWeight.bold,
                  color: Colors.white,
                  fontSize: 19)),
          next: Text("التالي",
              style: TextStyle(
                  fontWeight: FontWeight.bold,
                  color: Colors.white,
                  fontSize: 19)),
          done: Container(
            padding: EdgeInsets.only(right: 15, left: 15, top: 8, bottom: 8),
            decoration: BoxDecoration(
                color: Colors.white, borderRadius: BorderRadius.circular(10)),
            child: Text(
              "تعلم",
              style: TextStyle(fontSize: 17, fontWeight: FontWeight.bold),
            ),
          ),
          onDone: () async {
            final SharedPreferencesWithCache prefsWithCache =
                await SharedPreferencesWithCache.create(
              cacheOptions: const SharedPreferencesWithCacheOptions(
                // When an allowlist is included, any keys that aren't included cannot be used.
                allowList: <String>{'first'},
              ),
            );
            await prefsWithCache.setString("first", "yes");
            Navigator.of(context).push(MaterialPageRoute(
              builder: (context) {
                return FirstPage();
              },
            ));
          },
          globalBackgroundColor: Colors.green,
        ),
      ),
    );
  }
}

var pages = [
  pIntro("images/welcom.png", "تطبيق بكالوريا 2025",
      "  تطبيق عاون في الميدان الدراسي يساهم في المساعدة لتحضير لامتحان البكالوريا قابل للاستعمال من جميع التلاميذ الادبيين و العلميين"),
  pIntro("images/sujets.png", "المواضيع",
      "يحتوي التطبيق على مواضيع من سنة 2012 حتى 2024 مع امكانية رؤية الموضوع مع الحل في نفس الوقت "),
  pIntro("images/download.png", "التحميل",
      "ميزة تحميل المواضيع مع الحل متوفرة لدراسة بدون الاتصال بالانترنات"),
  pIntro(cImage, cTitle, cDesc)
];
var cImage = "images/calculaturi.png";
var cTitle = "الة حاسبة للمعدل";
var cDesc = "تتوفر الة حاسبة لحساب معدل البكالوريا لجميع الشعب";

PageViewModel pIntro(image, title, description) {
  return PageViewModel(
      titleWidget: Column(
        children: [
          Container(
            height: 400,
            margin: EdgeInsets.only(top: 50),
            child: Center(
              child: Image.asset(image, height: 500),
            ),
          ),
          Center(
            child: Text(title,
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 30,
                  fontWeight: FontWeight.bold,
                )),
          ),
          SizedBox(
            height: 8,
          ),
          Container(
            margin: EdgeInsets.only(right: 16),
            child: Text(
              description,
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
            ),
          ),
        ],
      ),
      body: "");
}
