import 'package:flutter/material.dart';

class CardOrigin extends StatelessWidget {
  final Text title;
  final Icon icon;
  final Text text;
  final double width;
	final String name;
	final String amount;

  CardOrigin({
    this.title,
    this.icon,
    this.text,
    this.width,
		this.name,
		this.amount
  });

  @override
  Widget build(BuildContext context) {
  //   return Container(
  //     margin: EdgeInsets.fromLTRB(0, 40, 0, 40),
  //     width: width,
  //     height: 150,
  //     child: Card(
  //       child: (Expanded(
  //           child: Column(
  //         crossAxisAlignment: CrossAxisAlignment.start,
  //         children: [
  //           Container(
  //               width: 400,
  //               decoration: BoxDecoration(
  //                   color: Colors.blue, borderRadius: BorderRadius.circular(5)),
  //               child: title),
  //           Row(
  //             mainAxisAlignment: MainAxisAlignment.spaceBetween,
  //             children: <Widget>[
  //               Container(
  //                 child: SizedBox(
  //                   height: 120,
  //                   width: 100,
  //                   child: Align(
  //                     alignment: Alignment.center,
  //                     child: icon,
  //                   ),
  //                 ),
  //               ),
  //               Container(
  //                 child: SizedBox(
  //                   width: 200,
  //                   child: Align(
  //                     alignment: Alignment.center,
  //                     child: text,
  //                   ),
  //                 ),
  //               )
  //             ],
  //           )
  //         ],
  //       ))),
  //     ),
  //   );
  // }
		return Card(
			elevation: 4.0,
			child: InkWell(
				onTap: () => print("tapped"),
				child: Container(
					padding: EdgeInsets.only(top: 15, bottom: 15, right: 15),
					decoration: BoxDecoration(
						borderRadius: BorderRadius.circular(22),
					),
					child: Row(
						mainAxisAlignment: MainAxisAlignment.start,
						children: <Widget>[
							Padding(
								padding: EdgeInsets.only(left: 10, right: 20),
								child: Icon(
									Icons.monetization_on,
									color: Colors.cyan,
									size: 40,
								),
							),
							Expanded(
								child: Column(
									crossAxisAlignment: CrossAxisAlignment.start,
									mainAxisAlignment: MainAxisAlignment.center,
									children: <Widget>[
										Column(
											children: <Widget>[
												Align(
													alignment: Alignment.center,
													child: Text(
														name,
														textAlign: TextAlign.center,
														style: TextStyle(
															fontSize: 20,
															fontWeight: FontWeight.bold,
															color: Colors.cyan
														),
													),
												),
												Align(
													alignment: Alignment.center,
													child: Text(
														"$amount",
														style: TextStyle(
															fontSize: 25,
															fontWeight: FontWeight.w900,
															color: Colors.grey[800]
														),
													),
												)
											],
										)
									],
								),
							)
						],
					),
				),
			),
		);
	}
}
