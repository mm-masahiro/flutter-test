import 'package:flutter/material.dart';
import 'package:my_app/card-origin.dart';
import 'package:my_app/MyPage/MyPageComponent/login.dart';

// class AssetStatus extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return Container(
      // child: CardOrigin(
      //   title: Text(
      //     '資産詳細',
      //     style: TextStyle(
      //       color: Colors.white
      //     ),
      //   ),
      //   icon: Icon(Icons.monetization_on, size: 80,),
      // ),
//     );
//   }
// }

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
          Navigator.push(context, MaterialPageRoute(
            builder: (context) {
              return Login();
            },
          ));
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