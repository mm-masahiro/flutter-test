import 'package:flutter/material.dart';
import 'package:my_app/SearchPage/SearchPageComponent/searchStock/search_company.dart';
// import '../../card-origin.dart';
import 'package:my_app/card-origin.dart';

// class SearchStock extends StatelessWidget {
//  final Widget searchStock = Container(
// 		child: GestureDetector(
// 			onTap: () {
// 				Navigator.push(context,
// 					MaterialPageRoute(builder: (context) {
// 						return FirstPage();
// 					})
// 				);
// 			},
			// child: CardOrigin(
			// 	title: Text(
			// 		'銘柄検索',
			// 		style: TextStyle(
			// 			color: Colors.white
			// 		)
			// 	),
			// 	icon: Icon(Icons.search, size: 80, color: Colors.indigoAccent,),
			// 	text: Text(
			// 		'検索',
			// 		style: TextStyle(
			// 			fontSize: 25,
			// 			fontWeight: FontWeight.bold
			// 		),
			// 	),
			// ),
		// ),
// 	);

//   @override
//   Widget build(BuildContext context) {
//     return Container(
//       child: searchStock,
//     );
//   }
// }

class SearchStock extends StatelessWidget {
	@override
	Widget build(BuildContext context) {
		return GestureDetector(
			onTap: () {
				Navigator.push(context,
					MaterialPageRoute(builder: (context) {
						// return SearchCompany();
					})
				);
			},
			child: CardOrigin(
				title: Text(
					'銘柄検索',
					style: TextStyle(
						color: Colors.white
					)
				),
				icon: Icon(Icons.search, size: 80, color: Colors.indigoAccent,),
				text: Text(
					'検索',
					style: TextStyle(
						fontSize: 25,
						fontWeight: FontWeight.bold
					),
				),
			),
		);
	}
}
