import 'package:flutter/material.dart';
import 'package:rankers_institute/models/test.dart';
import 'package:syncfusion_flutter_charts/charts.dart';
import 'package:rankers_institute/globals.dart' as g;

class TeaAnalysis extends StatefulWidget {
  final Map testd;

  const TeaAnalysis({Key key, this.testd}) : super(key: key);
  @override
  _TeaAnalysisState createState() => _TeaAnalysisState();
}

class _TeaAnalysisState extends State<TeaAnalysis> {
  String dropdownValue3;

  List<LineSeries<TestTea, String>> getgraph() {
    return List.generate(
      widget.testd[dropdownValue3].length,
      (i) => LineSeries<TestTea, String>(
          markerSettings: MarkerSettings(isVisible: true),
          dataLabelMapper: (TestTea test, _) => 'Roll no: ' + test.name,
          enableTooltip: true,
          xAxisName: 'Test Type',
          yAxisName: 'Marks',
          dataSource: widget.testd[dropdownValue3][i],
          xValueMapper: (TestTea test, _) => test.test,
          yValueMapper: (TestTea test, _) => test.marks,
          name: 'Test Data',
          // Enable data label
          dataLabelSettings: DataLabelSettings(
            isVisible: true,
          )),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xffcaf0f8),
      body: Center(
        child: Padding(
          padding: EdgeInsets.only(left: g.width * 0.05, right: g.width * 0.05),
          child: ListView(
            children: [
              Container(
                decoration: BoxDecoration(color: Colors.white, boxShadow: [
                  BoxShadow(
                    color: const Color(0x24000000),
                    spreadRadius: 7,
                    offset: Offset(6, 3),
                    blurRadius: 12,
                  ),
                ]),
                child: DropdownButton<String>(
                  isExpanded: true,
                  value: dropdownValue3,
                  elevation: 16,
                  hint: Text('Class ID'),
                  style: g.loginpgstyles(
                    Color(0xff000000),
                  ),
                  onChanged: (String newValue) {
                    setState(() {
                      dropdownValue3 = newValue;
                    });
                  },
                  items:
                      widget.testd.keys.map<DropdownMenuItem<String>>((value) {
                    return DropdownMenuItem<String>(
                      value: value,
                      child: Text(
                        value,
                        style: g.loginpgstyles(
                          Color(0xff000000),
                        ),
                      ),
                    );
                  }).toList(),
                ),
              ),
              SizedBox(
                height: g.height * 0.1,
              ),
              dropdownValue3 != null
                  ? SfCartesianChart(
                      backgroundColor: Colors.white,
                      primaryXAxis: CategoryAxis(),
                      title: ChartTitle(text: 'Class wise data'),
                      // legend: Legend(isVisible: true),
                      tooltipBehavior: TooltipBehavior(enable: true),
                      series: getgraph())
                  : Center(
                      child: Container(
                        padding: EdgeInsets.symmetric(
                            horizontal: g.width * 0.05,
                            vertical: g.height * 0.025),
                        decoration: BoxDecoration(
                          color: Color(0xff0077b6).withOpacity(0.5),
                          borderRadius: BorderRadius.circular(10),
                        ),
                        child: Text(
                          'Select a Subject to view analysis',
                          style: TextStyle(fontSize: 20),
                          textAlign: TextAlign.center,
                        ),
                      ),
                    ),
            ],
          ),
        ),
      ),
    );
  }
}
