import 'package:app_curso_jacob/components/components.dart';
import 'package:app_curso_jacob/screens/login/provider_page_controller.dart';
import 'package:flutter/animation.dart';
import 'package:flutter/material.dart';

class SelectLoginScreen extends StatefulWidget {

  @override
  _SelectLoginScreenState createState() => _SelectLoginScreenState();
}

class _SelectLoginScreenState extends State<SelectLoginScreen> {
  
  @override
  Widget build(BuildContext context) {

    return Container(
      color: Theme.of(context).accentColor.withOpacity(0.9),
      padding: EdgeInsets.symmetric(horizontal: 40),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Container(
            height: 120,
          ),
          Icon(
            Icons.headset_mic,
            size: 40,
            color: Colors.white,
          ),
          Container(
            height: 15,
          ),
          RichText(
            text: TextSpan(
                style: TextStyle(color: Colors.white, fontSize: 20),
                children: <TextSpan>[
                  TextSpan(text: "Awesome"),
                  TextSpan(
                      text: "App",
                      style: TextStyle(fontWeight: FontWeight.bold)),
                ]),
          ),
          Container(
            height: 120,
          ),
          CustomLoginButton(
            label: "SING UP",
            backgroundColor: Colors.transparent,
            onTap: () {
              ProviderPageController.of(context).toPage(0);
            },
          ),
          Container(
            height: 30,
          ),
          CustomLoginButton(
            label: "LOGIN",
            backgroundColor: Colors.white,
            onTap: () {
              ProviderPageController.of(context).toPage(2);
            },
          ),
        ],
      ),
    );
  }
}
