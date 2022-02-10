import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
primarySwatch: Colors.blue,
      ),
      home: const InkwellWidgetScreenExp(),
    );
  }
}

class InkwellWidgetScreenExp extends StatefulWidget {
  const InkwellWidgetScreenExp({Key? key}) : super(key: key);

  @override
  _InkwellWidgetScreenExpState createState() => _InkwellWidgetScreenExpState();
}

class _InkwellWidgetScreenExpState extends State<InkwellWidgetScreenExp> {
  Color boxColor = Colors.blue;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("InkWell Widget Screen"),
      ),
      body: Center(
        child: InkWell(
          onTap: () {
            setState(() {
              boxColor = Colors.blue;
            });
          },
          onDoubleTap: () {
            setState(() {
              boxColor = Colors.red;
            });
          },
          onLongPress: () {
            setState(() {
              boxColor = Colors.yellow;
            });
          },
          child: Ink(
            height: 200,
            width: 200,
            color: boxColor,
            child: const Center(
              child: FlutterLogo(
                size: 150,
              ),
            ),
          ),
        ),
      ),
    );
  }
}

