import 'package:flutter/material.dart';

class  SearchCard extends StatelessWidget {

  final Text title;

  SearchCard({
    this.title,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
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
                  child: title
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    Container(
                      child: Align(
                        alignment: Alignment.bottomLeft,
                        // child: text,
                      ),
                    ),
                    Container(
                      child: Align(
                        alignment: Alignment.centerRight,
                        child: Column(
                          children: <Widget>[
                            // text,
                            // text,
                          ],
                        ),
                      ),
                    )
                  ],
                )
              ],
            )
          )
        ),
      ),
    );
  } 
}