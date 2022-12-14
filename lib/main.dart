import 'package:flutter/material.dart';
import 'package:iap_one/possim_solid_button.dart';

import 'detail_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(title: 'IA ONE'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key, required this.title}) : super(key: key);

  // This widget is the home page of your application. It is stateful, meaning
  // that it has a State object (defined below) that contains fields that affect
  // how it looks.

  // This class is the configuration for the state. It holds the values (in this
  // case the title) provided by the parent (in this case the App widget) and
  // used by the build method of the State. Fields in a Widget subclass are
  // always marked "final".

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0;

  @override
  Widget build(BuildContext context) {
    // This method is rerun every time setState is called, for instance as done
    // by the _incrementCounter method above.
    //
    // The Flutter framework has been optimized to make rerunning build methods
    // fast, so that you can just rebuild anything that needs updating rather
    // than having to individually change instances of widgets.
    return Scaffold(
      body: Center(
        child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              PossimSolidButton(
                title: 'Ha Long',
                textStyles:
                    TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
                callBack: () {
                  changeScreen('https://tailieufree.net/wp-content/uploads/2018/04/hinh-nen-vinh-ha-long-quang-ninh-dep.jpg');
                },
              ),
              SizedBox(
                height: 16,
              ),
              PossimSolidButton(
                title: 'Ha Noi',
                textStyles:
                    TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
                callBack: () {
                  changeScreen('http://tourvietnamcambogia.com/wp-content/uploads/2018/01/i-laghi-ad-Hanoi.jpg');
                },
              ),
              SizedBox(
                height: 16,
              ),
              PossimSolidButton(
                title: 'Da Nang',
                textStyles:
                    TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
                callBack: () {
                  changeScreen('https://statics.vinpearl.com/mua-qua-Da-Nang-o-dau-hinh-anh1.jpg');
                },
              ),
            ]),
      ),
    );
  }

  void changeScreen(String url) {
    Navigator.of(context).push(
      MaterialPageRoute(
        builder: (context) => DetailScreen(url: url),
      ),
    );
  }
}
