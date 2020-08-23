// import 'package:flutter/material.dart';
// import 'package:my_app/SearchPage/SearchPageComponent/searchStock/show_stock_functions/NYstock.dart';
// import 'package:my_app/SearchPage/SearchPageComponent/searchStock/show_stock_functions/stock_model.dart';

// class NYstockPage extends StatefulWidget {
// 	@override
// 	_NYstockPageState createState() => _NYstockPageState();
// }

// class _NYstockPageState extends State<NYstockPage> {

// 	List<StockModel> stocks = List<StockModel>();
// 	NYstock nystockClass = NYstock();


// 	@override
// 	void initState() {
// 		super.initState();
// 		getStock();
// 	}

// 	void getStock() async {
// 		await nystockClass.getStock();
// 		stocks = nystockClass.stock;
// 	}

// 	Widget build(BuildContext context) {
// 		return Scaffold(
// 			appBar: AppBar(
// 				title: Text(
// 					'NY Stock',
// 					style: TextStyle(
// 						color: Colors.white
// 					),
// 				),
// 				backgroundColor: Colors.blue,
// 			),
// 			body: Column(
// 				children: [
// 					Text('aa'),
// 					ListView.builder(
// 						itemCount: stocks.length,
// 						shrinkWrap: true,
// 						itemBuilder: (context, index) {
// 							return StockTile(
// 								ticker: stocks[index].ticker,
// 							);
// 						},
// 					)
// 				],
// 			),
// 		);
// 	}
// }


// class StockTile extends StatelessWidget  {
	
// 	final String ticker;

// 	StockTile({
// 		@required this.ticker
// 	});

// 	@override
// 	Widget build(BuildContext context) {
// 		return Container(
// 			child: Text(ticker),
// 		);
// 	}
// }
