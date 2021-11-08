import 'package:flutter/material.dart';

class Result extends StatelessWidget {
  final int resultScore;
  final Function resetHandler;

  Result(this.resultScore, this.resetHandler);

  String get resultPhrase {
    String resultStr;

    if (resultScore <= 8) {
      resultStr = "You are awesome and innocent!!";
    } else if (resultScore <= 12) {
      resultStr = "You are ok!";
    } else if (resultScore <= 16) {
      resultStr = "You are not bad!!";
    } else {
      resultStr = "You are bad!!";
    }

    return resultStr;
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(children: <Widget>[
        Text(
          resultPhrase,
          style: TextStyle(fontSize: 36, fontWeight: FontWeight.bold),
          textAlign: TextAlign.center,
        ),
        ElevatedButton(onPressed: resetHandler, child: Text("Restart quiz"))
      ]),
    );
  }
}
