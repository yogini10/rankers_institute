import 'package:flutter/material.dart';
import 'package:rankers_institute/globals.dart' as g;
import 'package:rankers_institute/screens/frontPage.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: MyHomePage(title: 'Ranker\'s Institute'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    //for once giving the screen width and height to global variables
    g.width = MediaQuery.of(context).size.width;
    g.height = MediaQuery.of(context).size.height;
    return SafeArea(
        //not allowing screen behind status bar
        child: GestureDetector(
      //helping in detection of common gestures on screen
      //to take focus out of textfield when clicked outside
      onTap: () {
        FocusScopeNode currentFocus = FocusScope.of(context);
        if (!currentFocus.hasPrimaryFocus) {
          currentFocus.unfocus();
        }
      },
      child: MaterialApp(
        home: FrontPage(),
        debugShowCheckedModeBanner: false,
      ),
    ));
  }
}
