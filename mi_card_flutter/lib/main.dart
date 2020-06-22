import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.teal,
        body: SafeArea(
          child: Row(
            children: <Widget>[
              Expanded(flex: 1, child: Container()),
              Expanded(
                flex: 6,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: <Widget>[
                    CircleAvatar(
                      radius: 75,
                      backgroundImage: AssetImage('images/avatar.jpg'),
                    ),
                    Text(
                      "Trevor Davis",
                      style: TextStyle(fontSize: 25, color: Colors.white),
                    ),
                    Text(
                      "Flutter Developer",
                      style: TextStyle(fontSize: 25, color: Colors.white),
                    ),
                    MaterialButton(
                      color: Colors.white,
                      height: 45,
                      child: Row(
                        children: <Widget>[
                          Icon(
                            Icons.call,
                            color: Colors.teal,
                          ),
                          Padding(
                            padding: const EdgeInsets.fromLTRB(20, 0, 0, 0),
                            child: Text(
                              "+01 970 275 6679",
                              style: TextStyle(
                                  fontSize: 16,
                                  color: Colors.teal,
                                  backgroundColor: Colors.white),
                            ),
                          )
                        ],
                      ),
                      onPressed: () => {},
                    ),
                    MaterialButton(
                      color: Colors.white,
                      height: 45,
                      child: Row(
                        children: <Widget>[
                          Icon(
                            Icons.email,
                            color: Colors.teal,
                          ),
                          Padding(
                            padding: const EdgeInsets.fromLTRB(20, 0, 0, 0),
                            child: Text(
                              "tzendou@gmail.com",
                              style: TextStyle(
                                  fontSize: 16,
                                  color: Colors.teal,
                                  backgroundColor: Colors.white),
                            ),
                          )
                        ],
                      ),
                      onPressed: () => {},
                    ),
                  ],
                ),
              ),
              Expanded(
                flex: 1,
                child: Container(),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
