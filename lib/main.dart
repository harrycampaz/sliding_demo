import 'package:flutter/material.dart';
import 'package:sliding_up_panel/sliding_up_panel.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Sliding Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(title: 'Demo Sliding'),
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
  int _counter = 0;

  @override
  Widget build(BuildContext context) {
    BorderRadiusGeometry radiusGeometry = BorderRadius.only(
        topLeft: Radius.circular(24.0), topRight: Radius.circular(24.0));

    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: SlidingUpPanel(
          backdropEnabled: true,
          borderRadius: radiusGeometry,
          panel: _buildPanel(),
          collapsed: Container(
            decoration: BoxDecoration(
              color: Colors.blue,
              borderRadius: radiusGeometry,
            ),
            child: Center(
                child: Text(
              'Slide to more feature',
              style: TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                  fontSize: 19),
            )),
          ),
          body: Image.network(
            "https://boygeniusreport.files.wordpress.com/2019/02/google-maps-ar-feature.jpg?quality=98&strip=all&w=625&h=698&crop=1",
            fit: BoxFit.cover,
          )),
    );
  }

  Widget _buildPanel() {
    return Container(
      margin: const EdgeInsets.only(top: 36),
      color: Colors.white,
      child: ListView.builder(
          itemCount: 20,
          itemBuilder: (BuildContext context, int index) {
            return Text(
              'This is menu $index',
              overflow: TextOverflow.ellipsis,
              style: TextStyle(
                  color: Colors.grey,
                  fontWeight: FontWeight.bold,
                fontStyle: FontStyle.italic,
                fontFamily: 'Open Sans',
                fontSize: 24
              ),
            );
          }),
    );
  }
}
