import 'package:flutter/material.dart';

import 'package:auto_route/auto_route.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'package:simplymail/core/blocs/blocs.dart';
import 'package:simplymail/core/routing/route_imports.dart';


void main() {
   WidgetsFlutterBinding.ensureInitialized();
  runApp(const MyApp());
}

final autoRouter = AppRouter();

class MyApp extends StatelessWidget {
  const MyApp({super.key});



  @override
  Widget build(BuildContext context) {
    return 
    // MultiBlocProvider(
    //   providers: MultiBlocs.providers,
        // child: 
         MaterialApp.router(
          title: 'Flutter Demo',
          theme: ThemeData(
            colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
          ),
          routerConfig: autoRouter.config(
              navigatorObservers: () => [AutoRouteObserver()],
          ),
        );

    // );
  }
}
