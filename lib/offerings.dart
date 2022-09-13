import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:url_launcher/url_launcher.dart';


_launchURLPayPal() async {
  const url = 'https://houseofsolution.de/donation/';
  if (await canLaunch(url)) {
    await launch(url,
    forceSafariVC: false,
    //forceWebView: false,
    );
  } else {
    throw 'Could not launch $url';
  }
}


class Offerings extends StatefulWidget {
  @override
  _Offerings createState() => _Offerings();
}

class _Offerings extends State<Offerings> {
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
                        'OFFERINGS AND TITHES',
                        style: TextStyle(
                          fontFamily: 'SourceSansPro',
                          fontSize: 27.0,
                          fontWeight: FontWeight.bold,
                          color: Colors.white,
                        ),
                      ),
                      Text(
                        'Promote the Work of God by your giving',
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
                        Icons.card_giftcard,
                        size: 35.0,
                        color: Color(0xFF0c014d),
                      ),
                      title: Text(
                        'Offerings & Tithes',
                        style: TextStyle(
                          color: Color(0xFF0c014d),
                          fontSize: 30.0,
                          fontFamily: 'SourceSansPro',
                        ),
                      ),
                      subtitle: Text(
                        'Give your offerings & Tithes via PayPal',
                        style: TextStyle(
                          //color: Color(0xFF0c014d),
                          fontSize: 15.0,
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
                          child: const Text('GIVE OFFERING'),
                          onPressed: _launchURLPayPal,
                        ),
                        FlatButton(
                          color: Color(0xFF0c014d),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10.0),
                            side: BorderSide(color: Colors.white,width: 2,style: BorderStyle.solid,),
                          ),
                          child: const Text('GIVE TITHE'),
                          onPressed: _launchURLPayPal,
                        ),
                      ],
                    )
                  ],
                ),
                //color: Colors.black,
                //onPressed: ,
              ),
              SizedBox(
                height: 50,
                width: 225,

              ),
              Text(
                'OUR BANK ACCOUNTS',
                style: TextStyle(
                  fontFamily: 'SourceSansPro',
                  fontSize: 27.0,
                  fontWeight: FontWeight.bold,
                  color: Colors.white,
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
              // Card(
              //   color: Color(0xFFdb8c0d),
              //   margin: EdgeInsets.symmetric(vertical: 10, horizontal: 25),
              //   shape: RoundedRectangleBorder(
              //     borderRadius: BorderRadius.circular(15.0),
              //   ),
              //   child: ListTile(
              //     leading: Icon(
              //       FontAwesomeIcons.euroSign,
              //       color: Color(0xFF0c014d),
              //       size: 35.0,
              //     ),
              //     title: Text(
              //       'DE 87 4401 0046 0173 7334 63',
              //       style: TextStyle(
              //         fontSize: 20.0,
              //         fontFamily: 'SourceSansPro',
              //         color: Color(0xFF0c014d),
              //       ),
              //     ),
              //     subtitle: Text(
              //       'BIC: PBNKBEFF',
              //       style: TextStyle(
              //         fontSize: 20.0,
              //         fontFamily: 'SourceSansPro',
              //         color: Color(0xFF0c014d),
              //       ),
              //     ),
              //   ),
              // ),
              Card(
                color: Color(0xFFdb8c0d),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(15.0),
                ),
                margin: EdgeInsets.symmetric(vertical: 10, horizontal: 25),
                child: ListTile(
                  leading: Icon(
                    FontAwesomeIcons.euroSign,
                    color: Color(0xFF0c014d),
                    size: 35.0,
                  ),
                  title: Text(
                    'DE 57 5009 2100 0001 5369 07',
                    style: TextStyle(
                      fontSize: 20.0,
                      fontFamily: 'SourceSansPro',
                      color: Color(0xFF0c014d),
                    ),
                  ),
                  subtitle: Text(
                    'BIC: GENODE51BH2',
                    style: TextStyle(
                      fontSize: 20.0,
                      fontFamily: 'SourceSansPro',
                      color: Color(0xFF0c014d),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
