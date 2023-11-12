import 'package:flutter/material.dart';
import 'dart:async';

import 'package:greet_flutter/greet_flutter.dart' as greet_flutter;
import 'package:greet_flutter/greet_flutter.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  String? greetResult;
  Future<String?> greetAsyncResult =
      Future.delayed(const Duration(seconds: 0), null);

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    const textStyle = TextStyle(fontSize: 25);
    const spacerSmall = SizedBox(height: 10);
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Native Packages'),
        ),
        body: SingleChildScrollView(
          child: Container(
            padding: const EdgeInsets.all(10),
            child: Column(
              children: [
                const Text(
                  'This calls a native function through FFI that is shipped as source in the package. '
                  'The native code is built as part of the Flutter Runner build.',
                  style: textStyle,
                  textAlign: TextAlign.center,
                ),
                spacerSmall,
                Text(
                  'sum(1, 2) = $greetResult',
                  style: textStyle,
                  textAlign: TextAlign.center,
                ),
                spacerSmall,
                ElevatedButton(
                  onPressed: _onGreetPressed,
                  child: const Text('Greet'),
                ),
                spacerSmall,
                ElevatedButton(
                  onPressed: _onGreetAsyncPressed,
                  child: const Text('Greet Async'),
                ),
                spacerSmall,
                FutureBuilder<String?>(
                  future: greetAsyncResult,
                  builder:
                      (BuildContext context, AsyncSnapshot<String?> value) {
                    final displayValue =
                        (value.hasData) ? value.data : 'loading';
                    return Text(
                      'greet result: $displayValue',
                      style: textStyle,
                      textAlign: TextAlign.center,
                    );
                  },
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  void _onGreetPressed() {
    setState(() {
      greetResult = greet("Sync World");
    });
  }

  void _onGreetAsyncPressed() {
    setState(() {
      greetAsyncResult = greetAsync("Async World");
    });
  }
}
