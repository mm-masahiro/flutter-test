import 'package:flutter/material.dart';
import 'package:my_app/SearchPage/SearchPageComponent/searchStock/search_result.dart';

class SearchCompany extends StatefulWidget {
	
	final String company;
	SearchCompany({
		this.company
	});

	@override
	_SearchCompany createState() => _SearchCompany();
}

class _SearchCompany extends State<SearchCompany> {

	final searchController = TextEditingController();

	void _navigateToNext(BuildContext context, String searchController) {
		Navigator.push(context, MaterialPageRoute(builder: (context) {
			return SearchResult(text: searchController);
		}));
	}

	@override
	Widget build(BuildContext context) {
		return Container(
			margin: EdgeInsets.only(top: 100),
			child: Column(
				children: <Widget>[
					Text("Search Company"),
					Container(
						padding: EdgeInsets.symmetric(horizontal: 40, vertical: 40),
						child: Column(
							children: <Widget>[
								Container(
									margin: EdgeInsets.only(bottom: 10),
									child: TextField(
										controller: searchController,
										decoration: InputDecoration(
											labelText: "Type Company",
											labelStyle: TextStyle(
												color: Colors.black
											),
											focusedBorder: OutlineInputBorder(
												borderSide: BorderSide(
													color: Colors.black
												)
											),
										),
									),
								),
								Container(
									child: RaisedButton.icon(
										icon: Icon(Icons.search),
										onPressed: () {
											// Navigator.push(context, MaterialPageRoute(builder: (context) {
											// 	return SearchReault();
											// }));
											_navigateToNext(context, "aa");
										},
										label: Text("Search"),
									),
								)
							],
						)
					),
					Row(
						mainAxisAlignment: MainAxisAlignment.spaceAround,
						children: <Widget>[
							RaisedButton.icon(
								icon: Icon(Icons.show_chart, color: Colors.yellow,),
								label: Text("Ranking!!"),
								onPressed: (){},
								color: Colors.blue,
								textColor: Colors.white,
								splashColor: Colors.white,
								shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
							),
							RaisedButton.icon(
								icon: Icon(Icons.business, color: Colors.yellow,),
								label: Text("Industory Ranking!!"),
								onPressed: (){},
								color: Colors.blue,
								splashColor: Colors.white,
								textColor: Colors.white,
								shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
							)
						],
					)
				],
			),
		);
	}
}

