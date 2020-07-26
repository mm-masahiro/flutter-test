import 'package:flutter/material.dart';
import 'package:my_app/card-origin.dart';

class StockStatus extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: CardOrigin(
        title: Text(
          '保有銘柄詳細',
          style: TextStyle(
            color: Colors.white
          ),
        ),
        icon: Icon(Icons.folder, size: 80),
        width: 200,
      ),
    );
  }
}
