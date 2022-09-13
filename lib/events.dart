import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';


class Events extends StatelessWidget {
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
                        'UPCOMING EVENTS',
                        style: TextStyle(
                          fontFamily: 'SourceSansPro',
                          fontSize: 27.0,
                          fontWeight: FontWeight.bold,
                          color: Colors.white,
                        ),
                      ),
                      Text(
                        'The most awaited events by our church indoor & outdoor',
                        textAlign: TextAlign.center,
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
                        FontAwesomeIcons.calendarAlt,
                        color: Color(0xFF0c014d),
                        size: 50.0,
                      ),
                      title: Text(
                        'EVENTS',
                        style: TextStyle(
                          color: Color(0xFF0c014d),
                          fontSize: 30.0,
                          fontFamily: 'SourceSansPro',
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                    Card(
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(15.0),
                      ),
                      margin: EdgeInsets.symmetric(vertical: 10, horizontal: 10),
                      color: Color(0xFF0c014d),
                      child: Column(
                        children: <Widget>[
                          ListTile(
                            subtitle: Text(
                              'We regularly hold conferences, seminars and inspirational Programmes in church each year In addition to our weekly activities. These conferences and events are to equip individuals at different stages of their lives and to empower them for productivity. Go to LEARN MORE to see the most awaited events of our church.',
                              textAlign: TextAlign.justify,
                              style: TextStyle(
                                fontSize: 18.0,
                                fontFamily: 'SourceSansPro',
                                color: Colors.white,
                              ),
                            ),
                          ),
                          ButtonBar(
                            children: <Widget>[
                              FlatButton(
                                color: Color(0xFF0c014d),
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(10.0),
                                  side: BorderSide(color: Colors.white,width: 2,style: BorderStyle.solid,),
                                ),
                                child: const Text('LEARN MORE...'),
                                onPressed: () {
                                  Navigator.of(context).pushNamed('/widget_events');
                                },
                              ),
                            ],
                          )
                        ],
                      ),
                    ),


                  ],
                ),
                //color: Colors.black,
                //onPressed: ,
              ),
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
                        FontAwesomeIcons.fileVideo,
                        color: Color(0xFF0c014d),
                        size: 50.0,
                      ),
                      title: Text(
                        'LIVE STREAM',
                        style: TextStyle(
                          color: Color(0xFF0c014d),
                          fontSize: 30.0,
                          fontFamily: 'SourceSansPro',
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                    Card(
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(15.0),
                      ),
                      margin: EdgeInsets.symmetric(vertical: 10, horizontal: 10),
                      color: Color(0xFFdb8c0d),
                      child: Column(
                        children: <Widget>[
                          ListTile(
                            title: Text(
                              'Follow our Services on live stream',
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                fontSize: 18.0,
                                fontFamily: 'SourceSansPro',
                                color: Color(0xFF0c014d),
                              ),
                            ),
                          ),
                          ButtonBar(
                            children: <Widget>[
                              FlatButton(
                                color: Color(0x990c014d),
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(10.0),
                                  side: BorderSide(color: Colors.white,width: 2,style: BorderStyle.solid,),
                                ),
                                child: const Text('WATCH NOW...'),
                                onPressed: () {
                                  Navigator.of(context).pushNamed('/widget_livestream');
                                },
                              ),
                            ],
                          )
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
