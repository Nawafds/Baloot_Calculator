import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/services.dart';

class AddScore extends StatelessWidget {
  final Function _addScore;

  AddScore(this._addScore);

  @override
  Widget build(BuildContext context) {
    final _teamOneScore = TextEditingController();
    final _teamTwoScore = TextEditingController();
    final deviceWidth = MediaQuery.of(context).size.width;
    final deviceHight = MediaQuery.of(context).size.height;
    final button = CupertinoButton(
      child: const Text('سجل'),
      color: Colors.lightGreen,
      onPressed: () => _addScore(
          int.parse(_teamOneScore.text), int.parse(_teamTwoScore.text)),
    );

    return Column(
      children: [
        Container(
          margin: EdgeInsets.only(
              top: deviceHight * 0.02, bottom: deviceHight * 0.02),
          child:
              Row(mainAxisAlignment: MainAxisAlignment.spaceEvenly, children: [
            SizedBox(
              width: deviceWidth * 0.25,
              height: deviceHight * 0.05,
              child: CupertinoTextField(
                controller: _teamOneScore,
                inputFormatters: [FilteringTextInputFormatter.digitsOnly],
                keyboardType: TextInputType.number,
              ),
            ),
            SizedBox(
              width: deviceWidth * 0.25,
              height: deviceHight * 0.05,
              child: CupertinoTextField(
                controller: _teamTwoScore,
                keyboardType: TextInputType.number,
              ),
            )
          ]),
        ),
        button,
      ],
    );
  }
}
