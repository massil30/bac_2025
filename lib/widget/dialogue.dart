import 'package:bac_2025/ui/gradients.dart';
import 'package:flutter/material.dart';

function(var context, Gradient gradient, var sPage, var cPage) {
  showDialog(
    context: context,
    builder: (context) {
      return AlertDialog(
        backgroundColor: background,
        content: Container(
          height: 300,
          child: Center(
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                InkWell(
                  onTap: () {
                    Navigator.push(context, MaterialPageRoute(
                      builder: (context) {
                        return sPage;
                      },
                    ));
                  },
                  child: Container(
                    decoration: BoxDecoration(
                        gradient: gradient,
                        boxShadow: [
                          BoxShadow(
                            color: Color(0xFF656565).withOpacity(0.15),
                            blurRadius: 4.0,
                            spreadRadius: 1.0,
                            //           offset: Offset(4.0, 10.0)
                          )
                        ],
                        borderRadius: BorderRadius.circular(5)),
                    height: 120,
                    width: 300,
                    child: Center(
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Container(
                            child: Image.asset(
                              "images/hisandgoe.png",
                              height: 50,
                            ),
                          ),
                          Text(
                            "مواضيع و حلول البكالوريا",
                            style: TextStyle(
                                color: Colors.white,
                                fontFamily: "Cairo",
                                fontSize: 21,
                                fontWeight: FontWeight.bold),
                          )
                        ],
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  height: 15,
                ),
                InkWell(
                  onTap: () {
                    Navigator.push(context, MaterialPageRoute(
                      builder: (context) {
                        return cPage;
                      },
                    ));
                  },
                  child: Container(
                    decoration: BoxDecoration(
                        gradient: gradient,
                        boxShadow: [
                          BoxShadow(
                            color: Color(0xFF656565).withOpacity(0.15),
                            blurRadius: 4.0,
                            spreadRadius: 1.0,
                            //           offset: Offset(4.0, 10.0)
                          )
                        ],
                        borderRadius: BorderRadius.circular(5)),
                    height: 120,
                    width: 300,
                    child: Center(
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Container(
                            child: Image.asset(
                              "images/calculator.png",
                              height: 50,
                            ),
                          ),
                          Text(
                            "حساب معدل البكالوريا",
                            style: TextStyle(
                                color: Colors.white,
                                fontSize: 20,
                                fontFamily: "Cairo",
                                fontWeight: FontWeight.bold),
                          )
                        ],
                      ),
                    ),
                  ),
                ),
                // RESOURCES
                // Container(
                //   decoration: BoxDecoration(
                //       gradient: gradient,
                //       boxShadow: [
                //         BoxShadow(
                //           color: Color(0xFF656565).withOpacity(0.15),
                //           blurRadius: 4.0,
                //           spreadRadius: 1.0,
                //           //           offset: Offset(4.0, 10.0)
                //         )
                //       ],
                //       borderRadius: BorderRadius.circular(5)),
                //   height: 100,
                //   width: 300,
                //   child: Center(
                //     child: Column(
                //       mainAxisAlignment: MainAxisAlignment.center,
                //       children: [
                //         Container(
                //           child: Image.asset(
                //             "images/youtube.png",
                //             height: 50,
                //           ),
                //         ),
                //         Text(
                //           "قنوات اليوتيوب",
                //           style: TextStyle(
                //               color: Colors.white,
                //               fontSize: 21,
                //               fontFamily: "Cairo",
                //               fontWeight: FontWeight.bold),
                //         )
                //       ],
                //     ),
                //   ),
                // ),
              ],
            ),
          ),
        ),
      );
    },
  );
}
