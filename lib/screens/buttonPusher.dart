import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:provider/provider.dart';
import '../models/Counter.dart';

class ButtonPusher extends StatefulWidget {
  const ButtonPusher({super.key, required this.title});

  final String title;

  @override
  State<ButtonPusher> createState() => _ButtonPusherState();
}


class _ButtonPusherState extends State<ButtonPusher> {
  int _counter = 0;

  void _incrementCounter() {
    print("added in increment");
    setState(() {
      _counter++;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Center(

        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            const Text(
              'You have pushed the button this x times:',
            ),
            Text(
              '$_counter',
              style: Theme.of(context).textTheme.headline4,

            ),
            const RotatedBox(
                quarterTurns: 2,
                child: Text("Lorem ipsum")
            ),
            ElevatedButton(
                onPressed: () => context.go('/showstate'),
                child: Text("Show my state")
            )
          ],

        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          _incrementCounter();
          var counter = context.read<CounterModel>();
          counter.add(1);
        },
        tooltip: 'Increment',
        child: const Icon(Icons.add),
      ),
    );
  }
}