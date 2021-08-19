import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const SvgExample(),
    );
  }
}

class SvgExample extends StatelessWidget {
  final assetName = 'assets/undraw_financial_data_es63.svg';

  const SvgExample({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 48.0),
          child: Center(
            child: Column(
              mainAxisSize: MainAxisSize.min,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SvgPicture.asset(
                  assetName,
                  semanticsLabel: 'Logo',
                ),
                const SizedBox(height: 16.0),
                const SizedBox(
                  // width: 400,
                  child: LinearProgressIndicator(
                    minHeight: 4,
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
