import 'dart:math';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ChooseBoard extends StatefulWidget {
  const ChooseBoard({super.key});

  @override
  State<ChooseBoard> createState() => _ChooseBoardState();
}

class _ChooseBoardState extends State<ChooseBoard> {
  // final iconCurve = Radius.elliptical(x, y);
  double appBarHeight = 45.0;
  double iconMargin = 5.3;
  static List<String> options = List<String>.generate(
    6,
    (index) => "${index + 4}X${index + 4}",
  );
  List<bool> isHovering = List<bool>.filled(options.length, false);

  @override
  Widget build(BuildContext context) {
    final h = appBarHeight - 2 * iconMargin;
    final iconCurve = Radius.circular(h);
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(appBarHeight),
        child: AppBar(
          leading: Container(
            margin:
                EdgeInsets.fromLTRB(0, iconMargin, iconMargin + 8, iconMargin),
            decoration: BoxDecoration(
              color: Theme.of(context).primaryColor,
              borderRadius: BorderRadius.only(
                topRight: iconCurve,
                bottomRight: iconCurve,
              ),
            ),
            child: Transform.translate(
              offset: Offset(-2, 0),
              child: Icon(CupertinoIcons.home),
            ),
          ),
          // TODO add "atleast you can in game" while hoverring
          title: const Text("Pick The Size"),
          // backgroundColor: Colors.black,
        ),
      ),
      body: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Flexible(
            flex: 5,
            // TODO should i rather use row and column at this point ?
            child: selectBoardSize(context),
          ),
          Flexible(
            child: Center(
              child: FilledButton(
                style: ElevatedButton.styleFrom(
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.all(
                      Radius.circular(5.0),
                    ),
                  ),
                ),
                onPressed: () {
                  print("object");
                },
                // buttonSize: ButtonSize.small,
                child: Container(
                  height: 40.0,
                  width: 100.0,
                  alignment: Alignment.center,
                  child: TextButton(
                    // TODO check about macOS routes
                    onPressed: () => Navigator.pushNamed(context, '/play'),
                    child: Text(
                      "START",
                      textAlign: TextAlign.center,
                      textScaleFactor: 2.0,
                    ),
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget selectBoardSize(BuildContext context) {
    final hPadding = 40.0;
    final hSpacing = 16.0;
    // final width = MediaQuery.of(context).size.width;
    // double maxCross(int maxCross) =>
    // (width - (2 * hPadding) - (2 * hSpacing)) / maxCross;
    return GridView.builder(
      padding: EdgeInsets.symmetric(vertical: 22, horizontal: hPadding),
      itemCount: options.length,
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: options.length ~/ 2,
        mainAxisSpacing: hSpacing / 2,
        crossAxisSpacing: hSpacing / 2,
      ),
      itemBuilder: (context, index) {
        final opt = options[index];
        return AnimatedContainer(
          curve: Curves.easeInOutExpo,
          duration: Duration(milliseconds: 100),
          padding: isHovering[index]
              ? EdgeInsets.zero
              : EdgeInsets.all(hSpacing / 2),
          child: InkWell(
            onTap: () {},
            onHover: (hover) {
              setState(() {
                isHovering[index] = hover;
              });
            },
            child: Container(
              alignment: Alignment.center,
              decoration: BoxDecoration(
                color: Colors.white38,
                borderRadius: BorderRadius.circular(4.0),
              ),
              // TODO if child == text; then
              // make text bigger with the container
              child: Text(opt),
            ),
          ),
        );
      },
    );
  }

  Widget customBoardSize(BuildContext context) {
    final gridSize = 81;
    return Flexible(
      child: GridView.builder(
        itemCount: gridSize,
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: sqrt(gridSize).toInt(),
          mainAxisSpacing: 8.0,
          crossAxisSpacing: 8.0,
        ),
        itemBuilder: (context, index) {
          return Container(
            decoration: BoxDecoration(
              color: Colors.white38,
              borderRadius: BorderRadius.circular(4.0),
            ),
            child: Text("Grid #$index"),
          );
        },
      ),
    );
  }
}
