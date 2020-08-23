// import 'dart:convert';
// import 'dart:ffi';
// import 'package:http/http.dart' as http;
// import 'package:my_app/SearchPage/SearchPageComponent/searchStock/show_stock_functions/stock_model.dart';

// class NYstock {
	
// 	List<StockModel> stock = [];

// 	Future<void> getStock() async {
// 		String url = "https://www.quandl.com/api/v3/datatables/SHARADAR/SEP?date=2018-12-31&ticker=XOM&api_key=sY73B9gKa1HLwzsf5Sd-";

// 		var response = await http.get(url);

// 		var jsonData = jsonDecode(response.body);

// 		jsonData["colums"].forEach((element) {
// 			StockModel stockModel = StockModel(
// 				ticker: element['ticker'],
// 				date: element['date'],
// 				open: element['open'],
// 				high: element['high'],
// 				low: element['low'],
// 				close: element['close'],
// 				volume: element['volume'],
// 				dividends: element['dividends:'],
// 				closeunadj: element['closeunadj'],
// 				lastupdated: element['lastupdated'],
// 			);
// 			stock.add(stockModel);
// 		});

// 	}
// }
