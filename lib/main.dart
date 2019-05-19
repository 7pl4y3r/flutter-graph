import 'package:flutter/material.dart';


void main() => runApp(MyApp());


class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Graf',
      theme: ThemeData(
          primarySwatch: Colors.lightBlue,
          scaffoldBackgroundColor: Colors.white70
      ),
      home: MyHomePage(title: 'Graf'),
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

  _makeLesson(Color background, Color text, String title, String imagePath) {

    return Card(

      color: background,
      child: Column(

        children: <Widget>[

          Container(
            alignment: Alignment.topLeft,
            padding: EdgeInsets.fromLTRB(2.00, 4.00, 0.00, 8.00) ,

            child: Text(title,
            textAlign: TextAlign.start,
            style: TextStyle(
                fontWeight: FontWeight.bold,
                color: Colors.black,
                fontSize: 20.00),
            ),
          ),

          Image.asset(imagePath),
        ],
      ),
    );

  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Center(
        child: ListView(

          padding: EdgeInsets.fromLTRB(8.00, 16.00, 8.00, 4.00),

          children: <Widget>[

            _makeLesson(Colors.white, Colors.black, '1. Introducere' , 'images/im.png'),
            _makeLesson(Colors.white, Colors.black, '2. Gradele unui nod' , 'images/im.png'),


          ],

        ),

      ),
    );
  }
}
