import 'package:flutter/material.dart';

class FirstPage extends StatelessWidget {
  final Widget assets = Container(
      margin: EdgeInsets.fromLTRB(0, 40, 0, 40),
      width: 300,
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

  final Widget trade = Container(
      margin: EdgeInsets.fromLTRB(0, 40, 0, 40),
      width: 300,
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

  final Widget stock = Container(
      margin: EdgeInsets.fromLTRB(0, 40, 0, 40),
      width: 300,
      height: 150,
      child: Card(
        child: (
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  margin: EdgeInsets.only(bottom: 20),
                  width: 400,
                  decoration: BoxDecoration(
                    color: Colors.blue,
                    borderRadius: BorderRadius.circular(5)
                  ),
                  child: Text(
                    '保有銘柄',
                    style: TextStyle(
                      color: Colors.white
                    ),
                  ),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    Container(
                      child: Column(
                        children: <Widget>[
                          Text(
                            '20',
                            style: TextStyle(
                              fontSize: 30
                            ),
                          ),
                          Text(
                            '保有銘柄数',
                            style: TextStyle(
                              fontSize: 18,
                              fontWeight: FontWeight.bold
                            ),
                          )
                        ],
                      ),
                    ),
                    Container(
                      child: Row(
                        children: [
                        Container(
                          margin: EdgeInsets.only(left: 20),
                          child: Column(
                            children: <Widget>[
                              Text(
                                '16',
                                style: TextStyle(
                                  fontSize: 30
                                ),
                              ),
                              Text(
                                '値上がり銘柄'
                              )
                            ]
                          ),
                        ),
                        Container(
                          margin: EdgeInsets.only(left: 20),
                          child: Column(
                            children:  <Widget>[
                              Text(
                                '4',
                                style: TextStyle(
                                  fontSize: 30
                                ),
                              ),
                              Text(
                                '値下がり銘柄',
                              )
                            ]
                          ),
                        ),
                      ]
                      ),
                    ),
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
    return Scaffold(
        appBar: AppBar(
          title: Text('Stock Demo Trade app'),
        ),
        body: Center(
          child: ListView(
            children: <Widget>[
              assets,
              trade,
              stock
            ],
          )
        ),
      );
  }
}