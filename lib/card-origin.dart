import 'package:flutter/material.dart';

class CardOrigin extends StatelessWidget {
  final Text title;
  final Icon icon;
  final Text text;

  CardOrigin({this.title, this.icon, this.text});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.fromLTRB(0, 40, 0, 40),
      width: 400,
      height: 150,
      child: Card(
        child: (Expanded(
            child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
                width: 400,
                decoration: BoxDecoration(
                    color: Colors.blue, borderRadius: BorderRadius.circular(5)),
                child: title),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Container(
                  child: SizedBox(
                    height: 120,
                    width: 100,
                    child: Align(
                      alignment: Alignment.center,
                      child: icon,
                    ),
                  ),
                ),
                Container(
                  child: SizedBox(
                    width: 200,
                    child: Align(
                      alignment: Alignment.center,
                      child: text,
                    ),
                  ),
                )
              ],
            )
          ],
        ))),
      ),
    );
  }
}
