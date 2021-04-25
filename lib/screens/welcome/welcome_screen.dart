import 'package:flutter/material.dart';
import 'package:quiz_app/constants.dart';
import 'package:get/get.dart';
import 'package:quiz_app/screens/quiz/quiz_screen.dart';
import 'package:quiz_app/screens/quiz/quiz_screen1.dart';
import 'package:quiz_app/screens/welcome/welcome_screen.dart';

import '../contactus.dart';
import '../drawer.dart';
void main() => runApp(new MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      title: 'Quiz App',

    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _MyHomePageState createState() => new _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    final _width = MediaQuery.of(context).size.width;
    final _height = MediaQuery.of(context).size.height;

    return new Container(
      child: new Stack(
        children: <Widget>[
          new Container(
            decoration: new BoxDecoration(
              gradient: kPrimaryGradient,),
          ),
          new Scaffold(
            appBar: AppBar(
              title: Text("Quiz App"),
            ),
            //Now we are going to open a new file
            // where we will create the layout of the Drawer
            drawer: Drawer(
              child: MainDrawer(),
            ),
            backgroundColor: Colors.transparent,
            body: new Container(
              child: new Stack(
                children: <Widget>[
                  new Align(
                    alignment: Alignment.center,
                    child: new Padding(
                      padding: new EdgeInsets.only(top: _height / 15),
                      child: new Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: <Widget>[
                          new CircleAvatar(
                            backgroundImage:
                            new AssetImage('assets/profile.jpeg'),
                            radius: _height / 10,
                          ),
                          new SizedBox(
                            height: _height / 30,
                          ),
                          new Text(
                            'Muhammad Yaseen',
                            style: new TextStyle(
                                fontSize: 18.0,
                                color: Colors.white,
                                fontWeight: FontWeight.bold),
                          ),
                          new SizedBox(
                            height: _height / 80,
                          ),
                          new Text(
                            'FA17-BCS-068',
                            style: new TextStyle(
                                fontSize: 18.0,
                                color: Colors.white,
                                fontWeight: FontWeight.bold),
                          )
                        ],
                      ),
                    ),
                  ),
                  new Padding(
                    padding: new EdgeInsets.only(top: _height / 2.2),
                    child: new Container(
                      color: Colors.white,
                    ),
                  ),
                  new Padding(
                    padding: new EdgeInsets.only(
                        top: _height / 2.6,
                        left: _width / 20,
                        right: _width / 20),
                    child: new Column(
                      children: <Widget>[
                        new Container(
                          decoration: new BoxDecoration(
                              color: Colors.black45,
                              boxShadow: [
                                new BoxShadow(
                                    color: Colors.black45,
                                    blurRadius: 2.0,
                                    offset: new Offset(0.0, 2.0))
                              ]),

                        ),
                        SizedBox(
                          height:20,
                        ),
                        Container(
                          width: _width / 3,
                          height: _height / 20,
                          margin: EdgeInsets.all(25),
                          child: FlatButton(
                            child: Text('Contact us', style: TextStyle(fontSize: 20.0),),
                            color: Colors.blueAccent,
                            textColor: Colors.white,
                            onPressed: () {

                              Navigator.push(
                                context,
                                MaterialPageRoute(builder: (context) => Contactus()),
                              );
                            },
                          ),
                        ),
                        SizedBox(
                          height: 20,
                        ),
                        new Text(
                          'Welcome, Thanks for using our App',
                          style: new TextStyle(
                              fontSize: 18.0,
                              color: Colors.black38,
                              fontWeight: FontWeight.bold),
                        ),
                        SizedBox(
                          height:20,
                        ),
                        new Text(
                          'This app is Just an Assignement by Sir Abdullah ',
                          style: new TextStyle(
                              fontSize: 18.0,
                              color: Colors.black38,
                              fontWeight: FontWeight.bold),
                        ),
                        SizedBox(
                          height: _height/4,
                        ),
                        InkWell(
                          onTap: () => Get.to(QuizScreen1()),
                          child: Container(
                            width: _width / 3,
                            alignment: Alignment.center,
                            padding: EdgeInsets.all(kDefaultPadding * 0.75), // 15
                            decoration: BoxDecoration(
                              gradient: k1PrimaryGradient1,
                              borderRadius: BorderRadius.all(Radius.circular(12)),
                            ),
                            child: Text(
                              "True False Quiz",
                              style: Theme.of(context)
                                  .textTheme
                                  .button
                                  .copyWith(color: Colors.black),
                            ),
                          ),

                        ),
                        SizedBox(
                          height: 10,
                        ),
                        InkWell(
                          onTap: () => Get.to(QuizScreen()),
                          child: Container(
                            width: _width / 3,
                            alignment: Alignment.center,
                            padding: EdgeInsets.all(kDefaultPadding * 0.75), // 15
                            decoration: BoxDecoration(
                              gradient: k1PrimaryGradient,
                              borderRadius: BorderRadius.all(Radius.circular(12)),
                            ),
                            child: Text(
                              "Multiple Choice Quiz",
                              style: Theme.of(context)
                                  .textTheme
                                  .button
                                  .copyWith(color: Colors.black),
                            ),
                          ),

                        ),

                      ],
                    ),
                  )

                ],
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget headerChild(String header, int value) => new Expanded(
      child: new Column(
        children: <Widget>[
          new Text(header),
          new SizedBox(
            height: 8.0,
          ),
          new Text(
            '$value',
            style: new TextStyle(
                fontSize: 14.0,
                color: const Color(0xFF26CBE6),
                fontWeight: FontWeight.bold),
          )
        ],
      ));

  Widget infoChild(double width, IconData icon, data) => new Padding(
    padding: new EdgeInsets.only(bottom: 8.0),
    child: new InkWell(
      child: new Row(
        children: <Widget>[
          new SizedBox(
            width: width / 10,
          ),
          new Icon(
            icon,
            color: const Color(0xFF26CBE6),
            size: 36.0,
          ),
          new SizedBox(
            width: width / 20,
          ),
          new Text(data)
        ],
      ),
      onTap: () {
        print('Info Object selected');
      },
    ),
  );
}