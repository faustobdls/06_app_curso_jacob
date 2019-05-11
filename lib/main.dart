import 'package:app_curso_jacob/screens/login/login_screen.dart';
import 'package:app_curso_jacob/screens/login/provider_page_controller.dart';
import 'package:app_curso_jacob/screens/login/select_login_screen.dart';
import 'package:app_curso_jacob/screens/login/singup_screen.dart';
import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'AwesomeApp',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(accentColor: Color(0xFFFFF65E5C)),
      home: Material(
        child: Stack(
          fit: StackFit.expand,
          children: <Widget>[
            Image.asset(
              'lib/assets/mountains.jpg',
              fit: BoxFit.cover,
            ),
            LoginScreen()
          ],
        ),
      ),
    );
  }
}

class LoginScreen extends StatefulWidget {
  @override
  _LoginScreenState createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  PageController _controller;

  @override
  void initState() {
    super.initState();
    this._controller = PageController(initialPage: 1);
  }

  @override
  void dispose() {
    super.dispose();
    this._controller.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return ProviderPageController(
        controller: _controller,
        child: PageView(
          controller: _controller,
          children: <Widget>[
            SingUpScreen(),
            SelectLoginScreen(),
            SingInScreen()
          ],
        ));
  }
}
