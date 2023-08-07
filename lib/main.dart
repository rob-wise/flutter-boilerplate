import 'package:flutter/material.dart';
import 'package:flutter_boilerplate/screens/Login.dart';
import 'package:flutter_boilerplate/screens/buttonPusher.dart';
import 'package:flutter_boilerplate/screens/showState.dart';
import 'package:go_router/go_router.dart';
import 'package:provider/provider.dart';

import 'models/Counter.dart';

void main() {
  runApp(const MyApp());
}

GoRouter router() {
  return GoRouter(
    initialLocation: '/login',
    routes: [
      GoRoute(
        path: '/login',
        builder: (context, state) => const MyLogin(),
      ),
      GoRoute(
          path: '/buttonpush',
          builder: (context, state) => const ButtonPusher(title: "hi")
      ),
      GoRoute(
          path: '/showstate',
          builder: (context, state) => const ShowCounter()
      )
    ],
  );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(
          create: (context) => CounterModel(),
        )
      ],
      child: MaterialApp.router(
        title: 'State Demo',
        routerConfig: router(),
      ),
    );
  }
}