import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  int counter = 1;
  var widgets;
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Counter ListView'),
        ),
        body: ListView(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                RaisedButton(
                    child: Text('Tambah Data'),
                    onPressed: () {
                      setState(() {
                        widgets.add(Text('Data ke =' + counter.toString()));
                        counter++;
                      });
                    }),
                RaisedButton(
                    child: Text('Hapus Data'),
                    onPressed: () {
                      setState(() {
                        widgets.add(Text('Data ke =' + counter.toString()));
                        counter--;
                      });
                    })
              ],
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                widgets,
              ],
            )
          ],
        ),
      ),
    );
  }
}
