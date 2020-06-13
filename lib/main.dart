import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(title: 'Flutter Demo Home Page'),
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
  DateTime _dateTime = DateTime.now();

  void _incrementCounter() {
    setState(() {
      _counter++;
    });
  }

  @override
  Widget build(BuildContext context) {
    List<String> _locations = ['A', 'B', 'C', 'D']; // Option 2
    String _selectedLocation;

    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
        backgroundColor: Colors.redAccent,
      ),
      backgroundColor: Color(0xffb2bec3),
      body: SingleChildScrollView(
        child: Center(
          child: Card(
            margin: EdgeInsets.all(30.0),
            color: Colors.white,
            elevation: 3,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(5.0),
            ),
            child: Container(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: <Widget>[
                  SingleChildScrollView(
                    child: Padding(
                      padding: EdgeInsets.all(25.0),
                      child: Column(
                        children: <Widget>[
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: <Widget>[
                              Text(
                                "Add Reservation",
                                style: new TextStyle(
                                  color: Colors.redAccent,
                                  fontSize: 16.0,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                              IconButton(
                                onPressed: () {},
                                icon: Icon(Icons.close),
                                iconSize: 16.0,
                                color: Colors.black54,
                              )
                            ],
                          ),
                          SizedBox(
                            height: 15.0,
                          ),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: <Widget>[
                              Text(
                                "Enter Name",
                                style: new TextStyle(
                                  color: Colors.black,
                                  fontSize: 13.0,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                              SizedBox(
                                height: 2.0,
                              ),
                              TextField(
                                style: TextStyle(
                                  height: 0.0,
                                ),
                                decoration: InputDecoration(
                                    border: new OutlineInputBorder(
                                        borderSide:
                                            BorderSide(color: Colors.black)),
                                    hintText: 'Type Here...'),
                              ),
                            ],
                          ),
                          SizedBox(
                            height: 8.0,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: <Widget>[
                              Row(
                                mainAxisAlignment: MainAxisAlignment.start,
                                children: <Widget>[
                                  Icon(
                                    Icons.person_outline,
                                    color: Colors.redAccent,
                                    size: 16.0,
                                  ),
                                  SizedBox(
                                    width: 3.0,
                                  ),
                                  Text(
                                    "How many People?",
                                    style: new TextStyle(
                                      color: Colors.black,
                                      fontSize: 13.0,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                ],
                              ),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.end,
                                children: <Widget>[
                                  IconButton(
                                    icon: Icon(Icons.add_circle),
                                    iconSize: 16.0,
                                    onPressed: () {},
                                  ),
                                  Text(
                                    "2",
                                    style: new TextStyle(
                                      color: Colors.black,
                                      fontSize: 13.0,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                  IconButton(
                                    icon: Icon(Icons.remove_circle),
                                    iconSize: 16.0,
                                    onPressed: () {},
                                  ),
                                ],
                              ),
                            ],
                          ),
                          SizedBox(
                            height: 8.0,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: <Widget>[
                              Container(
                                width: MediaQuery.of(context).size.width / 3,
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: <Widget>[
                                    Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.start,
                                      children: <Widget>[
                                        Icon(
                                          Icons.phone,
                                          color: Colors.redAccent,
                                          size: 16.0,
                                        ),
                                        SizedBox(
                                          width: 3.0,
                                        ),
                                        Text(
                                          "Contact no.",
                                          style: new TextStyle(
                                            color: Colors.black,
                                            fontSize: 13.0,
                                            fontWeight: FontWeight.bold,
                                          ),
                                        ),
                                      ],
                                    ),
                                    TextField(
                                      style: TextStyle(
                                        height: 0.0,
                                      ),
                                      decoration: InputDecoration(
                                          border: new OutlineInputBorder(
                                              borderSide: BorderSide(
                                                  color: Colors.black)),
                                          hintText: 'Type Here...'),
                                    ),
                                  ],
                                ),
                              ),
                              Container(
                                width: MediaQuery.of(context).size.width / 3,
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: <Widget>[
                                    Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.start,
                                      children: <Widget>[
                                        Icon(
                                          Icons.table_chart,
                                          color: Colors.redAccent,
                                          size: 16.0,
                                        ),
                                        SizedBox(
                                          width: 3.0,
                                        ),
                                        Text(
                                          "Table:",
                                          style: new TextStyle(
                                            color: Colors.black,
                                            fontSize: 13.0,
                                            fontWeight: FontWeight.bold,
                                          ),
                                        ),
                                      ],
                                    ),
                                    Container(
                                        width:
                                            MediaQuery.of(context).size.width /
                                                3,
                                        child: DropdownButton(
                                          hint: Text(
                                              'T-02-B'), // Not necessary for Option 1
                                          value: _selectedLocation,
                                          onChanged: (newValue) {
                                            setState(() {
                                              _selectedLocation = newValue;
                                            });
                                          },
                                          items: _locations.map((location) {
                                            return DropdownMenuItem(
                                              child: new Text(location,
                                                  textAlign: TextAlign.right),
                                              value: location,
                                            );
                                          }).toList(),
                                        )),
                                  ],
                                ),
                              ),
                            ],
                          ),
                          SizedBox(
                            height: 10.0,
                          ),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: <Widget>[
                              Row(
                                mainAxisAlignment: MainAxisAlignment.start,
                                children: <Widget>[
                                  Icon(
                                    Icons.email,
                                    color: Colors.redAccent,
                                    size: 16.0,
                                  ),
                                  SizedBox(
                                    width: 3.0,
                                  ),
                                  Text(
                                    "Email Address",
                                    style: new TextStyle(
                                      color: Colors.black,
                                      fontSize: 13.0,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                ],
                              ),
                              TextField(
                                style: TextStyle(
                                  height: 0.0,
                                ),
                                decoration: InputDecoration(
                                    border: new OutlineInputBorder(
                                        borderSide:
                                            BorderSide(color: Colors.black)),
                                    hintText: 'Type Here...'),
                              ),
                            ],
                          ),
                          SizedBox(
                            height: 10.0,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: <Widget>[
                              Row(
                                mainAxisAlignment: MainAxisAlignment.start,
                                children: <Widget>[
                                  Icon(
                                    Icons.calendar_today,
                                    color: Colors.redAccent,
                                    size: 16.0,
                                  ),
                                  SizedBox(
                                    width: 3.0,
                                  ),
                                  Text(
                                    "Pick a Date",
                                    style: new TextStyle(
                                      color: Colors.black,
                                      fontSize: 13.0,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                ],
                              ),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.start,
                                children: <Widget>[
                                  Icon(
                                    Icons.timer,
                                    color: Colors.redAccent,
                                    size: 16.0,
                                  ),
                                  SizedBox(
                                    width: 3.0,
                                  ),
                                  Text(
                                    "Pick a Time",
                                    style: new TextStyle(
                                      color: Colors.black,
                                      fontSize: 13.0,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                ],
                              ),
                            ],
                          ),
                          // DefaultTextStyle.merge(
                          //   style: TextStyle(fontSize: 10.0),
                          //   child: CupertinoDatePicker(
                          //     initialDateTime: _dateTime,
                          //     onDateTimeChanged: (dateTime) {
                          //       setState(() {
                          //         _dateTime = dateTime;
                          //       });
                          //     },
                          //   ),
                          // ),
                          SizedBox(
                            height: 100.0,
                            width: double.infinity,
                            child: CupertinoDatePicker(
                              initialDateTime: _dateTime,
                              onDateTimeChanged: (dateTime) {
                                setState(() {
                                  _dateTime = dateTime;
                                });
                              },
                            ),
                          ),
                          Container(
                            width: MediaQuery.of(context).size.width / 2,
                            child: FlatButton(
                              color: Colors.redAccent,
                              onPressed: () {},
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: <Widget>[
                                  Icon(
                                    Icons.calendar_today,
                                    color: Colors.white,
                                    size: 20.0,
                                  ),
                                  SizedBox(
                                    width: 3.0,
                                  ),
                                  Text(
                                    "Reserve",
                                    style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 16.0,
                                    ),
                                  )
                                ],
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
