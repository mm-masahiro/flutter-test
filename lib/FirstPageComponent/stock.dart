import 'package:flutter/material.dart';
import 'package:my_app/card-origin.dart';

class Stock extends StatelessWidget {
  
  @override
  Widget build(BuildContext context) {
    return Container(
			height: 150,
      child: CardOrigin(
				name: "Stock",
			),
    );
  }
}
