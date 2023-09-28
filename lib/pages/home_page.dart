import 'package:flutter/material.dart';
import 'package:webview_flutter/webview_flutter.dart';


class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();

}

class _HomePageState extends State<HomePage> {
  WebViewController webViewController = WebViewController()
  ..setNavigationDelegate(
      NavigationDelegate(
    onProgress: (int progress){},
      onWebResourceError: (error){}
  ))..loadRequest(Uri.parse('https://pub.dev'));

  @override
  Widget build(BuildContext context) {
    return  Scaffold(

      body: WebViewWidget(controller:webViewController ,

      )
    );
  }
}
