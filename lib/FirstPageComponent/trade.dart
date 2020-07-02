import 'package:flutter/material.dart';

class Trade extends StatelessWidget {
  final Widget trade = Container(
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
                  margin: EdgeInsets.only(bottom: 20),
                  decoration: BoxDecoration(
                    color: Colors.blue,
                    borderRadius: BorderRadius.circular(5)
                  ),
                  child: Text(
                    '注文状況',
                    style: TextStyle(
                      color: Colors.white
                    ),
                  ),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    Container(
                      child: Text(
                        //タップしたら約定照会ページに
                        '約定照会',
                        style: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.bold
                        ),
                      ),
                    ),
                    Row(
                      children: [
                        Container(
                          margin: EdgeInsets.only(right: 50),
                          child: Center(
                            child: Column(
                              children: <Widget>[
                                Text(
                                  '3',
                                  style: TextStyle(
                                    fontSize: 30
                                  ),
                                ),
                                Text(
                                  '約定',
                                  style: TextStyle(
                                    fontSize: 20
                                  ),
                                )
                              ],
                            ),
                          )

                        ),
                        Container(
                          margin: EdgeInsets.only(right: 20),
                          child: Column(
                            children: <Widget>[
                              Text(
                                '2',
                                style: TextStyle(
                                  fontSize: 30
                                ),
                              ),
                              Text(
                                '未約定',
                                style: TextStyle(
                                  fontSize: 20
                                ),
                              )
                            ],
                          ),
                        )
                      ]
                    ),
                  ],
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
      child: trade,
    );
  }
}