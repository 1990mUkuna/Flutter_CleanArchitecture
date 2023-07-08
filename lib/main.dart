import 'package:flutter/material.dart';
import 'package:flutter_clean_architecture/Features/Presentation/pages/credential/sign_in_page.dart';

import 'Features/Presentation/pages/credential/sign_up_page.dart';
import 'on_generate_route.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "Instagram Clone",
      darkTheme: ThemeData.dark(),
      onGenerateRoute: OnGenerateRoute.route,
      initialRoute: "/",
      routes: {
        "/": (context) {
          return const SignInPage();
        }
      },
    );
  }
}
