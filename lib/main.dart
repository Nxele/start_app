import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return _MyAppState();
  }
}

class _MyAppState extends State <MyApp>{
  List<String> _products = ['Car Tester'];
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
          appBar: AppBar(
            title: Text('EasyList'),
          ),

          body: Column(
            children: [
              Container(
                  margin: EdgeInsets.all(10.0),
                  child: RaisedButton(
                    onPressed: () {
                      setState(() {
                        _products.add('Advance car Tester');
                      });

                    },
                    child: Text('Add //M3'),
                  )),

              Column(children: _products.map((element) => Card(
                child: Column(
                  children: <Widget>[
                    Image.asset('assets/bimmer paradice.jpg'),
                    Text('element')
                  ],
                ),
              )).toList(),),

            ],
          )),
    );
  }
}