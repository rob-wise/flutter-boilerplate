import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:provider/provider.dart';
import '../models/Counter.dart';

class ShowCounter extends StatefulWidget {
  const ShowCounter({super.key});


  @override
  State<ShowCounter> createState() => _ShowCounterState();
}


class _ShowCounterState extends State<ShowCounter> {
  int _counter = 0;
  @override
  Widget build(BuildContext context) {
    var buttonCounter = context.watch<CounterModel>();

    return Scaffold(
      appBar: AppBar(
        title: Text("The state thing"),
      ),
      body: Center(

        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            const Text(
              'Previously you pushed this: ',
            ),
            Text(
              buttonCounter.pressCount.toString(),
              style: Theme.of(context).textTheme.headline4,

            ),
            const RotatedBox(
                quarterTurns: 2,
                child: Text("TIMES")
            ),
            ElevatedButton(
                onPressed: () => context.go('/buttonpush'),
                child: Text("Back to button push")
            )
          ],

        ),
      ),
    );
  }
}
