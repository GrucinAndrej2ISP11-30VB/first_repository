import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(

        colorScheme: ColorScheme.fromSeed(seedColor: Colors.blue.shade800),
        useMaterial3: true,
      ),
      home: const MyHomePage(title: 'Flutter project'),

    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});
  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0;

  void _incrementCounter() {
    setState(() {

      _counter++;
    });
  }

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(

        backgroundColor: Theme.of(context).colorScheme.inversePrimary,

        title: Center(
          child: Text(
            widget.title,
            textAlign: TextAlign.center,

          ),
        ),
      ),

      body: Stack(
          children: <Widget>[
            Align(alignment: const Alignment(0.0, -0.85),
              child: Container(
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(15),
                    color: Colors.blue.shade400),
                width: 150,
                height: 75,
                alignment: Alignment.center,
                child: const Text( 'One',
                  textDirection: TextDirection.ltr,

                ),
              ),
            ),

            Align(
              alignment: const Alignment(0.0, -0.45),
              child: Container(
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(15),
                      color: Colors.blue),
                  width: 150,
                  height: 75,
                  alignment: Alignment.center,
                  child: const Text( 'Two',
                    textDirection: TextDirection.ltr,

                  )
              ),
            ),

            Align(
              alignment: const Alignment(0.0, -0.05),
              child: Container(
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(15),
                      color: Colors.blue.shade600),
                  width: 150,
                  height: 75,
                  alignment: Alignment.center,
                  child: const Text('Three',
                    textDirection: TextDirection.ltr,

                  )
              ),
            ),

            Align(
              alignment: const Alignment(0.0, 0.35),
              child: Container(
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(15),
                      color: Colors.blue.shade700),
                  width: 150,
                  height: 75,
                  alignment: Alignment.center,
                  child: const Text('Four',
                    textDirection: TextDirection.ltr,

                  )
              ),
            ),

            Align(
              alignment: const Alignment(0.0, 0.75),
              child: Container(
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(15),
                      color: Colors.blue.shade800),
                  width: 150,
                  height: 75,
                  alignment: Alignment.center,
                  child: const Text ('Five',
                    textDirection: TextDirection.ltr,

                  )
              ),
            ),
          ]
      ),
    );
  }
}