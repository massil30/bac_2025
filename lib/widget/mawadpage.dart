import 'package:bac_2025/ui/gradients.dart';
import 'package:bac_2025/years.dart';
import 'package:flutter/material.dart';

mawadPage(context, cho3ba, mawad, logo, gradient, listaM, listS) {
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
        backgroundColor: background,
        centerTitle: true,
        title: Text(
          cho3ba,
          style: TextStyle(color: textT, fontWeight: FontWeight.bold),
        ),
      ),
      body: ListView.builder(
        itemCount: mawad.length,
        itemBuilder: (context, index) {
          return mawadCotnainer(context, mawad[index], logo[index], gradient,
              listaM[index], listS[index]);
        },
      ),
    ),
  );
}

mawadCotnainer(context, name, logo, gradient, listaM, listS) {
  return InkWell(
    onTap: () {
      Navigator.push(context, MaterialPageRoute(
        builder: (context) {
          return Years(
            context: context,
            name: name,
            gradient: gradient,
            sujets: listaM,
            solution: listS,
          );
        },
      ));
    },
    child: Container(
      margin: EdgeInsets.only(top: 8, right: 10, left: 10, bottom: 4),
      decoration: BoxDecoration(boxShadow: [
        BoxShadow(
          color: Color(0xFF656565).withOpacity(0.15),
          blurRadius: 4.0,
          spreadRadius: 1.0,
          //           offset: Offset(4.0, 10.0)
        )
      ], gradient: gradient, borderRadius: BorderRadius.circular(5)),
      width: MediaQuery.of(context).size.width,
      height: 50,
      child: Center(
          child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Container(
            margin: EdgeInsets.only(right: 8),
            child: Image.asset(
              logo,
              height: 25,
            ),
          ),
          Text(
            name,
            style: TextStyle(
                color: Colors.white,
                fontWeight: FontWeight.w700,
                fontSize: 20,
                fontFamily: "Cairo"),
          ),
          SizedBox(
            width: 10,
          )
        ],
      )),
    ),
  );
}
