import 'package:flutter/material.dart';
import 'package:news_app/views/home_view.dart';
import 'package:news_app/services/news_service.dart';
import 'package:dio/dio.dart';
import 'package:webview_flutter/webview_flutter.dart';
void main() {
  runApp(const NewsApp());
}

class NewsApp extends StatelessWidget {
  const NewsApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(debugShowCheckedModeBanner:false,home:HomeView(),);
  }
}

//
// class WebViewApp extends StatefulWidget {
//   const WebViewApp({super.key});
//
//   @override
//   State<WebViewApp> createState() => _WebViewAppState();
// }
//
// class _WebViewAppState extends State<WebViewApp> {
//   late final WebViewController controller;
//
//   @override
//   void initState() {
//     super.initState();
//     controller = WebViewController()
//       ..loadRequest(
//         Uri.parse( "https://news.google.com/rss/articles/CBMiT2h0dHBzOi8vd3d3Lm55dGltZXMuY29tLzIwMjQvMDEvMjUvdXMvcG9saXRpY3MvbWNjb25uZWxsLWJvcmRlci1kZWFsLXRydW1wLmh0bWzSAQA?oc=5"),
//       );
//   }
//
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: const Text('Flutter WebView'),
//       ),
//       body: WebViewWidget(
//         controller: controller,
//       ),
//     );
//   }
// }