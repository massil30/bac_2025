import 'package:bac_2025/calculatur.dart';
import 'package:bac_2025/data/falsafa.dart';
import 'package:bac_2025/data/gestion.dart';
import 'package:bac_2025/data/languages.dart';
import 'package:bac_2025/data/mathelam.dart';
import 'package:bac_2025/data/mt.dart';
import 'package:bac_2025/data/science.dart';
import 'package:bac_2025/ui/gradients.dart';
import 'package:bac_2025/widget/dialogue.dart';
import 'package:bac_2025/widget/drawer.dart';
import 'package:bac_2025/widget/mawadpage.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class FirstPage extends StatefulWidget {
  const FirstPage({Key? key}) : super(key: key);

  @override
  _FirstPageState createState() => _FirstPageState();
}

class _FirstPageState extends State<FirstPage> {
  var selectedIndex = 0;
  final GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey<ScaffoldState>();
  bool sbool = true;
  @override
  Widget build(BuildContext context) {
    return Form(
      child: Directionality(
        textDirection: TextDirection.rtl,
        child: Scaffold(
          key: _scaffoldKey,
          backgroundColor: background,
          drawer: drawer(background, textT, context),
          body: Container(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Container(
                  margin: EdgeInsets.only(bottom: 20),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      InkWell(
                          onTap: () {
                            _scaffoldKey.currentState!.openDrawer();
                          },
                          child: Container(
                              alignment: Alignment.centerRight,
                              margin: EdgeInsets.all(8),
                              child: Icon(
                                Icons.list,
                                size: 35,
                                color: textT,
                              ))),
                      Center(
                        child: Container(
                          alignment: Alignment.center,
                          child: Text(
                            "بكالوريا 2025",
                            style: TextStyle(
                                fontSize: 22,
                                fontWeight: FontWeight.bold,
                                fontFamily: 'Cairo',
                                color: textT),
                          ),
                        ),
                      ),
                      Container(
                        margin: EdgeInsets.only(left: 8),
                        child: Switch(
                          value: sbool,
                          onChanged: (value) {
                            setState(() {
                              // Change the color to a random color or a predefined color
                              background = background == Color(0xffF4F3F2)
                                  ? Color(0xff1E1F22)
                                  : Color(0xffF4F3F2);
                              sbool = sbool == true ? false : true;
                              textT = textT == Colors.black
                                  ? Colors.white
                                  : Colors.black;
                            });
                          },
                        ),
                      ),
                    ],
                  ),
                ),
                Container(
                  height: MediaQuery.of(context).size.height / 4.5,
                  width: MediaQuery.of(context).size.width / 2,
                  child: Image.asset("images/logo.png"),
                ),
                Container(
                  child: SingleChildScrollView(
                    child: Column(
                      children: [
                        InkWell(
                          onTap: () {
                            function(
                                context,
                                mathelam,
                                mawadPage(
                                    context,
                                    "الرياضيات",
                                    mathelemeMawad,
                                    mathelemeIconsMawad,
                                    mathelam,
                                    listaMawadi3Math,
                                    listaHololMath),
                                CalculaturPage(
                                  cho3ba: "الرياضيات",
                                  mawad: mathelemeMawadCal,
                                  mo3amilat: mathMoamilat,
                                  gradient: mathelam,
                                  mo3amilmada: mo3amil_Math,
                                ));
                          },
                          child: Container(
                            decoration: BoxDecoration(
                                boxShadow: [
                                  BoxShadow(
                                    color: Color(0xFF656565).withOpacity(0.15),
                                    blurRadius: 4.0,
                                    spreadRadius: 1.0,
                                    //           offset: Offset(4.0, 10.0)
                                  )
                                ],
                                gradient: LinearGradient(
                                    colors: [Color(0xff483EC8), Colors.purple]),
                                borderRadius: BorderRadius.circular(5)),
                            height: 50,
                            width: MediaQuery.of(context).size.width,
                            margin: EdgeInsets.only(
                                bottom: 10, left: 10, right: 10),
                            child: Center(
                                child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Container(
                                  margin: EdgeInsets.only(right: 8),
                                  child: Image.asset(
                                    "images/pi.png",
                                    height: 25,
                                  ),
                                ),
                                Text(
                                  "الرياضيات",
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontWeight: FontWeight.w100,
                                      fontFamily: "Cairo",
                                      fontSize: 20),
                                ),
                                SizedBox(
                                  width: 10,
                                )
                              ],
                            )),
                          ),
                        ),
                        InkWell(
                          onTap: () {
                            function(
                                context,
                                technique,
                                mawadPage(
                                    context,
                                    " تقني رياضي",
                                    mtMawad,
                                    mTIconsMawad,
                                    technique,
                                    listaMawadi3MT,
                                    listaHololMT),
                                CalculaturPage(
                                  cho3ba: "تقني رياضي",
                                  mawad: mtCalculatur,
                                  mo3amilat: mtMo3amilat,
                                  gradient: technique,
                                  mo3amilmada: mo3amil_Mt,
                                ));
                          },
                          child: Container(
                            decoration: BoxDecoration(
                                boxShadow: [
                                  BoxShadow(
                                    color: Color(0xFF656565).withOpacity(0.15),
                                    blurRadius: 4.0,
                                    spreadRadius: 1.0,
                                    //           offset: Offset(4.0, 10.0)
                                  )
                                ],
                                gradient: LinearGradient(colors: [
                                  const Color.fromARGB(255, 255, 160, 16),
                                  Colors.orange,
                                  Colors.orangeAccent
                                ]),
                                borderRadius: BorderRadius.circular(5)),
                            height: 50,
                            width: MediaQuery.of(context).size.width,
                            margin: EdgeInsets.only(
                                bottom: 10, left: 10, right: 10),
                            child: Center(
                                child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Container(
                                  margin: EdgeInsets.only(right: 8),
                                  child: Image.asset(
                                    "images/trisiti.png",
                                    height: 25,
                                  ),
                                ),
                                Text(
                                  "تقني رياضي",
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontWeight: FontWeight.w100,
                                      fontFamily: "Cairo",
                                      fontSize: 20),
                                ),
                                SizedBox(
                                  width: 10,
                                )
                              ],
                            )),
                          ),
                        ),
                        InkWell(
                          onTap: () {
                            function(
                                context,
                                science,
                                mawadPage(
                                    context,
                                    "العلوم التجريبية",
                                    scientistMawad,
                                    scientistIconsMawad,
                                    science,
                                    listaMawadi3Science,
                                    listaHololScience),
                                CalculaturPage(
                                  cho3ba: "علوم تجريبية",
                                  mawad: scienceCalculatur,
                                  mo3amilat: mo3amilatScience,
                                  gradient: science,
                                  mo3amilmada: mo3amil_Science,
                                ));
                          },
                          child: Container(
                            decoration: BoxDecoration(
                                boxShadow: [
                                  BoxShadow(
                                    color: Color(0xFF656565).withOpacity(0.15),
                                    blurRadius: 4.0,
                                    spreadRadius: 1.0,
                                    //           offset: Offset(4.0, 10.0)
                                  )
                                ],
                                gradient: LinearGradient(
                                    colors: [Colors.greenAccent, Colors.green]),
                                borderRadius: BorderRadius.circular(5)),
                            height: 50,
                            width: MediaQuery.of(context).size.width,
                            margin: EdgeInsets.only(
                                bottom: 10, left: 10, right: 10),
                            child: Center(
                                child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Container(
                                  margin: EdgeInsets.only(right: 8),
                                  child: Image.asset(
                                    "images/sience.png",
                                    height: 25,
                                  ),
                                ),
                                Text(
                                  "علوم تجريبية",
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontFamily: "Cairo",
                                      fontWeight: FontWeight.w100,
                                      fontSize: 20),
                                ),
                                SizedBox(
                                  width: 10,
                                )
                              ],
                            )),
                          ),
                        ),
                        InkWell(
                          onTap: () {
                            function(
                                context,
                                gestion,
                                mawadPage(
                                    context,
                                    "تسيير و اقتصاد",
                                    gestionMawad,
                                    gestionIconsMawad,
                                    gestion,
                                    listaMawadi3Gestion,
                                    listaHololGestion),
                                CalculaturPage(
                                  cho3ba: "تسيير اقتصاد ",
                                  mawad: gestionCalculatur,
                                  mo3amilat: mo3amilatGestion,
                                  gradient: gestion,
                                  mo3amilmada: mo3amil_Gestion,
                                ));
                          },
                          child: Container(
                            decoration: BoxDecoration(
                                boxShadow: [
                                  BoxShadow(
                                    color: Color(0xFF656565).withOpacity(0.15),
                                    blurRadius: 4.0,
                                    spreadRadius: 1.0,
                                    //           offset: Offset(4.0, 10.0)
                                  )
                                ],
                                gradient: LinearGradient(
                                    colors: [Colors.redAccent, Colors.red]),
                                borderRadius: BorderRadius.circular(5)),
                            height: 50,
                            width: MediaQuery.of(context).size.width,
                            margin: EdgeInsets.only(
                                bottom: 10, left: 10, right: 10),
                            child: Center(
                                child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Container(
                                  margin: EdgeInsets.only(right: 8),
                                  child: Image.asset(
                                    "images/gestion.png",
                                    height: 25,
                                  ),
                                ),
                                Text(
                                  "تسيير و اقتصاد",
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontFamily: "Cairo",
                                      fontWeight: FontWeight.w100,
                                      fontSize: 20),
                                ),
                                SizedBox(
                                  width: 10,
                                )
                              ],
                            )),
                          ),
                        ),
                        InkWell(
                          onTap: () {
                            function(
                                context,
                                languages,
                                mawadPage(
                                    context,
                                    "اللغات الاجنبية",
                                    languagesMawad,
                                    languagesIconsMawad,
                                    languages,
                                    listaMawadi3Languages,
                                    listaHololLanguages),
                                CalculaturPage(
                                  cho3ba: "اللغات الاجنبية",
                                  mawad: languagesCalculateur,
                                  mo3amilat: mo3amilatlanguages,
                                  gradient: languages,
                                  mo3amilmada: mo3amil_langues,
                                ));
                          },
                          child: Container(
                            decoration: BoxDecoration(
                                boxShadow: [
                                  BoxShadow(
                                    color: Color(0xFF656565).withOpacity(0.15),
                                    blurRadius: 4.0,
                                    spreadRadius: 1.0,
                                    //           offset: Offset(4.0, 10.0)
                                  )
                                ],
                                gradient: LinearGradient(
                                    colors: [Colors.blueAccent, Colors.blue]),
                                borderRadius: BorderRadius.circular(5)),
                            height: 50,
                            width: MediaQuery.of(context).size.width,
                            margin: EdgeInsets.only(
                                bottom: 10, left: 10, right: 10),
                            child: Center(
                                child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Container(
                                  margin: EdgeInsets.only(right: 8),
                                  child: Image.asset(
                                    "images/langueges.png",
                                    height: 28,
                                    width: 30,
                                    fit: BoxFit.fill,
                                  ),
                                ),
                                Text(
                                  "اللغات الاجنبية",
                                  style: TextStyle(
                                      fontFamily: "Cairo",
                                      color: Colors.white,
                                      fontWeight: FontWeight.w100,
                                      fontSize: 20),
                                ),
                                SizedBox(
                                  width: 10,
                                )
                              ],
                            )),
                          ),
                        ),
                        InkWell(
                          onTap: () {
                            function(
                                context,
                                falsafa,
                                mawadPage(
                                    context,
                                    "اداب و فلسفة",
                                    falsafaMawad,
                                    falsafaIconsMawad,
                                    falsafa,
                                    listaMawadi3Falsafa,
                                    listaHololFalsafa),
                                CalculaturPage(
                                  cho3ba: "اداب و فلسفة",
                                  mawad: falsafaCalculateur,
                                  mo3amilat: mo3amilatFalsafa,
                                  gradient: falsafa,
                                  mo3amilmada: mo3amil_falsafa,
                                ));
                          },
                          child: Container(
                            decoration: BoxDecoration(
                                boxShadow: [
                                  BoxShadow(
                                    color: Color(0xFF656565).withOpacity(0.15),
                                    blurRadius: 4.0,
                                    spreadRadius: 1.0,
                                    //           offset: Offset(4.0, 10.0)
                                  )
                                ],
                                gradient: LinearGradient(
                                    colors: [Color(0xffe08c1d), Colors.brown]),
                                borderRadius: BorderRadius.circular(5)),
                            height: 50,
                            width: MediaQuery.of(context).size.width,
                            margin: EdgeInsets.only(
                                bottom: 10, left: 10, right: 10),
                            child: Center(
                                child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Container(
                                  margin: EdgeInsets.only(right: 8),
                                  child: Image.asset(
                                    "images/philosophie.png",
                                    height: 28,
                                    width: 30,
                                    fit: BoxFit.fill,
                                  ),
                                ),
                                Text(
                                  "اداب و فلسفة",
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontWeight: FontWeight.w100,
                                      fontFamily: "Cairo",
                                      fontSize: 20),
                                ),
                                SizedBox(
                                  width: 10,
                                )
                              ],
                            )),
                          ),
                        ),
                      ],
                    ),
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
