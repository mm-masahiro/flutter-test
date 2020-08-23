class StockModel {

	String ticker;
	DateTime date;
	double open;
	double high;
	double low;
	double close;
	double volume;
	double dividends;
	double closeunadj;
	DateTime lastupdated;

	StockModel({
		this.ticker,
		this.date,
		this.open,
		this.high,
		this.low,
		this.close,
		this.volume,
		this.dividends,
		this.closeunadj,
		this.lastupdated
	});

}
