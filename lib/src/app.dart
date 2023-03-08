import 'package:flutter/material.dart';
import 'package:knight/res/theme/my_theme.dart';
import 'package:knight/src/gameOptions/chooseBoard.dart';
import 'package:knight/src/mac/mac_title_bar.dart';
import 'package:knight/src/play_game.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: myTheme(),
      // home: const MacTitleBar(
      //   title: 'Knight\'s Tour',
      //   child: ChooseBoard(),
      // ),
      onGenerateRoute: routes,
      debugShowCheckedModeBanner: false,
    );
  }

  Route routes(RouteSettings settings) {
    switch (settings.name) {
      case '/':
        return MaterialPageRoute(
          builder: (context) {
            return const MacTitleBar(
              title: 'Knight\'s Tour',
              child: ChooseBoard(),
            );
          },
        );
      case '/play':
        return MaterialPageRoute(
          builder: (context) {
            return const MacTitleBar(
              title: 'Knight\'s Tour',
              child: PlayGame(),
            );
          },
        );
      default:
        return MaterialPageRoute(
          builder: (context) {
            return const MacTitleBar(
              title: 'Knight\'s Tour',
              child: Center(
                child: Text(
                  "PAGE NOT FOUND",
                  textScaleFactor: 4.0,
                ),
              ),
            );
          },
        );
    }
  }
}
