import 'package:flutter/material.dart';

class CustomLoginButton extends StatelessWidget {
  final String label;
  final IconData icon;
  final Color backgroundColor;
  final Function onTap;

  const CustomLoginButton(
      {Key key, this.label = "", this.icon, this.backgroundColor, this.onTap})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
        borderRadius: BorderRadius.circular(40),
          child: Material(
        color: (this.backgroundColor == null)
            ? Theme.of(context).accentColor
            : this.backgroundColor,
        borderRadius: BorderRadius.circular(40),
        child: InkWell(
          onTap: onTap,
          child: Container(
            height: 60,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(40),
              border: (this.backgroundColor == Colors.transparent)
                  ? Border.all(width: 2, color: Colors.white)
                  : null,
            ),
            alignment: Alignment.center,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                (this.icon == null)
                    ? Container()
                    : Icon(
                        this.icon,
                        color: (this.backgroundColor == Colors.white)
                            ? Theme.of(context).accentColor
                            : Colors.white,
                        size: 14,
                      ),
                (this.icon == null) ? Container() : Container(width: 5),
                Text(
                  label,
                  style: TextStyle(
                      color: (this.backgroundColor == Colors.white)
                          ? Theme.of(context).accentColor
                          : Colors.white,
                      fontWeight: FontWeight.bold),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class CustomTextField extends StatelessWidget {
  final String labelText;
  final String hintText;
  final Color color;

  const CustomTextField(
      {Key key, this.labelText = "", this.hintText = "", this.color})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
        width: double.infinity,
        child: Column(
          children: <Widget>[
            Container(
              width: double.infinity,
              padding: EdgeInsets.only(bottom: 10),
              child: Text(
                labelText,
                style: TextStyle(
                    color: (this.color == null)
                        ? Theme.of(context).accentColor
                        : color,
                    fontWeight: FontWeight.bold),
              ),
            ),
            TextField(
              autofocus: false,
              decoration: InputDecoration(
                hintText: hintText,
                focusedBorder: UnderlineInputBorder(
                    borderSide: BorderSide(
                        color: (this.color == null)
                            ? Theme.of(context).accentColor
                            : color)),
                border: UnderlineInputBorder(
                    borderSide: BorderSide(
                        color: (this.color == null)
                            ? Theme.of(context).accentColor
                            : color)),
                enabledBorder: UnderlineInputBorder(
                    borderSide: BorderSide(
                        color: (this.color == null)
                            ? Theme.of(context).accentColor
                            : color)),
                disabledBorder: UnderlineInputBorder(
                    borderSide: BorderSide(
                        color: (this.color == null)
                            ? Theme.of(context).accentColor
                            : color)),
              ),
            ),
          ],
        ));
  }
}
