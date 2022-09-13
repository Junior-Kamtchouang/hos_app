import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';


class ServiceTimes extends StatefulWidget {
  @override
  _ServiceTimesState createState() => _ServiceTimesState();
}

class _ServiceTimesState extends State<ServiceTimes> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xFF0c014d),
        title: const Text('HOS App'),
      ),
      body: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
            image:
            AssetImage('images/background_deep_gradient_service_times.png'),
            fit: BoxFit.cover,
          ),
        ),
        constraints: BoxConstraints.expand(),
        child: SingleChildScrollView(
          child: Column(
            //mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Container(
                //color: Colors.orange,
                  padding: EdgeInsets.only(top: 35.0, bottom: 15.0),
                  child: Column(
                    children: <Widget>[
                      Text(
                        'OUR SERVICE TIMES',
                        style: TextStyle(
                          fontFamily: 'SourceSansPro',
                          fontSize: 27.0,
                          fontWeight: FontWeight.bold,
                          color: Colors.white,
                        ),
                      ),
                      Text(
                        'Worship with us',
                        style: TextStyle(
                          fontFamily: 'SourceSansPro',
                          color: Colors.white,
                          fontSize: 20.0,
                          letterSpacing: 2.5,
                          //fontWeight: FontWeight.bold,
                          //fontStyle: FontStyle.italic,
                        ),
                      ),
                      SizedBox(
                        height: 35,
                        width: 225,
                        child: Divider(
                          thickness: 0.5,
                          color: Colors.white,
                        ),
                      ),
                    ],
                  )),
              Card(
                margin: EdgeInsets.symmetric(vertical: 10, horizontal: 25),
                //color: Color(0xFFFFC438),
                //color: Color(0xFFFF7303),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(25.0),
                ),
                child: Column(
                  children: <Widget>[
                    ListTile(
                      leading: Icon(
                        FontAwesomeIcons.meetup,
                        color: Color(0xFF0c014d),
                        size: 50.0,
                      ),
                      title: Text(
                        'WEEKLY MEETINGS',
                        style: TextStyle(
                          color: Color(0xFF0c014d),
                          fontSize: 30.0,
                          fontFamily: 'SourceSansPro',
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 20,
                      width: 225,

                    ),
                    Card(
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(15.0),
                      ),
                      margin: EdgeInsets.symmetric(vertical: 10, horizontal: 25),
                      color: Color(0xFF0c014d),
                      child: Column(
                        children: <Widget>[
                          ListTile(
                            leading: Icon(
                              FontAwesomeIcons.pray,
                              color: Colors.white,
                              size: 50.0,
                            ),
                            title: Text(
                              'Bible Study/Prayer Meetings',
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 25.0,
                                fontFamily: 'SourceSansPro',
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            subtitle: Text(
                              'Wed. & Fri. - 7:00pm',
                              style: TextStyle(
                                fontSize: 25.0,
                                fontFamily: 'SourceSansPro',
                                color: Colors.white,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    Card(
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(15.0),
                      ),
                      margin: EdgeInsets.symmetric(vertical: 25, horizontal: 25),
                      color: Color(0xFFdb8c0d),
                      child: Column(
                        children: <Widget>[
                          ListTile(
                            leading: Icon(
                              FontAwesomeIcons.prayingHands,
                              color: Color(0xFF0c014d),
                              size: 50.0,
                            ),
                            title: Text(
                              'First Service',
                              style: TextStyle(
                                color: Color(0xFF0c014d),
                                fontSize: 30.0,
                                fontFamily: 'SourceSansPro',
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            subtitle: Text(
                              'Sundays - 10:30am',
                              style: TextStyle(
                                fontSize: 25.0,
                                fontFamily: 'SourceSansPro',
                                color: Color(0xFF0c014d),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    Card(
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(15.0),
                      ),
                      margin: EdgeInsets.only(bottom: 25,right: 25,left: 25,top: 0),
                      color: Color(0xFFdb8c0d),
                      child: Column(
                        children: <Widget>[
                          ListTile(
                            leading: Icon(
                              FontAwesomeIcons.prayingHands,
                              color: Color(0xFF0c014d),
                              size: 50.0,
                            ),
                            title: Text(
                              'Second Service',
                              style: TextStyle(
                                color: Color(0xFF0c014d),
                                fontSize: 30.0,
                                fontFamily: 'SourceSansPro',
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            subtitle: Text(
                              'Sundays - 1:00pm',
                              style: TextStyle(
                                fontSize: 25.0,
                                fontFamily: 'SourceSansPro',
                                color: Color(0xFF0c014d),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
                //color: Colors.black,
                //onPressed: ,
              ),

            ],
          ),
        ),
      ),
    );
  }
}

