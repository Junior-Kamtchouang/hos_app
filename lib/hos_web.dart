import 'package:flutter/material.dart';
import 'package:webview_flutter/webview_flutter.dart';



class WebApplication extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xFF0c014d),
        title: const Text('HOS App'),
      ),
      body: WebView(
        initialUrl: 'https://houseofsolution.de/',//url from the converted website
        javascriptMode: JavascriptMode.unrestricted,
      ),
    );
  }
}
