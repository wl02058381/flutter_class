import 'package:flutter/material.dart';

//command+shift+p然後open devtools
//線線是setting=>previewflutter
void main() {
  // runApp(MyApp());
  runApp(App());
}

//打stless可以快速產生StatelessWidget的CLASS
class App extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomePage(),
    );
  }
}

//打stful可以快速產生StatefulWidget的CLASS
class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  var inputController1 = TextEditingController();
  var inputController2 = TextEditingController();
  int count = 0;
  double bmi = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            // Row(
            // children: [
            // Text("身高："),
            TextField(
              controller: inputController1,
              decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  labelText: '身高',
                  hintText: '裡面'),
            ),
            //   ],
            // ),
            // Row(
            //   children: [
            // Text("體重："),
            TextField(
              controller: inputController2,
              decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  labelText: '體重',
                  hintText: 'hh'),
            ),
            // ],
            // ),
            Text('BMI = $bmi'),
            TextButton(
                onPressed: () {
                  setState(() {
                    double h = double.tryParse(inputController1.text);
                    double w = double.tryParse(inputController2.text);
                    int height = int.parse(inputController1.text);
                    int weight = int.parse(inputController2.text);
                    double height_m = height / 100;
                    bmi = weight / (height_m * height_m);
                  });
                },
                child: Text("計算"))
          ],
        ),
      ),
    );
  }
}

class HomeScreen extends StatelessWidget {
  const HomeScreen({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(),
        body: Container(
          height: 500,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.end,
            // crossAxisAlignment: CrossAxisAlignment.end,
            //Command+.
            children: [
              Text(
                "123",
                style: TextStyle(fontSize: 88.0),
              ),
              Text(
                "456",
                style: TextStyle(fontSize: 88.0),
              ),
            ],
          ),
        )

        // SingleChildScrollView(
        //   scrollDirection: Axis.vertical,
        //   child: Row(
        //     children: [
        //       Text(
        //         "123",
        //         style: TextStyle(fontSize: 12.0),
        //       ),
        //       Text(
        //         "123",
        //         style: TextStyle(fontSize: 12.0),
        //       ),
        //     ],
        //   ),
        // )

        // Container(
        //   padding: EdgeInsets.all(32.0),
        //   margin: EdgeInsets.all(2.0),
        //   color: Colors.orange,
        //   constraints: BoxConstraints(maxHeight: 300),
        //   height: 500.0,
        //   child: Text(
        //     "小雞雞",
        //     style: TextStyle(fontSize: 50),
        //   ),
        // ),
        // SelectableText(
        //   "123123123",
        //   style: TextStyle(fontSize: 54),
        // ),
        );
  }
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        // This is the theme of your application.
        //
        // Try running your application with "flutter run". You'll see the
        // application has a blue toolbar. Then, without quitting the app, try
        // changing the primarySwatch below to Colors.green and then invoke
        // "hot reload" (press "r" in the console where you ran "flutter run",
        // or simply save your changes to "hot reload" in a Flutter IDE).
        // Notice that the counter didn't reset back to zero; the application
        // is not restarted.
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);

  // This widget is the home page of your application. It is stateful, meaning
  // that it has a State object (defined below) that contains fields that affect
  // how it looks.

  // This class is the configuration for the state. It holds the values (in this
  // case the title) provided by the parent (in this case the App widget) and
  // used by the build method of the State. Fields in a Widget subclass are
  // always marked "final".

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0;

  void _incrementCounter() {
    setState(() {
      // This call to setState tells the Flutter framework that something has
      // changed in this State, which causes it to rerun the build method below
      // so that the display can reflect the updated values. If we changed
      // _counter without calling setState(), then the build method would not be
      // called again, and so nothing would appear to happen.
      _counter++;
    });
  }

  @override
  Widget build(BuildContext context) {
    // This method is rerun every time setState is called, for instance as done
    // by the _incrementCounter method above.
    //
    // The Flutter framework has been optimized to make rerunning build methods
    // fast, so that you can just rebuild anything that needs updating rather
    // than having to individually change instances of widgets.
    return Scaffold(
      appBar: AppBar(
        // Here we take the value from the MyHomePage object that was created by
        // the App.build method, and use it to set our appbar title.
        title: Text(widget.title),
      ),
      body: Center(
        // Center is a layout widget. It takes a single child and positions it
        // in the middle of the parent.
        child: Column(
          // Column is also a layout widget. It takes a list of children and
          // arranges them vertically. By default, it sizes itself to fit its
          // children horizontally, and tries to be as tall as its parent.
          //
          // Invoke "debug painting" (press "p" in the console, choose the
          // "Toggle Debug Paint" action from the Flutter Inspector in Android
          // Studio, or the "Toggle Debug Paint" command in Visual Studio Code)
          // to see the wireframe for each widget.
          //
          // Column has various properties to control how it sizes itself and
          // how it positions its children. Here we use mainAxisAlignment to
          // center the children vertically; the main axis here is the vertical
          // axis because Columns are vertical (the cross axis would be
          // horizontal).
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              'You have pushed the button this many times:',
            ),
            Text(
              '$_counter',
              style: Theme.of(context).textTheme.headline4,
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: _incrementCounter,
        tooltip: 'Increment',
        child: Icon(Icons.add),
      ), // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}
