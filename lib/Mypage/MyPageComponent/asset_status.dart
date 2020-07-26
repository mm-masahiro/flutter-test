import 'package:flutter/material.dart';
import 'package:my_app/card-origin.dart';

class AssetStatus extends StatefulWidget {
  
  @override
  _AssetStatus createState() => _AssetStatus();

}

class _AssetStatus extends State<AssetStatus> {

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: (){
        setState(() {
          
        });
      },
      child: CardOrigin(
        title: Text(
          '資産詳細',
          style: TextStyle(
            color: Colors.white
          ),
        ),
        icon: Icon(Icons.monetization_on, size: 80,),
      ),
    );
  }
}
