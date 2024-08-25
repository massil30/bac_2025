import 'package:bac_2025/ui/gradients.dart';
import 'package:flutter/material.dart';
import 'package:awesome_dialog/awesome_dialog.dart';

ResultDialogue(
    context, mo3adal, maj3o3Mawad, majmo3mo3amilat, gradientn, total) {
  return AwesomeDialog(
      context: context,
      onDismissCallback: (type) {
        total == 0;
      },
      dialogType: mo3adal >= 10.00 ? DialogType.success : DialogType.error,
      dialogBackgroundColor: background,
      body: Directionality(
        textDirection: TextDirection.rtl,
        child:
            Column(mainAxisAlignment: MainAxisAlignment.spaceEvenly, children: [
          Column(
            children: [
              Text(
                mo3adal >= 10.00 ? "ناجح" : "راسب",
                style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 28,
                    color: mo3adal >= 10.00 ? Colors.green : Colors.red,
                    fontFamily: "Cairo"),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text("المعدل : ",
                      style: TextStyle(
                          color: textT, fontFamily: "Cairo", fontSize: 17)),
                  Text(mo3adal.toString(),
                      style: TextStyle(
                          color: textT,
                          fontWeight: FontWeight.bold,
                          fontSize: 17)),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text("مجموع المواد :",
                      style: TextStyle(
                          color: textT,
                          fontWeight: FontWeight.bold,
                          fontFamily: "Cairo",
                          fontSize: 17)),
                  Text(maj3o3Mawad.toString(),
                      style: TextStyle(
                          color: textT,
                          fontWeight: FontWeight.bold,
                          fontSize: 17))
                ],
              ),
              Padding(
                padding: const EdgeInsets.only(
                  bottom: 8,
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text("مجموع المعاملات :",
                        style: TextStyle(
                            color: textT,
                            fontWeight: FontWeight.bold,
                            fontFamily: "Cairo",
                            fontSize: 17)),
                    Text(majmo3mo3amilat.toString(),
                        style: TextStyle(
                            color: textT,
                            fontWeight: FontWeight.bold,
                            fontSize: 17))
                  ],
                ),
              ),
              Text(
                mo3adal >= 10.00 ? "مبروك عليك" : "حاول مرة اخرى",
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 28,
                  color: mo3adal >= 10.00 ? Colors.green : Colors.red,
                ),
              ),
            ],
          )
        ]),
      )).show();
}

// showDialog(
//     context: context,
//     builder: (context) {
//       return AlertDialog(
//         backgroundColor: background,
//         content: Container(
//           height: 400,
//           child: Column(
//             mainAxisAlignment: MainAxisAlignment.spaceEvenly,
//             children: [
//               Column(
//                 children: [
//                   Image.asset(
//                     "images/logo.png",
//                     height: 200,
//                     width: 200,
//                   ),
//                   Text(
//                     mo3adal > 10.00 ? "ناجح" : "راسب",
//                     style: TextStyle(
//                         fontWeight: FontWeight.bold,
//                         fontSize: 22,
//                         color:mo3adal > 10.00 ?Colors.green:Colors.red ,
//                         fontFamily: "Cairo"),
//                   ),
//                   Container(
//                       margin: EdgeInsets.only(right: 170, left: 170),
//                       child: Divider(
//                         color: Colors.green,
//                       )),
//                   Row(
//                     mainAxisAlignment: MainAxisAlignment.center,
//                     children: [
//                       Text("المعدل :",
//                           style: TextStyle(
//                               fontWeight: FontWeight.bold, fontSize: 19)),
//                       Text(mo3adal.toString(),
//                           style: TextStyle(
//                               fontWeight: FontWeight.bold, fontSize: 19)),
//                     ],
//                   ),
//                   SizedBox(
//                     height: 10,
//                   ),
//                   Row(
//                     mainAxisAlignment: MainAxisAlignment.center,
//                     children: [
//                       Text("مجموع المواد :",
//                           style: TextStyle(
//                               fontWeight: FontWeight.bold, fontSize: 18)),
//                       Text(maj3o3Mawad.toString(),
//                           style: TextStyle(
//                               fontWeight: FontWeight.bold, fontSize: 18))
//                     ],
//                   ),
//                   SizedBox(
//                     height: 10,
//                   ),
//                   Row(
//                     mainAxisAlignment: MainAxisAlignment.center,
//                     children: [
//                       Text("مجموع المعاملات :",
//                           style: TextStyle(
//                               fontWeight: FontWeight.bold, fontSize: 17)),
//                       Text(majmo3mo3amilat.toString(),
//                           style: TextStyle(
//                               fontWeight: FontWeight.bold, fontSize: 18))
//                     ],
//                   ),
//                   SizedBox(
//                     width: MediaQuery.of(context).size.width - 100,
//                     height: 4,
//                     child: Container(
//                       decoration: BoxDecoration(gradient: gradient),
//                     ),
//                   ),
//                 ],
//               ),
//             ],
//           ),
//         ),
//       );
//     },
//   );