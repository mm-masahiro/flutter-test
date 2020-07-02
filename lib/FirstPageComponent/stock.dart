import 'package:flutter/material.dart';

class Stock extends StatelessWidget {
  final Widget stock = Container(
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
    return Container(
      child: stock,
    );
  }
}