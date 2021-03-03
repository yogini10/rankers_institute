import 'package:flutter/material.dart';

class StuAnalysis extends StatefulWidget {
  @override
  _StuAnalysisState createState() => _StuAnalysisState();
}

class _StuAnalysisState extends State<StuAnalysis> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          children: [
            Text('Analysis'),
            RawMaterialButton(
              onPressed: null,
              child: Container(),
            ),
            RawMaterialButton(
              onPressed: null,
              child: Container(),
            ),
          ],
        ),
      ),
    );
  }
}
