import 'dart:async';

import 'package:flutter/material.dart';
import 'package:webview_flutter/webview_flutter.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  final Completer<WebViewController> _controller =
      Completer<WebViewController>();
  bool isLoading = true;
  String siteName = "www.naver.com";
  @override
  Widget build(BuildContext context) {
    return Scaffold(

      appBar: AppBar(
        backgroundColor: Colors.purple,
        title: Center(child: Column(
          children: [
            const Text('WebView'),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: ElevatedButton(
                    onPressed: (){
                      setState(() {
                        siteName = 'www.google.com';
                      });
                      _reloadSite();
                    }, 
                    child: const Text('Google')),
                ),
                              Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: ElevatedButton(
              onPressed: (){
                setState(() {
                  siteName = 'www.naver.com';
                });
                _reloadSite();
              }, 
              child: const Text('naver')),
                              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: ElevatedButton(
                onPressed: (){
                  setState(() {
                    siteName = 'www.daum.net';
                  });
                  _reloadSite();
                }, 
                child: const Text('daum')),
              ),
                  
              ],
            ),
       
                   
            
          ],
        )
        ),
        toolbarHeight: 100,
      ),
      
      body: Stack(
        children: [
          WebView(
            initialUrl:
               'http://$siteName',
            javascriptMode: JavascriptMode.unrestricted,
            onWebViewCreated: (WebViewController webViewController) {
              _controller.complete(webViewController);
            },
            onPageFinished: (finish) {
              setState(() {
                isLoading = false;
              });
            },
            onPageStarted: (start) {
              setState(() {
                isLoading = true;
              });
            },
          ),
          isLoading
              ? const Center(
                  child: CircularProgressIndicator(),
                )
              : Stack(),
        ],
      ),
      floatingActionButton: FutureBuilder<WebViewController>(
          future: _controller.future,
          builder: (BuildContext context,
              AsyncSnapshot<WebViewController> controller) {
            if (controller.hasData) {
              return FloatingActionButton(
                child: const Icon(Icons.arrow_back),
                backgroundColor: Colors.red,
                onPressed: () {
                  controller.data!.goBack();
                },
              );
            }
            return Stack();
          }),
    );
  }

  // -- Functions
  _reloadSite(){
    _controller.future.then((value) => value.loadUrl('http://$siteName'));
  }

} // End
