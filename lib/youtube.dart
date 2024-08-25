import 'package:bac_2025/ui/gradients.dart';
import 'package:flutter/material.dart';

class Youtube extends StatefulWidget {
  const Youtube({super.key});

  @override
  State<Youtube> createState() => _YoutubeState();
}

class _YoutubeState extends State<Youtube> {
  @override
  Widget build(BuildContext context) {
    return Directionality(
      textDirection: TextDirection.rtl,
      child: Scaffold(
        appBar: AppBar(
          title: Text(
            "قنوات يوتيوب",
            style: TextStyle(color: textT),
          ),
        ),
      ),
    );
  }
}
