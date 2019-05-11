import 'package:app_curso_jacob/components/components.dart';
import 'package:app_curso_jacob/screens/login/provider_page_controller.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class SingInScreen extends StatefulWidget {
  @override
  _SingInScreenState createState() => _SingInScreenState();
}

class _SingInScreenState extends State<SingInScreen> {

  Widget _lineTextLine() {
    return Row(
      children: <Widget>[
        Expanded(child: Divider(height: 15,color: Colors.black,)),
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Text("OR CONNECT WITH"),
        ),
        Expanded(child: Divider(height: 15,color: Colors.black,)),
      ],
    );
  }

  @override
  Widget build(BuildContext context) {

    PageController _controller = ProviderPageController.of(context).controller;

    return Container(
      color: Colors.white.withOpacity(0.9),
      padding: EdgeInsets.symmetric(horizontal: 40),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Icon(Icons.headset_mic,
              size: 50, color: Theme.of(context).accentColor),
          Container(height: 50),
          CustomTextField(
              labelText: "EMAIL", hintText: "fausto.level@gmail.com"),
          Container(height: 20),
          CustomTextField(labelText: "PASSWORD", hintText: "***********"),
          Container(height: 20),
          Container(
            width: double.infinity,
            child: Text("Forgot Password?",
                textAlign: TextAlign.right,
                style: TextStyle(
                    fontWeight: FontWeight.bold,
                    color: Theme.of(context).accentColor)),
          ),
          Container(height: 35),
          CustomLoginButton(label: "LOGIN"),
          Container(height: 5),
          _lineTextLine(),
          Container(height: 5),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              Expanded(child: CustomLoginButton(label: "FACEBOOK", icon: FontAwesomeIcons.facebookF, backgroundColor: Colors.blue[900],),),
              Container(width: 15,),
              Expanded(child: CustomLoginButton(label: "GOOGLE", icon: FontAwesomeIcons.google, backgroundColor: Colors.red[700],),),
            ],
          )
        ],
      ),
    );
  }
}
