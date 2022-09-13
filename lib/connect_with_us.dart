import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class ConnectWithUs extends StatelessWidget {
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
                  padding: EdgeInsets.only(top: 35.0, bottom: 15.0),
                  child: Column(
                    children: <Widget>[
                      Text(
                        'Social Media platforms',
                        style: TextStyle(
                          fontFamily: 'SourceSansPro',
                          fontSize: 30.0,
                          fontWeight: FontWeight.bold,
                          color: Colors.white,
                        ),
                      ),
                      Text(
                        'Follow us on all social platforms',
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
                margin: EdgeInsets.symmetric(vertical: 15, horizontal: 25),
                //color: Color(0xFFFFC438),
                //color: Color(0xFFFF7303),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(25.0),
                ),
                child: Column(
                  children: <Widget>[
                    GestureDetector(
                      onTap: () {
                        Navigator.of(context).pushNamed('/widget_yt');
                      },
                      child: Card(
                        color: Color(0xFF0c014d),
                        margin:
                            EdgeInsets.symmetric(vertical: 10, horizontal: 25),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(15.0),
                        ),
                        child: ListTile(
                          leading: Icon(
                            FontAwesomeIcons.youtubeSquare,
                            color: Colors.white,
                            size: 35.0,
                          ),
                          title: Text(
                            'YouTube',
                            style: TextStyle(
                              fontSize: 30.0,
                              fontFamily: 'SourceSansPro',
                              color: Colors.white,
                            ),
                          ),
                        ),
                      ),
                    ),
                    GestureDetector(
                      onTap: () {
                        Navigator.of(context).pushNamed('/widget_insta');
                      },
                      child: Card(
                        color: Color(0xFF0c014d),
                        margin:
                            EdgeInsets.symmetric(vertical: 10, horizontal: 25),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(15.0),
                        ),
                        child: ListTile(
                          leading: Icon(
                            FontAwesomeIcons.instagramSquare,
                            color: Colors.white,
                            size: 35.0,
                          ),
                          title: Text(
                            'Instagram',
                            style: TextStyle(
                              fontSize: 30.0,
                              fontFamily: 'SourceSansPro',
                              color: Colors.white,
                            ),
                          ),
                        ),
                      ),
                    ),
                    GestureDetector(
                      onTap: () {
                        Navigator.of(context).pushNamed('/widget_fb');
                      },
                      child: Card(
                        color: Color(0xFF0c014d),
                        margin:
                            EdgeInsets.symmetric(vertical: 10, horizontal: 25),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(15.0),
                        ),
                        child: ListTile(
                          leading: Icon(
                            FontAwesomeIcons.facebookSquare,
                            color: Colors.white,
                            size: 35.0,
                          ),
                          title: Text(
                            'Facebook',
                            style: TextStyle(
                              fontSize: 30.0,
                              fontFamily: 'SourceSansPro',
                              color: Colors.white,
                            ),
                          ),
                        ),
                      ),
                    ),
                    GestureDetector(
                      onTap: () {
                        Navigator.of(context).pushNamed('/widget_ws');
                      },
                      child: Card(
                        color: Color(0xFF0c014d),
                        margin:
                            EdgeInsets.symmetric(vertical: 10, horizontal: 25),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(15.0),
                        ),
                        child: ListTile(
                          leading: Icon(
                            FontAwesomeIcons.internetExplorer,
                            color: Colors.white,
                            size: 35.0,
                          ),
                          title: Text(
                            'Website',
                            style: TextStyle(
                              fontSize: 30.0,
                              fontFamily: 'SourceSansPro',
                              color: Colors.white,
                            ),
                          ),
                        ),
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
