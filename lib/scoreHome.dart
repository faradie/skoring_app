import 'package:flutter/material.dart';

class ScoreHome extends StatefulWidget {
  @override
  _ScoreHomeState createState() => _ScoreHomeState();
}

class _ScoreHomeState extends State<ScoreHome> {
  int _timA = 0, _timB = 0;
  bool flag = true;

  void _plus(int increment, String tim) {
    if (tim == 'a') {
      setState(() {
        _timA += increment;
      });
    } else {
      setState(() {
        _timB += increment;
      });
    }
  }

  void _minus(int decrement, String tim) {
    if (tim == 'a') {
      setState(() {
        if (_timA <= 0) {
          _timA = 0;
        } else {
          _timA -= decrement;
        }
      });
    } else {
      setState(() {
        if (_timB <= 0) {
          _timB = 0;
        } else {
          _timB -= decrement;
        }
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Basket'.toUpperCase()),
          centerTitle: true,
        ),
        drawer: Drawer(),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: <Widget>[
                  Column(
                    children: <Widget>[
                      Image.network(
                        "https://motionsportindonesia.com/wp-content/uploads/2018/02/Logo-IBL-Pertalitefix-800x690.png",
                        fit: BoxFit.contain,
                        height: 180.0,
                        width: 180.0,
                      ),
                      Text(
                        "IBL Pertalite",
                        style: TextStyle(
                            fontSize: 20.0, fontWeight: FontWeight.bold),
                      ),
                      SizedBox(
                        height: 30.0,
                      ),
                      Text(
                        '$_timA',
                        style: TextStyle(
                            fontSize: 50.0, fontWeight: FontWeight.bold),
                      ),
                      SizedBox(
                        height: 30.0,
                      ),
                      ButtonTheme(
                        buttonColor: flag == true
                            ? Theme.of(context).primaryColor
                            : Theme.of(context).accentColor,
                        minWidth: 200.0,
                        height: 50.0,
                        child: RaisedButton(
                          onPressed: () {
                            if (flag == true) {
                              _plus(3, 'a');
                            } else {
                              _minus(3, 'a');
                            }
                          },
                          child: Text(
                            flag == true ? '+3' : '-3',
                            style:
                                TextStyle(color: Colors.white, fontSize: 20.0),
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 20.0,
                      ),
                      ButtonTheme(
                         buttonColor: flag == true
                            ? Theme.of(context).primaryColor
                            : Theme.of(context).accentColor,
                        minWidth: 200.0,
                        height: 50.0,
                        child: RaisedButton(
                          onPressed: () {
                            if (flag == true) {
                              _plus(2, 'a');
                            } else {
                              _minus(2, 'a');
                            }
                          },
                          child: Text(
                            flag == true ? '+2' : '-2',
                            style:
                                TextStyle(color: Colors.white, fontSize: 20.0),
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 20.0,
                      ),
                      ButtonTheme(
                         buttonColor: flag == true
                            ? Theme.of(context).primaryColor
                            : Theme.of(context).accentColor,
                        minWidth: 200.0,
                        height: 50.0,
                        child: RaisedButton(
                          onPressed: () {
                            if (flag == true) {
                              _plus(1, 'a');
                            } else {
                              _minus(1, 'a');
                            }
                          },
                          child: Text(
                            flag == true ? '+1' : '-1',
                            style:
                                TextStyle(color: Colors.white, fontSize: 20.0),
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 20.0,
                      ),
                    ],
                  ),
                  Column(
                    children: <Widget>[
                      Image.asset(
                        'images/ibl_indonesia.png',
                        fit: BoxFit.contain,
                        height: 180.0,
                        width: 180.0,
                      ),
                      Text(
                        "IBL Indonesia",
                        style: TextStyle(
                            fontSize: 20.0, fontWeight: FontWeight.bold),
                      ),
                      SizedBox(
                        height: 30.0,
                      ),
                      Text(
                        '$_timB',
                        style: TextStyle(
                            fontSize: 50.0, fontWeight: FontWeight.bold),
                      ),
                      SizedBox(
                        height: 30.0,
                      ),
                      ButtonTheme(
                         buttonColor: flag == true
                            ? Theme.of(context).primaryColor
                            : Theme.of(context).accentColor,
                        minWidth: 200.0,
                        height: 50.0,
                        child: RaisedButton(
                          onPressed: () {
                            if (flag == true) {
                              _plus(3, 'b');
                            } else {
                              _minus(3, 'b');
                            }
                          },
                          child: Text(
                            flag == true ? '+3' : '-3',
                            style:
                                TextStyle(color: Colors.white, fontSize: 20.0),
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 20.0,
                      ),
                      ButtonTheme(
                         buttonColor: flag == true
                            ? Theme.of(context).primaryColor
                            : Theme.of(context).accentColor,
                        minWidth: 200.0,
                        height: 50.0,
                        child: RaisedButton(
                          onPressed: () {
                            if (flag == true) {
                              _plus(2, 'b');
                            } else {
                              _minus(2, 'b');
                            }
                          },
                          child: Text(
                            flag == true ? '+2' : '-2',
                            style:
                                TextStyle(color: Colors.white, fontSize: 20.0),
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 20.0,
                      ),
                      ButtonTheme(
                         buttonColor: flag == true
                            ? Theme.of(context).primaryColor
                            : Theme.of(context).accentColor,
                        minWidth: 200.0,
                        height: 50.0,
                        child: RaisedButton(
                          onPressed: () {
                            if (flag == true) {
                              _plus(1, 'b');
                            } else {
                              _minus(1, 'b');
                            }
                          },
                          child: Text(
                            flag == true ? '+1' : '-1',
                            style:
                                TextStyle(color: Colors.white, fontSize: 20.0),
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 20.0,
                      ),
                    ],
                  ),
                ],
              ),
              ButtonTheme(
                minWidth: 200.0,
                height: 50.0,
                child: RaisedButton(
                  onPressed: () {
                    setState(() {
                      _timA = 0;
                      _timB = 0;
                    });
                  },
                  child: Text(
                    "Reset".toUpperCase(),
                    style: TextStyle(
                      color: Colors.white,
                    ),
                  ),
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  ButtonTheme(
                    child: RaisedButton(
                      onPressed: flag == true
                          ? null
                          : () {
                              setState(() {
                                flag = true;
                              });
                            },
                      child: Text(
                        "+".toUpperCase(),
                        style: TextStyle(
                          color: Colors.white,
                        ),
                      ),
                    ),
                  ),
                  SizedBox(
                    width: 10.0,
                  ),
                  ButtonTheme(
                    child: RaisedButton(
                      onPressed: flag == false
                          ? null
                          : () {
                              setState(() {
                                flag = false;
                              });
                            },
                      child: Text(
                        "-".toUpperCase(),
                        style: TextStyle(
                          color: Colors.white,
                        ),
                      ),
                    ),
                  ),
                ],
              )
            ],
          ),
        ));
  }
}
