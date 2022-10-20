import 'package:flutter/material.dart';
import 'package:flutter_field_check/pages/home_page.dart';
import 'package:flutter_field_check/pages/login_page.dart';
import 'package:flutter_field_check/pages/select_project_page.dart';
import 'package:go_router/go_router.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      routerConfig: _router,
      title: 'Field check',
      theme: ThemeData(
        backgroundColor: Colors.white,
        primaryColor: Colors.white,
        appBarTheme: const AppBarTheme(
          color: Colors.white,
          elevation: 0.0,
          iconTheme: IconThemeData(color: Colors.black),
          titleTextStyle: TextStyle(
            fontSize: 18.0,
            color: Colors.black87,
            fontWeight: FontWeight.w400,
          ),
        ),
        textSelectionTheme: const TextSelectionThemeData(
          cursorColor: Colors.black,
        ),
      ),
      debugShowCheckedModeBanner: false,
    );
  }

  final GoRouter _router = GoRouter(
    initialLocation: '/select-project',
    routes: <GoRoute>[
      GoRoute(
        path: '/',
        builder: (BuildContext context, GoRouterState state) {
          return const HomePage();
        },
      ),
      GoRoute(
        path: '/login',
        builder: (BuildContext context, GoRouterState state) {
          return const LoginPage();
        },
      ),
      GoRoute(
        path: '/select-project',
        builder: (BuildContext context, GoRouterState state) {
          return const SelectProjectPage();
        },
      ),
    ],
  );
}
