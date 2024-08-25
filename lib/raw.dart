import 'package:bac_2025/ui/gradients.dart';
import 'package:bac_2025/widget/dialogueresult.dart';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class CPage extends StatefulWidget {
  final cho3ba;
  final mawad;
  final gradient;
  final mo3amilat;

  const CPage(
      {Key? key, this.cho3ba, this.mawad, this.gradient, this.mo3amilat})
      : super(key: key);

  @override
  _CPageState createState() => _CPageState();
}

class _CPageState extends State<CPage> {
  var badaniya = "0";
  var tarbiyabadaniya = "20";
  var loghaamazighiya = "20";
  var thamzighth = "0";
  int mo3ammilatTotal = 0;
  double total = 0;
  var fullMo3amilat;
  var fullTotal;
  List numbers = [
    "20",
    "20",
    "20",
    "20",
    "20",
    "20",
    "20",
    "20",
    "20",
  ];
  @override
  Widget build(BuildContext context) {
    return Directionality(
      textDirection: TextDirection.rtl,
      child: Scaffold(
          backgroundColor: background,
          body: SingleChildScrollView(
            child: Column(
              children: [
                Container(
                    height: 70,
                    decoration: BoxDecoration(gradient: falsafa),
                    child: Row(
                      children: [
                        Container(
                            margin: EdgeInsets.only(right: 8),
                            padding: EdgeInsets.only(top: 10),
                            child: IconButton(
                              icon: Icon(
                                Icons.arrow_back_ios,
                                color: Colors.white,
                              ),
                              onPressed: () {
                                Navigator.pop(context);
                              },
                            )),
                        Container(
                          padding: EdgeInsets.only(right: 8, top: 12),
                          alignment: Alignment.center,
                          child: Text(widget.cho3ba,
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 20,
                                fontFamily: "Cairo",
                              )),
                        ),
                      ],
                    )),
                Container(
                  height: MediaQuery.of(context).size.height - 70 - 50,
                  padding: const EdgeInsets.all(8.0),
                  child: Table(
                    defaultVerticalAlignment: TableCellVerticalAlignment.middle,
                    children: [
                      TableRow(children: [
                        Container(
                            child: Text(
                          "المادة",
                          style: TextStyle(
                            fontSize: 16,
                            fontFamily: "Cairo",
                          ),
                        )),
                        Text(
                          "المعامل",
                          style: TextStyle(
                            fontSize: 16,
                            fontFamily: "Cairo",
                          ),
                        ),
                        Text(
                          "النقطة",
                          style: TextStyle(
                            fontSize: 16,
                            fontFamily: "Cairo",
                          ),
                        ),
                      ]),
                      ...List.generate(
                        widget.mo3amilat.length,
                        (index) => TableRow(children: [
                          Text(
                            widget.mawad[index],
                            style: TextStyle(
                              fontSize: 16,
                              fontFamily: "Cairo",
                            ),
                          ),
                          Text(
                            widget.mo3amilat[index].toString(),
                            style: TextStyle(
                              fontSize: 16,
                              fontFamily: "Cairo",
                            ),
                          ),
                          Container(
                            padding: EdgeInsets.only(left: 40),
                            child: TextFormField(
                              cursorColor: Colors.green,
                            ),
                          )
                        ]),
                      )
                    ],
                  ),
                ),
                InkWell(
                  onTap: () {
                    for (int i = 0; i < widget.mawad.length - 2; i++) {
                      total += double.parse(numbers[i]) * widget.mo3amilat[i];
                      mo3ammilatTotal += (widget.mo3amilat[i]) as int;
                    }
                    fullTotal = total +
                        (double.parse(badaniya) *
                            double.parse(tarbiyabadaniya)) +
                        (double.parse(thamzighth) *
                            double.parse(loghaamazighiya));
                    fullMo3amilat = mo3ammilatTotal +
                        int.parse(badaniya) +
                        (int.parse(thamzighth));

                    ResultDialogue(context, fullTotal / fullMo3amilat,
                        fullTotal, fullMo3amilat, widget.gradient, total);
                  },
                  child: Container(
                    height: 50,
                    decoration: BoxDecoration(
                        gradient: widget.gradient,
                        borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(8),
                            topRight: Radius.circular(8))),
                    child: Center(
                      child: Text(
                        "حساب المعدل",
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 22,
                          fontFamily: "Cairo",
                        ),
                      ),
                    ),
                  ),
                )
              ],
            ),
          )),
    );
  }
}
