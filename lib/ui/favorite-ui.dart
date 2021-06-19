import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class FavoriteUI extends StatelessWidget{
  @override
  Widget build(BuildContext context) {

    return Scaffold(
      body: UI(),
    );

  }

}


class UI extends StatelessWidget {
  @override
  Widget build(BuildContext context) {

    return Stack(
      children: [
        SafeArea(
          child: SingleChildScrollView(
            child: Column(

              children: [

                Header(),
                Body()

              ],

            ),
          ),
        ),
    ]

    );

  }

}

class Header extends StatelessWidget {
  @override
  Widget build(BuildContext context) {

    return Container(

      height: 200,

    );

  }

}

class Body extends StatelessWidget {
  @override
  Widget build(BuildContext context) {

    return Container(

      child: Text("TESSSSSSSSSSSSSSSSss"),

    );

  }

}