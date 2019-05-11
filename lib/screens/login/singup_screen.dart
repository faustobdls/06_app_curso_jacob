import 'package:app_curso_jacob/components/components.dart';
import 'package:app_curso_jacob/screens/login/provider_page_controller.dart';
import 'package:flutter/material.dart';

class SingUpScreen extends StatefulWidget {
  @override
  _SingUpScreenState createState() => _SingUpScreenState();
}

class _SingUpScreenState extends State<SingUpScreen> {
  @override
  Widget build(BuildContext context) {
    PageController _controller = ProviderPageController.of(context).controller;

    return Container(
      color: Colors.white.withOpacity(0.9),
      padding: EdgeInsets.symmetric(horizontal: 40),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Icon(
            Icons.headset_mic,
            size: 50,
            color: Theme.of(context).accentColor,
          ),
          Container(
            height: 50,
          ),
          CustomTextField(
              labelText: "EMAIL", hintText: "fausto.level@gmail.com"),
          Container(
            height: 20,
          ),
          CustomTextField(labelText: "PASSWORD", hintText: "***********"),
          Container(
            height: 20,
          ),
          CustomTextField(
              labelText: "CONFIRM PASSWORD", hintText: "***********"),
          Container(
            height: 25,
          ),
          GestureDetector(
            onTap: () {
              ProviderPageController.of(context).toPage(2, duration: 600);
            },
            child: Container(
              width: double.infinity,
              child: Text(
                "Already have an account?",
                textAlign: TextAlign.right,
                style: TextStyle(
                    fontWeight: FontWeight.bold,
                    color: Theme.of(context).accentColor),
              ),
            ),
          ),
          Container(
            height: 35,
          ),
          CustomLoginButton(
            label: "SINGUP",
          ),
        ],
      ),
    );
  }
}
