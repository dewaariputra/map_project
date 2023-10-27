import 'package:flutter/material.dart';
import 'package:map_project/Detail.dart/Profile%20Desa.dart';
import 'package:map_project/Page/current_data_diagram.dart';
import 'package:syncfusion_flutter_charts/charts.dart';

class LineChart extends StatelessWidget {
  List<SalesData> data1 = [
    SalesData('jan', 35),
    SalesData('feb', 20),
    SalesData('mar', 32),
    SalesData('apr', 34),
    SalesData('may', 40),
  ];

  List<SalesData> data2 = [
    SalesData('jan', 20),
    SalesData('feb', 25),
    SalesData('mar', 18),
    SalesData('apr', 30),
    SalesData('may', 28),
  ];
  List<SalesData> data3 = [
    SalesData('jan', 40),
    SalesData('feb', 35),
    SalesData('mar', 8),
    SalesData('apr', 20),
    SalesData('may', 38),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('TimeSeries'),
        elevation: 10,
        backgroundColor: Colors.blueAccent,
      ),
      drawer: Drawer(
        child: ListView(
          children: [
            ListTile(
              title: const Text('Desa Ambengan'),
              onTap: () {
                Navigator.pop(context);
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => ProfileDesa()),
                );
              },
            ),
            ListTile(
              title: const Text('Current data'),
              onTap: () {
                Navigator.pop(context);
                Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => ProfileDesa(
                          
                          )),
                );
              },
            ),
          ],
        ),
      ),
      body: Column(
        children: [
          Container(
            height: 330,
            margin: EdgeInsets.only(bottom: 20),
            child: SfCartesianChart(
              primaryXAxis: CategoryAxis(),
              title: ChartTitle(text: 'Data Ambengan 1'),
              legend: Legend(
                isVisible: true,
              ),
              series: <ChartSeries<SalesData, String>>[
                LineSeries<SalesData, String>(
                  dataSource: data1,
                  xValueMapper: (SalesData sales, _) => sales.month,
                  yValueMapper: (SalesData sales, _) => sales.sales,
                  name: 'Pengunjung',
                  dataLabelSettings: DataLabelSettings(isVisible: true),
                ),
                LineSeries<SalesData, String>(
                  dataSource: data2,
                  xValueMapper: (SalesData sales, _) => sales.month,
                  yValueMapper: (SalesData sales, _) => sales.sales,
                  name: 'Wisata',
                  dataLabelSettings: DataLabelSettings(isVisible: true),
                ),
                LineSeries<SalesData, String>(
                  dataSource: data3,
                  xValueMapper: (SalesData sales, _) => sales.month,
                  yValueMapper: (SalesData sales, _) => sales.sales,
                  name: 'Atraksi',
                  dataLabelSettings: DataLabelSettings(isVisible: true),
                ),
              ],
            ),
          ),
          // Bagian kedua dari grafik
          Container(
            height: 330, // Atur tinggi grafik
            child: SfCartesianChart(
              primaryXAxis: CategoryAxis(),
              title: ChartTitle(text: 'Data Ambengan 2'),
              legend: Legend(
                isVisible: true,
              ),
              series: <ChartSeries<SalesData, String>>[
                LineSeries<SalesData, String>(
                  dataSource: data1,
                  xValueMapper: (SalesData sales, _) => sales.month,
                  yValueMapper: (SalesData sales, _) => sales.sales,
                  name: 'Pengunjung',
                  dataLabelSettings: DataLabelSettings(isVisible: true),
                ),
                LineSeries<SalesData, String>(
                  dataSource: data2,
                  xValueMapper: (SalesData sales, _) => sales.month,
                  yValueMapper: (SalesData sales, _) => sales.sales,
                  name: 'Wisata',
                  dataLabelSettings: DataLabelSettings(isVisible: true),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class SalesData {
  final String month;
  final double sales;

  SalesData(this.month, this.sales);
}
