class DashboardData{
  final String title;
  final String amount;
  final String currency;
  final String percent;
  final bool isGrowth;
  final List<ChartData>dataList;
  DashboardData({required this.title,required this.amount,required this.percent,required this.currency,required this.isGrowth,required this.dataList});
}

List<DashboardData>dashboardDataList=[
  DashboardData(title: "MARKET CAP", amount: "\$2,24M", percent: "5.7 %", currency: "USD", isGrowth: true, dataList:  [
  ChartData(2010, 35),
  ChartData(2011, 13),
  ChartData(2012, 34),
  ChartData(2013, 27),
  ChartData(2014, 40),
  ChartData(2015, 35),
  ChartData(2016, 13),
  ChartData(2017, 34),
  ChartData(2018, 27),
  ChartData(2019, 40)
]),
  DashboardData(title: "VOLUME", amount: "\$645K", percent: "6.9 %", currency: "USD", isGrowth: true, dataList:  [
    ChartData(2010, 25),
    ChartData(2011, 33),
    ChartData(2012, 54),
    ChartData(2013, 87),
    ChartData(2014, 20),
    ChartData(2015, 85),
    ChartData(2016, 23),
    ChartData(2017, 34),
    ChartData(2018, 67),
    ChartData(2019, 100)
  ]),
  DashboardData(title: "CIRCULATING SUPPLY", amount: "\$321.7K", percent: "4.2 %", currency: "XRP", isGrowth: false, dataList:  [
    ChartData(2010, 95),
    ChartData(2011, 13),
    ChartData(2012, 3324),
    ChartData(2013, 27),
    ChartData(2014, 44),
    ChartData(2015, 356),
    ChartData(2016, 14),
    ChartData(2017, 31),
    ChartData(2018, 276),
    ChartData(2019, 43)
  ]),
  DashboardData(title: "ALL-TIME HIGH", amount: "\$71.2K", percent: "6.3 %", currency: "USD", isGrowth: false, dataList:  [
    ChartData(2010, 15),
    ChartData(2011, 23),
    ChartData(2012, 35),
    ChartData(2013, 37),
    ChartData(2014, 40),
    ChartData(2015, 85),
    ChartData(2016, 73),
    ChartData(2017, 64),
    ChartData(2018, 97),
    ChartData(2019, 40)
  ]),
  
];






class ChartData {
  ChartData(this.x, this.y);
  final int x;
  final double? y;
}