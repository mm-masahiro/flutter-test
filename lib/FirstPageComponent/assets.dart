import 'package:flutter/material.dart';

class  Assets extends StatelessWidget {

    final Widget assets = Container(
      margin: EdgeInsets.fromLTRB(0, 40, 0, 40),
      width: 400,
      height: 150,
      child: Card(
        child: (
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  width: 400,
                  decoration: BoxDecoration(
                    color: Colors.blue,
                    borderRadius: BorderRadius.circular(5)
                  ),
                  child: Text(
                    '純資産',
                    style: TextStyle(
                      color: Colors.white
                    ),
                  ),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                      child: Align(
                        alignment: Alignment.bottomLeft,
                        child: Text(
                          '↑↓'
                        ),
                      ),
                    ),
                    Container(
                      child: Align(
                        alignment: Alignment.centerRight,
                        child: Column(
                          children: <Widget>[
                            Text(
                              '123455円',
                              style: TextStyle(
                                fontSize: 40
                              ),
                            ),
                            Text(
                              '前日比　xxx円',
                              style: TextStyle(
                                fontSize: 20
                              ),
                            )
                          ]
                        ),
                      ),
                    )
                  ]
                )
              ]
            ),
          )
        )
      ),
    );

    @override
    Widget build(BuildContext context) {
      return Container(
        child: assets,
      );
    }
}