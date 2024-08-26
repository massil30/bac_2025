// ignore_for_file: prefer_const_constructors

import 'package:bac_2025/ui/gradients.dart';
import 'package:bac_2025/widget/dialogueresult.dart';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class CalculaturPage extends StatefulWidget {
  final cho3ba;
  final mawad;
  final gradient;
  final mo3amilat;
  final mo3amilmada;

  const CalculaturPage(
      {Key? key,
      this.cho3ba,
      this.mawad,
      this.gradient,
      this.mo3amilat,
      this.mo3amilmada})
      : super(key: key);

  @override
  _CalculaturPageState createState() => _CalculaturPageState();
}

class _CalculaturPageState extends State<CalculaturPage> {
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
    "20",
    "20",
  ];
  var badaniya = "1";
  var loghaamazighiya = "20";
  var thamzighth = "0";
  double total = 0;
  var fullTotal;

  final _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    var tarbiyabadaniya = "20";

    return Form(
      key: _formKey,
      child: Directionality(
        textDirection: TextDirection.rtl,
        child: Scaffold(
            backgroundColor: background,
            body: SingleChildScrollView(
              child: Column(
                children: [
                  Container(
                      height: 70,
                      decoration: BoxDecoration(gradient: widget.gradient),
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
                    height: 40,
                    padding: const EdgeInsets.all(8.0),
                    child: Table(
                      defaultVerticalAlignment:
                          TableCellVerticalAlignment.middle,
                      children: [
                        TableRow(children: [
                          Container(
                              child: Text(
                            "المادة",
                            style: TextStyle(
                                fontSize: 16,
                                fontFamily: "Cairo",
                                color: textT),
                          )),
                          Text(
                            "المعامل",
                            style: TextStyle(
                                fontSize: 16,
                                fontFamily: "Cairo",
                                color: textT),
                          ),
                          Text(
                            "النقطة",
                            style: TextStyle(
                                fontSize: 16,
                                fontFamily: "Cairo",
                                color: textT),
                          ),
                        ]),
                      ],
                    ),
                  ),
                  Container(
                    height: 3,
                    margin: EdgeInsets.only(right: 10, left: 10),
                    decoration: BoxDecoration(gradient: widget.gradient),
                  ),
                  Container(
                    height:
                        MediaQuery.of(context).size.height - 50 - 70 - 3 - 40,
                    padding: const EdgeInsets.all(8.0),
                    child: Table(
                      border: TableBorder(
                          horizontalInside: BorderSide(color: Colors.grey),
                          bottom: BorderSide(color: Colors.grey)),
                      defaultVerticalAlignment:
                          TableCellVerticalAlignment.middle,
                      children: [
                        ...List.generate(
                          widget.mo3amilat.length,
                          (index) => TableRow(children: [
                            TableCell(
                              verticalAlignment:
                                  TableCellVerticalAlignment.middle,
                              child: Text(
                                widget.mawad[index],
                                style: TextStyle(
                                    fontSize: 16,
                                    fontFamily: "Cairo",
                                    color: textT),
                              ),
                            ),
                            TableCell(
                              verticalAlignment:
                                  TableCellVerticalAlignment.middle,
                              child: Container(
                                margin: EdgeInsets.only(right: 16),
                                child: Text(
                                  widget.mo3amilat[index].toString(),
                                  style: TextStyle(
                                      fontSize: 16,
                                      fontFamily: "Cairo",
                                      fontWeight: FontWeight.bold,
                                      color: textT),
                                ),
                              ),
                            ),
                            textformfield(index)
                          ]),
                        ),
                        TableRow(children: [
                          Container(
                              child: Text(
                            "التربية البدنية",
                            style: TextStyle(
                                fontSize: 16,
                                fontFamily: "Cairo",
                                color: textT),
                          )),
                          Container(
                              margin: EdgeInsets.only(left: 60, right: 16),
                              child: DropdownButton(
                                items: ['0', '1'].map((String value) {
                                  return DropdownMenuItem<String>(
                                    value: value,
                                    child: Text(
                                      value,
                                      style:
                                          TextStyle(fontSize: 16, color: textT),
                                    ),
                                  );
                                }).toList(),
                                value: badaniya,
                                onChanged: (value) {
                                  setState(() {
                                    badaniya = value!;
                                  });
                                },
                              )),
                          badaniya == "1"
                              ? TableCell(
                                  verticalAlignment:
                                      TableCellVerticalAlignment.middle,
                                  child: Container(
                                      height: 35,
                                      margin: EdgeInsets.only(
                                          left: 40, bottom: 5, top: 5),
                                      child: TextFormField(
                                        validator: (value) {
                                          if (value == null ||
                                              value.isEmpty ||
                                              double.tryParse(value) == null ||
                                              double.parse(value) < 0.00 ||
                                              double.parse(value) > 20.00) {
                                            return ''; // Return an empty string to trigger the errorBorder
                                          }
                                          return null; // Return null if validation is successful
                                        },
                                        onChanged: (value) {
                                          setState(() {
                                            tarbiyabadaniya = value;
                                          });
                                        },
                                        style: TextStyle(color: textT),
                                        autovalidateMode:
                                            AutovalidateMode.always,
                                        decoration: InputDecoration(
                                          hintText: "00/20",
                                          hintStyle: TextStyle(
                                              fontWeight: FontWeight.w200,
                                              color: Colors.grey[400]),
                                          fillColor:
                                              Color.fromRGBO(1, 6, 12, 1),
                                          errorStyle: TextStyle(
                                              height: 0,
                                              fontSize:
                                                  10), // Keep error text minimal
                                          border: OutlineInputBorder(
                                            borderRadius:
                                                BorderRadius.circular(5),
                                          ),
                                          focusedBorder: OutlineInputBorder(
                                            borderRadius:
                                                BorderRadius.circular(5),
                                            borderSide: BorderSide(
                                              color: Colors
                                                  .green, // Green border when the field is focused
                                              width: 2.0,
                                            ),
                                          ),

                                          enabledBorder: OutlineInputBorder(
                                            borderRadius:
                                                BorderRadius.circular(5),
                                            borderSide: BorderSide(
                                              color: Colors
                                                  .grey, // Grey border when the field is not focused
                                              width: 1.0,
                                            ),
                                          ),
                                          errorBorder: OutlineInputBorder(
                                            borderRadius:
                                                BorderRadius.circular(5),
                                            borderSide: BorderSide(
                                              color: Colors
                                                  .red, // Red border when validation fails
                                              width: 2.0,
                                            ),
                                          ),
                                          focusedErrorBorder:
                                              OutlineInputBorder(
                                            borderRadius:
                                                BorderRadius.circular(5),
                                            borderSide: BorderSide(
                                              color: Colors
                                                  .red, // Red border when focused and validation fails
                                              width: 2.0,
                                            ),
                                          ),
                                          contentPadding: EdgeInsets.symmetric(
                                              vertical: 10, horizontal: 10),
                                          isDense:
                                              true, // Ensures the field is compact
                                        ),
                                        textAlign: TextAlign.center,
                                        cursorColor: Colors.green,
                                        keyboardType:
                                            TextInputType.numberWithOptions(
                                                decimal: true),
                                        inputFormatters: [
                                          FilteringTextInputFormatter.allow(
                                              RegExp(r'^\d+\.?\d{0,2}')),
                                        ],
                                      )),
                                )
                              : Container(
                                  margin: EdgeInsets.only(right: 8),
                                  child: Text(
                                    "معفي",
                                    style: TextStyle(
                                        fontFamily: "Cairo",
                                        fontSize: 16,
                                        color: textT),
                                  ),
                                )
                        ]),
                        TableRow(children: [
                          Container(
                              child: Text(
                            "اللغة الامازيغية",
                            style: TextStyle(
                                fontSize: 16,
                                fontFamily: "Cairo",
                                color: textT),
                          )),
                          Container(
                              margin: EdgeInsets.only(left: 60, right: 16),
                              child: DropdownButton(
                                items: ['0', '2'].map((String value) {
                                  return DropdownMenuItem<String>(
                                    value: value,
                                    child: Text(
                                      value,
                                      style:
                                          TextStyle(fontSize: 16, color: textT),
                                    ),
                                  );
                                }).toList(),
                                value: thamzighth,
                                onChanged: (value) {
                                  setState(() {
                                    thamzighth = value!;
                                  });
                                },
                              )),
                          thamzighth == "2"
                              ? TableCell(
                                  verticalAlignment:
                                      TableCellVerticalAlignment.middle,
                                  child: Container(
                                      height: 35,
                                      margin: EdgeInsets.only(
                                          left: 40, bottom: 5, top: 5),
                                      child: TextFormField(
                                        validator: (value) {
                                          if (value == null ||
                                              value.isEmpty ||
                                              double.tryParse(value) == null ||
                                              double.parse(value) < 0.00 ||
                                              double.parse(value) > 20.00) {
                                            return ''; // Return an empty string to trigger the errorBorder
                                          }
                                          return null; // Return null if validation is successful
                                        },
                                        onChanged: (value) {
                                          setState(() {
                                            loghaamazighiya = value;
                                          });
                                        },
                                        style: TextStyle(color: textT),
                                        autovalidateMode:
                                            AutovalidateMode.always,
                                        decoration: InputDecoration(
                                          hintText: "00/20",
                                          hintStyle: TextStyle(
                                              fontWeight: FontWeight.w200,
                                              color: Colors.grey[400]),
                                          fillColor:
                                              Color.fromRGBO(1, 6, 12, 1),
                                          errorStyle: TextStyle(
                                              height: 0,
                                              fontSize:
                                                  10), // Keep error text minimal
                                          border: OutlineInputBorder(
                                            borderRadius:
                                                BorderRadius.circular(5),
                                          ),
                                          focusedBorder: OutlineInputBorder(
                                            borderRadius:
                                                BorderRadius.circular(5),
                                            borderSide: BorderSide(
                                              color: Colors
                                                  .green, // Green border when the field is focused
                                              width: 2.0,
                                            ),
                                          ),

                                          enabledBorder: OutlineInputBorder(
                                            borderRadius:
                                                BorderRadius.circular(5),
                                            borderSide: BorderSide(
                                              color: Colors
                                                  .grey, // Grey border when the field is not focused
                                              width: 1.0,
                                            ),
                                          ),
                                          errorBorder: OutlineInputBorder(
                                            borderRadius:
                                                BorderRadius.circular(5),
                                            borderSide: BorderSide(
                                              color: Colors
                                                  .red, // Red border when validation fails
                                              width: 2.0,
                                            ),
                                          ),
                                          focusedErrorBorder:
                                              OutlineInputBorder(
                                            borderRadius:
                                                BorderRadius.circular(5),
                                            borderSide: BorderSide(
                                              color: Colors
                                                  .red, // Red border when focused and validation fails
                                              width: 2.0,
                                            ),
                                          ),
                                          contentPadding: EdgeInsets.symmetric(
                                              vertical: 10, horizontal: 10),
                                          isDense:
                                              true, // Ensures the field is compact
                                        ),
                                        textAlign: TextAlign.center,
                                        cursorColor: Colors.green,
                                        keyboardType:
                                            TextInputType.numberWithOptions(
                                                decimal: true),
                                        inputFormatters: [
                                          FilteringTextInputFormatter.allow(
                                              RegExp(r'^\d+\.?\d{0,2}')),
                                        ],
                                      )),
                                )
                              : Container(
                                  margin: EdgeInsets.only(right: 8),
                                  child: Text(
                                    "غير معني",
                                    style: TextStyle(
                                        fontFamily: "Cairo",
                                        fontSize: 16,
                                        color: textT),
                                  ),
                                )
                        ]),
                      ],
                    ),
                  ),
                  InkWell(
                    onTap: () {
                      print(tarbiyabadaniya);
                      if (_formKey.currentState!.validate()) {
                        for (int i = 0; i < widget.mawad.length; i++) {
                          total = total +
                              double.parse(numbers[i]) * widget.mo3amilat[i];
                        }
                        //Calculate Totale
                        fullTotal = total +
                            (double.parse(badaniya) *
                                double.parse(tarbiyabadaniya)) +
                            (double.parse(thamzighth) *
                                double.parse(loghaamazighiya));
                        //Calculate Mo3amilat
                        int mo3amilattotale = widget.mo3amilmada +
                            int.parse(badaniya) +
                            int.parse(thamzighth);

                        ResultDialogue(context, fullTotal / mo3amilattotale,
                            fullTotal, mo3amilattotale, widget.gradient, total);
                        setState(() {
                          total = 0;
                        });
                      }
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
      ),
    );
  }

  textformfield(int index) {
    return TableCell(
      verticalAlignment: TableCellVerticalAlignment.middle,
      child: Container(
          height: 35,
          margin: EdgeInsets.only(left: 40, bottom: 5, top: 5),
          child: TextFormField(
            textInputAction: TextInputAction.next,
            validator: (value) {
              if (value == null ||
                  value.isEmpty ||
                  double.tryParse(value) == null ||
                  double.parse(value) < 0.00 ||
                  double.parse(value) > 20.00) {
                return ''; // Return an empty string to trigger the errorBorder
              }
              return null; // Return null if validation is successful
            },
            onChanged: (value) {
              setState(() {
                numbers[index] = value;
              });
            },
            style: TextStyle(color: textT),
            autovalidateMode: AutovalidateMode.always,
            decoration: InputDecoration(
              hintText: "00/20",
              hintStyle: TextStyle(
                  fontWeight: FontWeight.w200, color: Colors.grey[400]),
              fillColor: Color.fromRGBO(1, 6, 12, 1),
              errorStyle:
                  TextStyle(height: 0, fontSize: 10), // Keep error text minimal
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(5),
              ),
              focusedBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(5),
                borderSide: BorderSide(
                  color: Colors.green, // Green border when the field is focused
                  width: 2.0,
                ),
              ),

              enabledBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(5),
                borderSide: BorderSide(
                  color:
                      Colors.grey, // Grey border when the field is not focused
                  width: 1.0,
                ),
              ),
              errorBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(5),
                borderSide: BorderSide(
                  color: Colors.red, // Red border when validation fails
                  width: 2.0,
                ),
              ),
              focusedErrorBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(5),
                borderSide: BorderSide(
                  color: Colors
                      .red, // Red border when focused and validation fails
                  width: 2.0,
                ),
              ),
              contentPadding:
                  EdgeInsets.symmetric(vertical: 10, horizontal: 10),
              isDense: true, // Ensures the field is compact
            ),
            textAlign: TextAlign.center,
            cursorColor: Colors.green,
            keyboardType: TextInputType.numberWithOptions(decimal: true),
            inputFormatters: [
              FilteringTextInputFormatter.allow(RegExp(r'^\d+\.?\d{0,2}')),
            ],
          )),
    );
  }
}
