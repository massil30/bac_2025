import 'package:bac_2025/ui/gradients.dart';
import "package:flutter/material.dart";

class ResultPage extends StatefulWidget {
  final maj3o3Mawad;
  final majmo3mo3amilat;
  final mo3adal;
  final gradient;
  const ResultPage(
      {Key? key,
      this.maj3o3Mawad,
      this.majmo3mo3amilat,
      this.mo3adal,
      this.gradient})
      : super(key: key);

  @override
  _ResultPageState createState() => _ResultPageState();
}

class _ResultPageState extends State<ResultPage> {
  @override
  Widget build(BuildContext context) {
    return Directionality(
      textDirection: TextDirection.rtl,
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: widget.gradient,
          centerTitle: true,
          leading: IconButton(
            icon: Icon(
              Icons.arrow_back,
              color: textT,
            ),
            onPressed: () {
              Navigator.pop(context);
            },
          ),
          title: Text(
            "النتيجة",
            style: TextStyle(
              color: textT,
              fontFamily: "Cario",
            ),
          ),
        ),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Column(
              children: [
                Image.asset(
                  "images/logo.png",
                  height: 200,
                  width: 200,
                ),
                Text(
                  widget.mo3adal > 10.00 ? "ناجح" : "خاسر",
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 22),
                ),
                Container(
                    margin: EdgeInsets.only(right: 170, left: 170),
                    child: Divider(
                      color: Colors.green,
                    )),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text("المعدل :",
                        style: TextStyle(
                            fontWeight: FontWeight.bold, fontSize: 19)),
                    Text(widget.mo3adal.toString(),
                        style: TextStyle(
                            fontWeight: FontWeight.bold, fontSize: 19)),
                  ],
                ),
                SizedBox(
                  height: 10,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text("مجموع المواد :",
                        style: TextStyle(
                            fontWeight: FontWeight.bold, fontSize: 18)),
                    Text(widget.maj3o3Mawad.toString(),
                        style: TextStyle(
                            fontWeight: FontWeight.bold, fontSize: 18))
                  ],
                ),
                SizedBox(
                  height: 10,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text("مجموع المعاملات :",
                        style: TextStyle(
                            fontWeight: FontWeight.bold, fontSize: 17)),
                    Text(widget.majmo3mo3amilat.toString(),
                        style: TextStyle(
                            fontWeight: FontWeight.bold, fontSize: 18))
                  ],
                ),
                SizedBox(
                  width: MediaQuery.of(context).size.width - 100,
                  height: 4,
                  child: Container(
                    decoration: BoxDecoration(gradient: widget.gradient),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
