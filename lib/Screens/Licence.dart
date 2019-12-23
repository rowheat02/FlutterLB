import 'package:flutter/material.dart';
import 'package:webview_flutter/webview_flutter.dart';
import 'dart:async';

class Licence extends StatefulWidget {
  @override
  _LicenceState createState() => _LicenceState();
}

class _LicenceState extends State<Licence> {
  final Completer<WebViewController> _controller =
      Completer<WebViewController>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('title'),
      ),
      body: SingleChildScrollView(
        child: Container(
            width: 500,
            height: 300,
            padding: EdgeInsets.only(bottom: 30),
            child: WebView(
              initialUrl: 'https://google.com',
              javascriptMode: JavascriptMode.unrestricted,
              onWebViewCreated: (WebViewController webViewController) {
                _controller.complete(webViewController);
              },
            )),
      ),
    );
  }
}
