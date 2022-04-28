import 'package:flutter/material.dart';
import 'package:fl_chart/fl_chart.dart';

class DashboardOnePage extends StatelessWidget {
  //static final String path = "lib/src/pages/dashboard/dash1.dart";


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).buttonColor,
      appBar: _buildAppBar(context),
      body: _buildBody(context),
    );
  }

  _buildBody(BuildContext context) {
    return CustomScrollView(
      slivers: <Widget>[
        _buildStats(),
        SliverToBoxAdapter(
          child: Padding(
            padding: const EdgeInsets.all(16.0),
            child: _buildTitledContainer("Placements",
                child: Container(
                    height: 450, child: DonutPieChart.withSampleData())),
          ),
        ),

      ],
    );
  }

  SliverPadding _buildStats() {
    final TextStyle stats = TextStyle(
        fontWeight: FontWeight.bold, fontSize: 20.0, color: Colors.white);
    return SliverPadding(
      padding: const EdgeInsets.all(16.0),
      sliver: SliverGrid.count(
        crossAxisSpacing: 16.0,
        mainAxisSpacing: 16.0,
        childAspectRatio: 1.5,
        crossAxisCount: 3,
        children: <Widget>[
          Container(
            padding: const EdgeInsets.all(8.0),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10.0),
              color: Colors.blue,
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Text(
                  "+500",
                  style: stats,
                ),
                const SizedBox(height: 5.0),
                Text("Leads".toUpperCase())
              ],
            ),
          ),
          Container(
            padding: const EdgeInsets.all(8.0),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10.0),
              color: Colors.pink,
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Text(
                  "+300",
                  style: stats,
                ),
                const SizedBox(height: 5.0),
                Text("Customers".toUpperCase())
              ],
            ),
          ),
          Container(
            padding: const EdgeInsets.all(8.0),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10.0),
              color: Colors.green,
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Text(
                  "+1200",
                  style: stats,
                ),
                const SizedBox(height: 5.0),
                Text("Orders".toUpperCase())
              ],
            ),
          ),
        ],
      ),
    );

  }



  AppBar _buildAppBar(BuildContext context) {
    return AppBar(
      iconTheme: IconThemeData(color:Colors.black),
      titleSpacing: 0.0,
      elevation: 0,
      backgroundColor: Colors.transparent,
      title: Text(
        "Placements",
        style: TextStyle(
            color: Colors.black, fontWeight: FontWeight.bold, fontSize: 20.0),
        textAlign: TextAlign.center,
      ),
    );
  }

  Widget _buildAvatar(BuildContext context) {
    return IconButton(
      iconSize: 40,
      padding: EdgeInsets.all(0),
      icon: CircleAvatar(
        backgroundColor: Colors.grey.shade300,
        child: CircleAvatar(radius: 16, backgroundImage: NetworkImage('https://images.unsplash.com/photo-1651056469394-28dc18171c6a?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxlZGl0b3JpYWwtZmVlZHw0fHx8ZW58MHx8fHw%3D&auto=format&fit=crop&w=500&q=60')),
      ),
      onPressed: () {},
    );
  }

  Container _buildTitledContainer(String title,
      {Widget? child, double? height}) {
    return Container(
      padding: const EdgeInsets.all(16.0),
      width: double.infinity,
      height: height,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20.0),
        color: Colors.white,
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Text(
            title,
            style: TextStyle(fontWeight: FontWeight.bold, fontSize: 28.0),
          ),
          if (child != null) ...[const SizedBox(height: 10.0), child]
        ],
      ),
    );
  }
}

class DonutPieChart extends StatelessWidget {
  final List<PieChartSectionData> seriesList;

  DonutPieChart(this.seriesList);

  /// Creates a [PieChart] with sample data and no transition.
  factory DonutPieChart.withSampleData() {
    return new DonutPieChart(
      _createSampleData(),
    );
  }

  @override
  Widget build(BuildContext context) {
    return PieChart(
      PieChartData(
        centerSpaceRadius: 100.0,
        sectionsSpace: 10.0,
        sections: seriesList,
      ),
      swapAnimationDuration: Duration(milliseconds: 150),
      swapAnimationCurve: Curves.linear,
    );
  }

  static List<PieChartSectionData> _createSampleData() {
    final data = [
      PieChartSectionData(
        value: 100,
        title: "Overall Placement",
        color: Colors.red.shade400,
        titleStyle: TextStyle(
          fontSize: 20,
          color: Colors.black,
          fontWeight: FontWeight.bold,
          letterSpacing: 2
        ),
        titlePositionPercentageOffset: 1,
      ),
      PieChartSectionData(
        title: "August",
        value: 75,
        color: Colors.blue.shade400,
        titleStyle: TextStyle(
            fontSize: 20,
            color: Colors.black,
            fontWeight: FontWeight.bold,
            letterSpacing: 2
        ),
        titlePositionPercentageOffset: 1,
      ),
      PieChartSectionData(
        title: "September",
        value: 25,
        color: Colors.green.shade400,
        titleStyle: TextStyle(
            fontSize: 20,
            color: Colors.black,
            fontWeight: FontWeight.bold,
            letterSpacing: 2
        ),
        titlePositionPercentageOffset: 1,
      ),
      PieChartSectionData(
        title: "Placements >9LPA",
        value: 60,
        color: Colors.purple.shade400,
        titleStyle: TextStyle(
            fontSize: 20,
            color: Colors.black,
            fontWeight: FontWeight.bold,
            letterSpacing: 1
        ),
        titlePositionPercentageOffset: 1,
      ),
    ];

    return data;
  }
}

