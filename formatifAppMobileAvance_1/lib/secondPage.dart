import 'package:flutter/material.dart';

class SecondPage extends StatefulWidget {
  const SecondPage({super.key, required this.title});

  final String title;

  // This widget is the root of your application.
  @override
  State<SecondPage> createState() => _SecondPage();
}

class _SecondPage extends State<SecondPage> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: Text(widget.title),
      ),
      body: Column(
        children: <Widget>[
          Expanded(flex: 2, child: Container(
            height: MediaQuery.sizeOf(context).height/3*2,
            child: Row(
              children: [
                Expanded(child: Container(
                  color: Colors.amber,
                )),
                Expanded(child: Row(
                  children: [
                    Expanded(
                        flex: 2,
                        child: Container(
                          color: Colors.green,
                        )
                    ),
                    Expanded(
                        flex: 1,
                        child: Container(
                          color: Colors.blue,
                        )
                    ),
                  ],
                )),
              ],
            ),
          )),
          Expanded(flex: 1, child: Container(
            color: Colors.red,
          )),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.pushNamed(context, '/');
        },
        tooltip: 'Increment',
        child: const Icon(Icons.add),
      ), // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}
