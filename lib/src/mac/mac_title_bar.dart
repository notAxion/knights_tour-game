import 'package:flutter/material.dart';

class MacTitleBar extends StatelessWidget {
  final String title;
  final Widget child;
  final Color? color;

  const MacTitleBar({
    super.key,
    required this.title,
    required this.child,
    this.color,
  });

  @override
  Widget build(BuildContext context) {
    // This method is rerun every time setState is called, for instance as done
    // by the _incrementCounter method above.
    //
    // The Flutter framework has been optimized to make rerunning build methods
    // fast, so that you can just rebuild anything that needs updating rather
    // than having to individually change instances of widgets.
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: const Size.fromHeight(28.0),
        child: AppBar(
          backgroundColor: color ?? const Color(0x44000000),
          // Here we take the value from the MyHomePage object that was created by
          // the App.build method, and use it to set our appbar title.
          title: Text(
            title,
            // change the font to sf pro
            // textScaleFactor: 0.8,
            style: const TextStyle(
              fontFamily: 'SFPro',
              fontSize: 13,
            ),
          ),
        ),
      ),
      body: Container(
        margin: const EdgeInsets.fromLTRB(1.3, 0, 1.3, 1.3),
        child: child,
      ),
    );
  }
}
