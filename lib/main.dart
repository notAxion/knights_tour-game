import 'package:flutter/material.dart';
import 'package:knight/res/palette/swatch.dart';
import 'package:knight/src/gameOptions/chooseBoard.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        // This is the theme of your application.
        //
        // Try running your application with "flutter run". You'll see the
        // application has a blue toolbar. Then, without quitting the app, try
        // changing the primarySwatch below to Colors.green and then invoke
        // "hot reload" (press "r" in the console where you ran "flutter run",
        // or simply save your changes to "hot reload" in a Flutter IDE).
        // Notice that the counter didn't reset back to zero; the application
        // is not restarted.
        // primarySwatch: Colors.deepPurple,
        primarySwatch: Palette.purpleX,
        primaryColor: Colors.deepPurple.shade900,
        appBarTheme: const AppBarTheme(
          centerTitle: true,
          backgroundColor: Color(0x00000000),
          elevation: 0,
        ),
        scaffoldBackgroundColor: Color(0xFF1A1A1A),
        brightness: Brightness.dark,
        iconTheme: IconThemeData(
          color: Colors.deepPurple.shade900,
          size: 18.0,
        ),
        fontFamily: 'SFPro',
      ),
      home: const MyHomePage(title: 'Knight\'s Tour'),
      debugShowCheckedModeBanner: false,
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  // This widget is the home page of your application. It is stateful, meaning
  // that it has a State object (defined below) that contains fields that affect
  // how it looks.

  // This class is the configuration for the state. It holds the values (in this
  // case the title) provided by the parent (in this case the App widget) and
  // used by the build method of the State. Fields in a Widget subclass are
  // always marked "final".

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0;

  void _incrementCounter() {
    setState(() {
      // This call to setState tells the Flutter framework that something has
      // changed in this State, which causes it to rerun the build method below
      // so that the display can reflect the updated values. If we changed
      // _counter without calling setState(), then the build method would not be
      // called again, and so nothing would appear to happen.
      _counter++;
    });
  }

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
          backgroundColor: Color(0x44000000),
          // Here we take the value from the MyHomePage object that was created by
          // the App.build method, and use it to set our appbar title.
          title: Text(
            widget.title,
            // change the font to sf pro
            // textScaleFactor: 0.8,
            style: TextStyle(
              fontFamily: 'SFPro',
              fontSize: 13,
            ),
          ),
        ),
      ),
      body: Container(
        margin: const EdgeInsets.fromLTRB(1.3, 0, 1.3, 1.3),
        child: ChooseBoard(),
      ),
    );
  }
}
