import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import './widget/round_list.dart';
import './widget/team_title.dart';
import './widget/add_score.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Baloot Calculator',
      home: HomePage(),
    );
  }
}

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final List<int> team1 = [];
  final List<int> team2 = [];

  @override
  Widget build(BuildContext context) {
    final deviceWidth = MediaQuery.of(context).size.width;
    final deviceHight = MediaQuery.of(context).size.height;
    final clearButton = SizedBox(
      child: CupertinoButton(
        child: const Text('تراجع'),
        color: Colors.lightGreen,
        onPressed: () {
          setState(() {
            team1.removeLast();
            team2.removeLast();
          });
        },
      ),
      height: deviceHight * 0.06,
      width: deviceWidth * 0.45,
    );

    void _resetGame() {
      setState(() {
        team1.clear();
        team2.clear();
      });
    }

    final goBackButton = SizedBox(
      child: CupertinoButton(
        child: const Text('صكه جديدة'),
        color: Colors.lightGreen,
        onPressed: _resetGame,
      ),
      height: deviceHight * 0.06,
      width: deviceWidth * 0.45,
    );

    void _addScore(int t1, int t2) {
      setState(() {
        team1.add(t1);
        team2.add(t2);
      });
    }

    return GestureDetector(
      onTap: () {
        FocusManager.instance.primaryFocus?.unfocus();
      },
      child: CupertinoPageScaffold(
        navigationBar: CupertinoNavigationBar(
          // Try removing opacity to observe the lack of a blur effect and of sliding content.
          backgroundColor: CupertinoColors.darkBackgroundGray,
          middle: const Text(
            'حسبة بلوت',
            style: TextStyle(
                color: Colors.lightGreen, fontWeight: FontWeight.bold),
          ),
        ),
        child: SingleChildScrollView(
          child: Column(
            children: [
              TeamTitle(),
              AddScore(_addScore),
              Container(
                margin: EdgeInsets.only(
                    left: deviceWidth * 0.1,
                    right: deviceWidth * 0.1,
                    bottom: deviceHight * 0.05,
                    top: deviceHight * 0.02),
                child: IntrinsicHeight(
                  child: Row(
                    children: <Widget>[
                      Rounds_list(team1),
                      VerticalDivider(
                        color: Colors.black,
                        thickness: 2,
                      ),
                      Rounds_list(team2),
                    ],
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  ),
                ),
                color: Colors.blueGrey[50],
              ),
              Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [clearButton, goBackButton]),
            ],
          ),
        ),
      ),
    );
  }
}
