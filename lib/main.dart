import 'dart:async';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_webview_plugin/flutter_webview_plugin.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'service_times.dart';
import 'events.dart';
import 'connect_with_us.dart';
import 'hos_contact.dart';
import 'offerings.dart';
import 'package:url_launcher/url_launcher.dart';
import 'hos_web.dart';


_launchURL() async {
  const url = 'http://houseofsolution.de/';
  if (await canLaunch(url)) {
    await launch(url);
  } else {
    throw 'Could not launch $url';
  }
}

//String selectedUrl = 'https://www.paypal.com/paypalme2/houseofsolutionapp';
//String selectedUrl2 = 'https://houseofsolution.de/donation/';
String eventsSelectedUrl = 'https://www.houseofsolution.de/events';
String liveStreamSelectedUrl = 'https://www.houseofsolution.de/watch-live';

//E-Mail
String emailSelectedUrl ='https://mail.google.com/mail/u/0/#inbox?compose=CllgCJvlHXsLXMJRKSptgmtqfxpRMVFMMHqfDnxgjDLVMKkHDjfxfcKggVGSmvRmwTRmQhHMgcg';


//social media
String youTubeSelectedUrl ='https://www.youtube.com/channel/UCsjQymCxXwag5CruLEYz29A';
String webSiteSelectedUrl ='https://www.houseofsolution.de';
String insSelectedUrl = 'https://www.instagram.com/houseofsolutionmh/';
String fbSelectedUrl = 'https://www.facebook.com/LHICF/';

// ignore: prefer_collection_literals
final Set<JavascriptChannel> jsChannels = [
  JavascriptChannel(
      name: 'Print',
      onMessageReceived: (JavascriptMessage message) {
        print(message.message);
      }),
].toSet();

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  final flutterWebViewPlugin = FlutterWebviewPlugin();

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'HOS App',
      initialRoute: '/',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      routes: {
        '/': (_) => const MyHomePage(title: 'HOS App'),
        '/offerings': (_) => Offerings(),
        '/service_times': (_) => ServiceTimes(),
        '/events': (_) => Events(),
        '/connect_with_us': (_) => ConnectWithUs(),
        '/hos_contact': (_) => HosContact(),
        '/hos_web': (_) => WebApplication(),


        /*'/widget': (_) {
          return WebviewScaffold(
            url: selectedUrl,
            javascriptChannels: jsChannels,
            mediaPlaybackRequiresUserGesture: false,
            appBar: AppBar(
              title: const Text('HOS App'),
              backgroundColor: Color(0xFF0c014d),
            ),
            withZoom: true,
            withLocalStorage: true,
            hidden: true,
            initialChild: Container(
              decoration: BoxDecoration(
                image: DecorationImage(
                  image:
                  AssetImage('images/background_deep_gradient_service_times.png'),
                  fit: BoxFit.cover,
                ),
              ),
              constraints: BoxConstraints.expand(),
              child: const Center(
                child: Text(
                  'Directing to PayPal.....',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 35.0,
                    fontFamily: 'SourceSansPro',
                  ),
                ),
              ),
            ),
            bottomNavigationBar: BottomAppBar(
              color: Color(0xFFdb8c0d),
              child: Row(
                children: <Widget>[
                  IconButton(
                    icon: const Icon(
                      Icons.arrow_back_ios,
                      color: Color(0xF90c014d),
                    ),
                    onPressed: () {
                      flutterWebViewPlugin.goBack();
                    },
                  ),
                  IconButton(
                    icon: const Icon(
                      Icons.arrow_forward_ios,
                      color: Color(0xF90c014d),
                    ),
                    onPressed: () {
                      flutterWebViewPlugin.goForward();
                    },
                  ),
                  IconButton(
                    icon: const Icon(Icons.autorenew, color: Color(0xF90c014d)),
                    onPressed: () {
                      flutterWebViewPlugin.reload();
                    },
                  ),
                ],
              ),
            ),
          );
        },*/
        '/widget_events': (_) {
          return WebviewScaffold(
            url: eventsSelectedUrl,
            javascriptChannels: jsChannels,
            mediaPlaybackRequiresUserGesture: false,
            appBar: AppBar(
              title: const Text('HOS App'),
              backgroundColor: Color(0xFF0c014d),
            ),
            withZoom: true,
            withLocalStorage: true,
            hidden: true,
            initialChild: Container(
              decoration: BoxDecoration(
                image: DecorationImage(
                  image:
                  AssetImage('images/background_deep_gradient_service_times.png'),
                  fit: BoxFit.cover,
                ),
              ),
              constraints: BoxConstraints.expand(),
              child: const Center(
                child: Text(
                  'Directing to Events.....',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 35.0,
                    fontFamily: 'SourceSansPro',
                  ),
                ),
              ),
            ),
            bottomNavigationBar: BottomAppBar(
              color: Color(0xFFdb8c0d),
              child: Row(
                children: <Widget>[
                  IconButton(
                    icon: const Icon(
                      Icons.arrow_back_ios,
                      color: Color(0xF90c014d),
                    ),
                    onPressed: () {
                      flutterWebViewPlugin.goBack();
                    },
                  ),
                  IconButton(
                    icon: const Icon(
                      Icons.arrow_forward_ios,
                      color: Color(0xF90c014d),
                    ),
                    onPressed: () {
                      flutterWebViewPlugin.goForward();
                    },
                  ),
                  IconButton(
                    icon: const Icon(Icons.autorenew, color: Color(0xF90c014d)),
                    onPressed: () {
                      flutterWebViewPlugin.reload();
                    },
                  ),
                ],
              ),
            ),
          );
        },
        '/widget_livestream': (_) {
          return WebviewScaffold(
            url: liveStreamSelectedUrl,
            javascriptChannels: jsChannels,
            mediaPlaybackRequiresUserGesture: false,
            appBar: AppBar(
              title: const Text('HOS App'),
              backgroundColor: Color(0xFF0c014d),
            ),
            withZoom: true,
            withLocalStorage: true,
            hidden: true,
            initialChild: Container(
              decoration: BoxDecoration(
                image: DecorationImage(
                  image:
                  AssetImage('images/background_deep_gradient_service_times.png'),
                  fit: BoxFit.cover,
                ),
              ),
              constraints: BoxConstraints.expand(),
              child: const Center(
                child: Text(
                  'Directing to Live Stream.....',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 35.0,
                    fontFamily: 'SourceSansPro',
                  ),
                ),
              ),
            ),
            bottomNavigationBar: BottomAppBar(
              color: Color(0xFFdb8c0d),
              child: Row(
                children: <Widget>[
                  IconButton(
                    icon: const Icon(
                      Icons.arrow_back_ios,
                      color: Color(0xF90c014d),
                    ),
                    onPressed: () {
                      flutterWebViewPlugin.goBack();
                    },
                  ),
                  IconButton(
                    icon: const Icon(
                      Icons.arrow_forward_ios,
                      color: Color(0xF90c014d),
                    ),
                    onPressed: () {
                      flutterWebViewPlugin.goForward();
                    },
                  ),
                  IconButton(
                    icon: const Icon(Icons.autorenew, color: Color(0xF90c014d)),
                    onPressed: () {
                      flutterWebViewPlugin.reload();
                    },
                  ),
                ],
              ),
            ),
          );
        },
        '/widget_fb': (_) {
          return WebviewScaffold(
            url: fbSelectedUrl,
            javascriptChannels: jsChannels,
            mediaPlaybackRequiresUserGesture: false,
            appBar: AppBar(
              title: const Text('HOS App'),
              backgroundColor: Color(0xFF0c014d),
            ),
            withZoom: true,
            withLocalStorage: true,
            hidden: true,
            initialChild: Container(
              decoration: BoxDecoration(
                image: DecorationImage(
                  image:
                  AssetImage('images/background_deep_gradient_service_times.png'),
                  fit: BoxFit.cover,
                ),
              ),
              constraints: BoxConstraints.expand(),
              child: const Center(
                child: Text(
                  'Directing to Facebook.....',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 35.0,
                    fontFamily: 'SourceSansPro',
                  ),
                ),
              ),
            ),
            bottomNavigationBar: BottomAppBar(
              color: Color(0xFFdb8c0d),
              child: Row(
                children: <Widget>[
                  IconButton(
                    icon: const Icon(
                      Icons.arrow_back_ios,
                      color: Color(0xF90c014d),
                    ),
                    onPressed: () {
                      flutterWebViewPlugin.goBack();
                    },
                  ),
                  IconButton(
                    icon: const Icon(
                      Icons.arrow_forward_ios,
                      color: Color(0xF90c014d),
                    ),
                    onPressed: () {
                      flutterWebViewPlugin.goForward();
                    },
                  ),
                  IconButton(
                    icon: const Icon(Icons.autorenew, color: Color(0xF90c014d)),
                    onPressed: () {
                      flutterWebViewPlugin.reload();
                    },
                  ),
                ],
              ),
            ),
          );
        },
        '/widget_insta': (_) {
          return WebviewScaffold(
            url: insSelectedUrl,
            javascriptChannels: jsChannels,
            mediaPlaybackRequiresUserGesture: false,
            appBar: AppBar(
              title: const Text('HOS App'),
              backgroundColor: Color(0xFF0c014d),
            ),
            withZoom: true,
            withLocalStorage: true,
            hidden: true,
            initialChild: Container(
              decoration: BoxDecoration(
                image: DecorationImage(
                  image:
                  AssetImage('images/background_deep_gradient_service_times.png'),
                  fit: BoxFit.cover,
                ),
              ),
              constraints: BoxConstraints.expand(),
              child: const Center(
                child: Text(
                  'Directing to Instagram.....',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 35.0,
                    fontFamily: 'SourceSansPro',
                  ),
                ),
              ),
            ),
            bottomNavigationBar: BottomAppBar(
              color: Color(0xFFdb8c0d),
              child: Row(
                children: <Widget>[
                  IconButton(
                    icon: const Icon(
                      Icons.arrow_back_ios,
                      color: Color(0xF90c014d),
                    ),
                    onPressed: () {
                      flutterWebViewPlugin.goBack();
                    },
                  ),
                  IconButton(
                    icon: const Icon(
                      Icons.arrow_forward_ios,
                      color: Color(0xF90c014d),
                    ),
                    onPressed: () {
                      flutterWebViewPlugin.goForward();
                    },
                  ),
                  IconButton(
                    icon: const Icon(Icons.autorenew, color: Color(0xF90c014d)),
                    onPressed: () {
                      flutterWebViewPlugin.reload();
                    },
                  ),
                ],
              ),
            ),
          );
        },
        '/widget_yt': (_) {
          return WebviewScaffold(
            url: youTubeSelectedUrl,
            javascriptChannels: jsChannels,
            mediaPlaybackRequiresUserGesture: false,
            appBar: AppBar(
              title: const Text('HOS App'),
              backgroundColor: Color(0xFF0c014d),
            ),
            withZoom: true,
            withLocalStorage: true,
            hidden: true,
            initialChild: Container(
              decoration: BoxDecoration(
                image: DecorationImage(
                  image:
                  AssetImage('images/background_deep_gradient_service_times.png'),
                  fit: BoxFit.cover,
                ),
              ),
              constraints: BoxConstraints.expand(),
              child: const Center(
                child: Text(
                  'Directing to YouTube.....',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 35.0,
                    fontFamily: 'SourceSansPro',
                  ),
                ),
              ),
            ),

            bottomNavigationBar: BottomAppBar(
              color: Color(0xFFdb8c0d),
              child: Row(
                children: <Widget>[
                  IconButton(
                    icon: const Icon(
                      Icons.arrow_back_ios,
                      color: Color(0xF90c014d),
                    ),
                    onPressed: () {
                      flutterWebViewPlugin.goBack();
                    },
                  ),
                  IconButton(
                    icon: const Icon(
                      Icons.arrow_forward_ios,
                      color: Color(0xF90c014d),
                    ),
                    onPressed: () {
                      flutterWebViewPlugin.goForward();
                    },
                  ),
                  IconButton(
                    icon: const Icon(Icons.autorenew, color: Color(0xF90c014d)),
                    onPressed: () {
                      flutterWebViewPlugin.reload();
                    },
                  ),
                ],
              ),
            ),
          );
        },
        '/widget_mail': (_) {
          return WebviewScaffold(
            url: emailSelectedUrl,
            javascriptChannels: jsChannels,
            mediaPlaybackRequiresUserGesture: false,
            appBar: AppBar(
              title: const Text('HOS App'),
              backgroundColor: Color(0xFF0c014d),
            ),
            withZoom: true,
            withLocalStorage: true,
            hidden: true,
            initialChild: Container(
              decoration: BoxDecoration(
                image: DecorationImage(
                  image:
                  AssetImage('images/background_deep_gradient_service_times.png'),
                  fit: BoxFit.cover,
                ),
              ),
              constraints: BoxConstraints.expand(),
              child: const Center(
                child: Text(
                  'Directing to Email.....',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 35.0,
                    fontFamily: 'SourceSansPro',
                  ),
                ),
              ),
            ),

            bottomNavigationBar: BottomAppBar(
              color: Color(0xFFdb8c0d),
              child: Row(
                children: <Widget>[
                  IconButton(
                    icon: const Icon(
                      Icons.arrow_back_ios,
                      color: Color(0xF90c014d),
                    ),
                    onPressed: () {
                      flutterWebViewPlugin.goBack();
                    },
                  ),
                  IconButton(
                    icon: const Icon(
                      Icons.arrow_forward_ios,
                      color: Color(0xF90c014d),
                    ),
                    onPressed: () {
                      flutterWebViewPlugin.goForward();
                    },
                  ),
                  IconButton(
                    icon: const Icon(Icons.autorenew, color: Color(0xF90c014d)),
                    onPressed: () {
                      flutterWebViewPlugin.reload();
                    },
                  ),
                ],
              ),
            ),
          );
        },
        '/widget_ws': (_) {
          return WebviewScaffold(
            url: webSiteSelectedUrl,
            javascriptChannels: jsChannels,
            mediaPlaybackRequiresUserGesture: false,
            appBar: AppBar(
              title: const Text('HOS App'),
              backgroundColor: Color(0xFF0c014d),
            ),
            withZoom: true,
            withLocalStorage: true,
            hidden: true,
            initialChild: Container(
              decoration: BoxDecoration(
                image: DecorationImage(
                  image:
                  AssetImage('images/background_deep_gradient_service_times.png'),
                  fit: BoxFit.cover,
                ),
              ),
              constraints: BoxConstraints.expand(),
              child: const Center(
                child: Text(
                  'Directing to Website.....',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 35.0,
                    fontFamily: 'SourceSansPro',
                  ),
                ),
              ),
            ),
            bottomNavigationBar: BottomAppBar(
              color: Color(0xFFdb8c0d),
              child: Row(
                children: <Widget>[
                  IconButton(
                    icon: const Icon(
                      Icons.arrow_back_ios,
                      color: Color(0xF90c014d),
                    ),
                    onPressed: () {
                      flutterWebViewPlugin.goBack();
                    },
                  ),
                  IconButton(
                    icon: const Icon(
                      Icons.arrow_forward_ios,
                      color: Color(0xF90c014d),
                    ),
                    onPressed: () {
                      flutterWebViewPlugin.goForward();
                    },
                  ),
                  IconButton(
                    icon: const Icon(Icons.autorenew, color: Color(0xF90c014d)),
                    onPressed: () {
                      flutterWebViewPlugin.reload();
                    },
                  ),
                ],
              ),
            ),
          );
        },
      },
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  // Instance of WebView plugin
  final flutterWebViewPlugin = FlutterWebviewPlugin();

  // On destroy stream
  StreamSubscription _onDestroy;

  // On urlChanged stream
  StreamSubscription<String> _onUrlChanged;

  // On urlChanged stream
  StreamSubscription<WebViewStateChanged> _onStateChanged;
  StreamSubscription<WebViewHttpError> _onHttpError;
  StreamSubscription<double> _onProgressChanged;
  StreamSubscription<double> _onScrollYChanged;
  StreamSubscription<double> _onScrollXChanged;

  //final _urlCtrl = TextEditingController(text: selectedUrl);
  final _scaffoldKey = GlobalKey<ScaffoldState>();

  /*@override
  void initState() {
    super.initState();

    flutterWebViewPlugin.close();

    _urlCtrl.addListener(() {
      selectedUrl = _urlCtrl.text;
    });

    // Add a listener to on destroy WebView, so you can make came actions.
    _onDestroy = flutterWebViewPlugin.onDestroy.listen((_) {
      if (mounted) {
        // Actions like show a info toast.
        _scaffoldKey.currentState.showSnackBar(
            const SnackBar(content: const Text('Webview Destroyed')));
      }
    });


  }*/

  @override
  void dispose() {
    // Every listener should be canceled, the same should be done with this stream.
    _onDestroy.cancel();
    _onUrlChanged.cancel();
    _onStateChanged.cancel();
    _onHttpError.cancel();
    _onProgressChanged.cancel();
    _onScrollXChanged.cancel();
    _onScrollYChanged.cancel();

    flutterWebViewPlugin.dispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: _scaffoldKey,
      appBar: AppBar(
        backgroundColor: Color(0xFF0c014d),
        title: const Text('HOS App'),
      ),
      body: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage('images/background_soft_gradient_start.png'),
            fit: BoxFit.cover,
          ),
        ),
        constraints: BoxConstraints.expand(),
        child: SafeArea(
          child: SingleChildScrollView(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SizedBox(
                  height: 7,
                  width: 3,
                ),
                CircleAvatar(
                  radius: 65.0,
                  //backgroundColor: Color(0xF90c014d),
                  backgroundImage: AssetImage('images/Images--Avatar_600x600.png'),
                ),
                FlatButton(
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10.0),
                    side: BorderSide(color: Colors.white,width: 2,style: BorderStyle.solid,),
                  ),
                  color: Color(0xFF0c014d),
                  onPressed: _launchURL,
                  child: Text(
                    'www.houseofsolution.de',
                    style: TextStyle(
                      fontFamily: 'SourceSansPro',
                      fontSize: 27.0,
                      color: Colors.white,
                      //fontWeight: FontWeight.bold,
                      //fontStyle: FontStyle.italic,
                    ),
                  ),
                ),
                Text(
                  'Making Diciples for Christ',
                  style: TextStyle(
                    fontFamily: 'SourceSansPro',
                    color: Color(0xFF0c014d),
                    fontSize: 20.0,
                    letterSpacing: 2.5,
                    //fontWeight: FontWeight.bold,
                    //fontStyle: FontStyle.italic,
                  ),
                ),
                SizedBox(
                  height: 50,
                  width: 225,
                  child: Divider(
                    thickness: 0.5,
                    color: Color(0xFF0c014d),
                  ),
                ),
                GestureDetector(
                  onTap: () {
                    Navigator.of(context).pushNamed('/offerings');
                  },
                  child: Card(
                    color: Color(0xFF0c014d),
                    margin: EdgeInsets.symmetric(vertical: 10, horizontal: 25),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(15.0),
                    ),
                    child: ListTile(
                      leading: Icon(
                        FontAwesomeIcons.handHoldingHeart,
                        color: Colors.white,
                        size: 35.0,
                      ),
                      title: Text(
                        'Offerings & Tithes',
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
                    Navigator.of(context).pushNamed('/service_times');
                  },
                  child: Card(
                    color: Color(0xFF0c014d),
                    margin: EdgeInsets.symmetric(vertical: 10, horizontal: 25),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(15.0),
                    ),
                    child: ListTile(
                      leading: Icon(
                        FontAwesomeIcons.clock,
                        color: Colors.white,
                        size: 35.0,
                      ),
                      title: Text(
                        'Service Times',
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
                    Navigator.of(context).pushNamed('/events');
                  },
                  child: Card(
                    color: Color(0xFF0c014d),
                    margin: EdgeInsets.symmetric(vertical: 10, horizontal: 25),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(15.0),
                    ),
                    child: ListTile(
                      leading: Icon(
                        FontAwesomeIcons.calendarAlt,
                        color: Colors.white,
                        size: 35.0,
                      ),
                      title: Text(
                        'Events & Live Stream',
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
                    Navigator.of(context).pushNamed('/connect_with_us');
                  },
                  child: Card(
                    color: Color(0xFF0c014d),
                    margin: EdgeInsets.symmetric(vertical: 10, horizontal: 25),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(15.0),
                    ),
                    child: ListTile(
                      leading: Icon(
                        FontAwesomeIcons.users,
                        color: Colors.white,
                        size: 35.0,
                      ),
                      title: Text(
                        'Social Media platforms ',
                        style: TextStyle(
                          fontSize: 28.0,
                          fontFamily: 'SourceSansPro',
                          color: Colors.white,
                        ),
                      ),
                    ),
                  ),
                ),
                GestureDetector(
                  onTap: () {
                    Navigator.of(context).pushNamed('/hos_contact');
                  },
                  child: Card(
                    color: Color(0xFF0c014d),
                    margin: EdgeInsets.symmetric(vertical: 10, horizontal: 25),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(15.0),
                    ),
                    child: ListTile(
                      leading: Icon(
                        FontAwesomeIcons.idCard,
                        color: Colors.white,
                        size: 35.0,
                      ),
                      title: Text(
                        'Contact',
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
                    Navigator.of(context).pushNamed('/hos_web');
                  },
                  child: CircleAvatar(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Icon(
                          Icons.arrow_forward,
                          size: 50.0,
                          color: Colors.white,
                        ),
                      ],
                    ),
                    radius: 30.0,
                    // backgroundImage: AssetImage('images/arrow.png'),
                    backgroundColor: Color(0xFF0c014d),
                  ),
                ),

                /*  Card(
                  margin: EdgeInsets.symmetric(vertical: 10, horizontal: 25),
                  child: ListTile(
                    leading: Icon(Icons.email, color: Color(0xFF0c014d)),
                    title: Text(
                      'info@houseofsolution.de',
                      style: TextStyle(
                        fontSize: 20.0,
                        fontFamily: 'SourceSansPro',
                      ),
                    ),
                  ),
                  color: Color(0xFFdb8c0d),
                ),*/
              ],
            ),
          ),
        ),

      ),

    );
  }
}
