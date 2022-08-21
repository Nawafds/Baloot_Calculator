import 'package:flutter/material.dart';
import 'package:collection/collection.dart';

class Rounds_list extends StatelessWidget {
  final List<int> _entry;

  Rounds_list(this._entry);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: SizedBox(
        height: MediaQuery.of(context).size.height * 0.5,
        child: ListView.builder(
          itemBuilder: (ctx, index) {
            return Container(
                margin: EdgeInsets.only(
                    bottom: MediaQuery.of(context).size.height * 0.05),
                child: Column(children: [
                  Text(
                    _entry[index].toString(),
                    textAlign: TextAlign.center,
                    style: const TextStyle(
                      decoration: TextDecoration.none,
                      fontSize: 20,
                      color: Colors.lightGreen,
                      fontWeight: FontWeight.normal,
                    ),
                  ),
                  const Text(
                    '-----',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      decoration: TextDecoration.none,
                      fontSize: 20,
                      color: Colors.lightGreen,
                      fontWeight: FontWeight.normal,
                    ),
                  ),
                  Text(
                    _entry.sum.toString(),
                    textAlign: TextAlign.center,
                    style: const TextStyle(
                      decoration: TextDecoration.none,
                      fontSize: 20,
                      color: Colors.lightGreen,
                      fontWeight: FontWeight.normal,
                    ),
                  ),
                ]));
          },
          itemCount: _entry.length,
        ),
      ),
      width: MediaQuery.of(context).size.width * 0.3,
    );
  }
}
