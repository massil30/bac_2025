import 'package:bac_2025/ui/gradients.dart';
import 'package:flutter/material.dart';
import 'package:flutter_email_sender/flutter_email_sender.dart';
import 'package:flutter_share/flutter_share.dart';
import 'package:url_launcher/url_launcher.dart';

drawer(backgroud, texT, context) {
  final Uri _url = Uri.parse('https://play.google.com/store/apps?hl=fr');
  final Email email = Email(
    body: 'Email body',
    subject: 'Email subject',
    recipients: ['massilattaf04@gmail.com'],
    // cc: ['cc@example.com'],
    // bcc: ['bcc@example.com'],
    // attachmentPaths: ['/path/to/attachment.zip'],
    isHTML: false,
  );
  return Drawer(
      backgroundColor: backgroud,
      child: Directionality(
        textDirection: TextDirection.rtl,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Divider(),
            line("حول التطبيق", texT, () {
              showDialog(
                context: context,
                builder: (context) {
                  return AlertDialog(
                    backgroundColor: backgroud,
                    title: Text(
                      'حول التطبيق',
                      style: TextStyle(
                          fontSize: 24.0, // Bigger font size for the title
                          fontWeight: FontWeight.bold,
                          color: texT,
                          fontFamily: "Cairo"),
                      textAlign: TextAlign.center,
                    ),
                    content: Column(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        Divider(thickness: 2.0), // Divider below the title
                        SizedBox(
                            height: 5), // Space between divider and paragraph
                        Directionality(
                          textDirection: TextDirection.rtl,
                          child: Text(
                            'تم تصميم هذا التطبيق خصيصًا لطلاب البكالوريا، حيث يوفر مجموعة شاملة من مواضيع الامتحانات مع حلولها، تغطي السنوات من 2012 إلى 2024 لجميع الشعب. بالإضافة إلى ذلك، يتضمن التطبيق حاسبة البكالوريا لكل شعبة دراسية، وكل ذلك متاح باللغة العربية. سواء كنت تستعد للامتحانات أو تحسب نتائجك، يوفر لك هذا التطبيق الأدوات والموارد الأساسية التي تساعدك على النجاح.',
                            style: TextStyle(
                                fontSize: 16.0,
                                fontFamily: "Cairo",
                                color: textT),
                            textAlign: TextAlign.justify,
                          ),
                        ),
                      ],
                    ),
                    actions: [
                      Center(
                        child: Text(
                          'version 1.0',
                          textAlign: TextAlign.center,
                          style: TextStyle(color: Colors.grey, fontSize: 14),
                        ),
                      ),
                      Center(
                        child: Text(
                          'Icons by https://icons8.com',
                          textAlign: TextAlign.center,
                          style: TextStyle(color: Colors.grey, fontSize: 14),
                        ),
                      ),
                    ],
                  );
                },
              );
            },
                Icon(
                  Icons.info,
                  color: textT,
                )),
            Divider(),
            line("تقييم التطبيق", texT, () async {
              if (!await launchUrl(_url)) {
                throw Exception('Could not launch $_url');
              }
            },
                Icon(
                  Icons.star,
                  color: textT,
                )),
            Divider(),
            line("مشاركة التطبيق", texT, () async {
              await FlutterShare.share(
                  title: 'Example share',
                  text: 'Example share text',
                  linkUrl: 'https://flutter.dev/',
                  chooserTitle: 'Example Chooser Title');
            },
                Icon(
                  Icons.share,
                  color: textT,
                )),
            Divider(),
            line("منصات التواصل", texT, () {
              showDialog(
                context: context,
                builder: (context) {
                  return AlertDialog(
                    backgroundColor: backgroud,
                    title: Text(
                      'حول التطبيق',
                      style: TextStyle(
                          fontSize: 24.0, // Bigger font size for the title
                          fontWeight: FontWeight.bold,
                          color: texT,
                          fontFamily: "Cairo"),
                      textAlign: TextAlign.center,
                    ),
                    content: Column(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        Divider(thickness: 2.0),
                        SizedBox(height: 5),
                        _buildGridItem(
                            'images/logo.png', 'Facebook ', context, [
                          Color(0xFF4267B2), // Facebook Blue
                          Color(0xFF3B5998), // Darker Facebook Blue
                        ]),
                        _buildGridItem(
                          'images/logo.png',
                          'Instagrame',
                          context,
                          [
                            Color.fromARGB(255, 219, 38, 53), // Instagram Pink
                            Color(0xFFFFC371), // Instagram Orange
                          ],
                        ),
                        _buildGridItem('images/logo.png', 'Youtube', context, [
                          Color(0xFFBF0000), // Dark red
                          Color.fromARGB(255, 245, 81, 81), // YouTube Red
                        ]),
                        _buildGridItem(
                          'images/logo.png',
                          'Gmail',
                          context,
                          [
                            Color(0xFFFF0000),
                            Color.fromARGB(211, 248, 86, 74),
                          ],
                        ),
                      ],
                    ),
                  );
                },
              );
            },
                Icon(
                  Icons.network_cell,
                  color: textT,
                )),
            Divider(),
            line("FeedBack(رأيك)", texT, () async {
              // final Uri _emailLaunchUri = Uri(
              //     scheme: 'mailto',
              //     path: 'smith@example.com',
              //     queryParameters: {
              //       'subject': 'Example Subject & Symbols are allowed!'
              //     });
              await FlutterEmailSender.send(email);
            },
                Icon(
                  Icons.person,
                  color: textT,
                ))
          ],
        ),
      ));
}

Widget line(name, texT, function, icon) {
  return ListTile(
      leading: icon,
      title: Text(
        name,
        style: TextStyle(
            color: textT,
            fontFamily: "Cairo",
            fontWeight: FontWeight.bold,
            fontSize: 18),
      ),
      onTap: function);
}

Widget _buildGridItem(
    String imagePath, String title, context, List<Color> gradient) {
  return Directionality(
    textDirection: TextDirection.rtl,
    child: GestureDetector(
      onTap: () async {
        Uri url = Uri.parse('https://play.google.com/store/apps?hl=fr');
        if (!await launchUrl(url)) {
          throw Exception('Could not launch $url');
        }
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
              colors: gradient,
              begin: Alignment.topLeft,
              end: Alignment.bottomRight,
            ),
            borderRadius: BorderRadius.circular(5)),
        height: 50,
        width: MediaQuery.of(context).size.width,
        margin: EdgeInsets.only(bottom: 12, left: 5, right: 5),
        child: Center(
            child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Container(
                margin: EdgeInsets.only(right: 8),
                child: Icon(
                  Icons.mail,
                  color: Colors.white,
                  size: 25,
                )),
            Text(
              title,
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
  );
}
