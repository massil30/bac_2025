import 'package:bac_2025/pdf/pdftest.dart';
import 'package:bac_2025/ui/gradients.dart';
// import 'package:bac_dz/checkpage.dart';
// import 'package:bac_dz/pdftest.dart';
import 'package:flutter/material.dart';

class Years extends StatelessWidget {
  final context, name, gradient, sujets, solution;
  const Years(
      {Key? key,
      this.context,
      this.name,
      this.gradient,
      this.sujets,
      this.solution})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Directionality(
      textDirection: TextDirection.rtl,
      child: Scaffold(
          backgroundColor: background,
          appBar: AppBar(
            leading: IconButton(
              icon: Icon(
                Icons.arrow_back_ios,
                color: textT,
              ),
              onPressed: () {
                Navigator.pop(context);
              },
            ),
            centerTitle: true,
            backgroundColor: background,
            title: Text(
              name,
              style: TextStyle(
                color: textT,
                fontWeight: FontWeight.w700,
              ),
            ),
          ),
          body: Container(
            margin: EdgeInsets.only(bottom: 6),
            child: ListView.builder(
              padding: EdgeInsets.zero,
              itemCount: name == "اللغة الإيطالية" ? 7 : years.length,
              itemBuilder: (context, index) {
                return InkWell(
                  onTap: () {
                    Navigator.push(context, MaterialPageRoute(
                      builder: (context) {
                        return PDFTEST(
                          name: name,
                          sujets: sujets[index],
                          year: years[index],
                          solution: solution[index],
                        );
                      },
                    ));
                  },
                  child: Container(
                    height: 50,
                    margin:
                        EdgeInsets.only(top: 8, right: 10, left: 10, bottom: 4),
                    decoration: BoxDecoration(
                        gradient: gradient,
                        borderRadius: BorderRadius.circular(10)),
                    child: Center(
                      child: Text("دورة ${years[index]}",
                          style: TextStyle(
                              fontFamily: "Cairo",
                              color: Colors.white,
                              fontWeight: FontWeight.bold,
                              fontSize: 21)),
                    ),
                  ),
                );
              },
            ),
          )),
    );
  }
}
