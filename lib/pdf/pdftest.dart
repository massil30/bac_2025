import 'dart:async';

import 'package:awesome_dialog/awesome_dialog.dart';
import 'package:bac_2025/ui/gradients.dart';
import 'package:connectivity_plus/connectivity_plus.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_file_downloader/flutter_file_downloader.dart';

import 'package:persistent_bottom_nav_bar/persistent_bottom_nav_bar.dart';
import 'package:syncfusion_flutter_pdfviewer/pdfviewer.dart';

class PDFTEST extends StatefulWidget {
  static String id = "PDF";
  final sujets;
  final name;
  final year;
  final solution;

  const PDFTEST({Key? key, this.sujets, this.name, this.year, this.solution})
      : super(key: key);
  @override
  _PDFTESTState createState() => _PDFTESTState();
}

class _PDFTESTState extends State<PDFTEST> with AutomaticKeepAliveClientMixin {
  int selectedIndex = 0;
  var internat = false;
  @override
  bool get wantKeepAlive => true;
  StreamSubscription<List<ConnectivityResult>>? subscription;
  @override
  initState() {
    super.initState();
    subscription = Connectivity()
        .onConnectivityChanged
        .listen((List<ConnectivityResult> result) {
      print(result);

      if (result.contains(ConnectivityResult.none)) {
        setState(() {
          internat = false;
          print(internat);
        });
      } else {
        setState(() {
          internat = true;
          print(internat);
        });
      }
    });
  }

  @override
  void dispose() {
    // TODO: implement dispose
    super.dispose();
    subscription?.cancel();
  }

  @override
  Widget build(BuildContext context) {
    super.build(context);
    PersistentTabController _controller;

    _controller = PersistentTabController(initialIndex: 0);
    return Directionality(
      textDirection: TextDirection.rtl,
      child: Scaffold(
          backgroundColor: background,
          appBar: AppBar(
              centerTitle: true,
              actions: [
                InkWell(
                  onTap: () async {
                    print(subscription.toString());
                    internat == true
                        ? await Download()
                        : AwesomeDialog(
                            context: context,
                            dialogType: DialogType.error,
                            title: "الانترنات منقطع",
                            body: Directionality(
                              textDirection: TextDirection.rtl,
                              child: Padding(
                                padding: EdgeInsets.only(
                                    left: 15, bottom: 15, right: 15),
                                child: Text(
                                  "!يرجى الاتصال بشبكة لكي تتم عملية التحميل",
                                  style: TextStyle(fontFamily: "Cairo"),
                                ),
                              ),
                            )).show();
                    ;
                  },
                  child: Container(
                    margin: const EdgeInsets.all(16),
                    child: Icon(
                      Icons.download,
                      color: textT,
                      size: 35,
                    ),
                  ),
                )
              ],
              leading: IconButton(
                icon: Icon(Icons.arrow_back_ios, color: textT),
                onPressed: () {
                  Navigator.pop(context);
                },
              ),
              backgroundColor: background,
              title: Text(
                "${widget.name} دورة ${widget.year}",
                style:
                    TextStyle(color: textT, fontFamily: "Cairo", fontSize: 16),
              )),
          body: PersistentTabView(
            context,

            controller: _controller,
            screens: [
              SubjectScreen(
                sujets: widget.sujets,
              ),
              HololScreen(
                solution: widget.solution,
              )
            ],
            items: [
              PersistentBottomNavBarItem(
                icon: Icon(Icons.subject),
                title: ("الموضوع"),
                textStyle: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontFamily: "Cairo",
                ),
                activeColorPrimary: CupertinoColors.activeGreen,
                inactiveColorPrimary: textT,
              ),
              PersistentBottomNavBarItem(
                icon: Icon(Icons.task),
                title: ("التصحيح"),
                textStyle: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontFamily: "Cairo",
                ),
                activeColorPrimary: CupertinoColors.activeGreen,
                inactiveColorPrimary: textT,
              ),
            ],
            confineToSafeArea: true,
            backgroundColor: background, // Default is Colors.white.
            handleAndroidBackButtonPress: true, // Default is true.
            resizeToAvoidBottomInset:
                true, // This needs to be true if you want to move up the screen when keyboard appears. Default is true.
            stateManagement: true, // Default is true.
          )),
    );
  }

  Future<void> Download() async {
    await FileDownloader.downloadFile(
      url: widget.sujets,
      notificationType: NotificationType.all,
      name: "${widget.name} دورة ${widget.year} موضوع",
    );
    await FileDownloader.downloadFile(
      url: widget.solution,
      notificationType: NotificationType.all,
      name: "${widget.name} دورة ${widget.year} تصحيح",
    );
  }

  void checkConnecitvity(List<ConnectivityResult> event) {
    if (event == ConnectivityResult.none) {
      print("no");
    } else {
      print("yes");
    }
  }
}

class HololScreen extends StatefulWidget {
  final solution;
  const HololScreen({Key? key, this.solution}) : super(key: key);

  @override
  _HololScreenState createState() => _HololScreenState();
}

class _HololScreenState extends State<HololScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(body: SfPdfViewer.network(widget.solution));
  }
}

class SubjectScreen extends StatefulWidget {
  final sujets;
  const SubjectScreen({Key? key, this.sujets}) : super(key: key);

  @override
  _SubjectScreenState createState() => _SubjectScreenState();
}

class _SubjectScreenState extends State<SubjectScreen> {
  @override
  Widget build(BuildContext context) {
    return SfPdfViewer.network(widget.sujets);
  }
}
