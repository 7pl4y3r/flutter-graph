import 'package:flutter/material.dart';


class LessonState extends StatefulWidget  {

  LessonState({Key key, this.title}) : super(key: key);

  final String title;

  @override
  State<StatefulWidget> createState() => _LessonState(title);

}


class _LessonState extends State<LessonState> {

  _LessonState(this.title) {
    debugPrint('Lesson title is $title');

    if (title == '1. Introducere')
      lessonContent = 'De facut introducerea';

  }

  final String title;
  String lessonContent;

  @override
  Widget build(BuildContext context) {

    return Scaffold(

      appBar: AppBar(
        title: Text(title),
      ),

      body: Center(
        child: ListView(

          padding: EdgeInsets.all(8.00),

          children: <Widget> [

            Card(

              elevation: 4.00,
              child: Column(

                children: <Widget> [

                  Container(

                    alignment: Alignment.topLeft,
                    padding: EdgeInsets.fromLTRB(2.00, 4.00, 0.00, 8.00),

                    child: Text(lessonContent,
                      textAlign: TextAlign.start,
                      style: TextStyle(
                          fontWeight: FontWeight.bold,
                          color: Colors.black,
                          fontSize: 20.00),
                    ),

                  ),

                  Container(),

                ],

              ),

            ),

          ],

        ),
      ),

    );

  }

}