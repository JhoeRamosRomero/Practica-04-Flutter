import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:practica04/widget/item-list-custom.dart';

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
      child: Text("Header"),

    );

  }

}

class Body extends StatelessWidget {
  @override
  Widget build(BuildContext context) {

    return Container(

      child: Column(
        children: [

          //--- Titulo

          Container(
            child: Text("ALL"),
          ),

          //--- ListView
          SingleChildScrollView(
            //--- Componente Detail
            child: Column(

              children: [

                ItemListCustom(
                  descripcionItem: "Microwave Ove",
                  calificacionItem: "4.6"         ,
                  cantidadEstrellasItem: 4        ,
                  imagen: "assets/Item03.png",
                ),
                ItemListCustom(
                  descripcionItem: "Wishk",
                  calificacionItem: "3.3"         ,
                  cantidadEstrellasItem: 3        ,
                  imagen: "assets/Item02.png",
                ),
                ItemListCustom(
                  descripcionItem: "Speakers",
                  calificacionItem: "4.6"         ,
                  cantidadEstrellasItem: 4        ,
                  imagen: "assets/Item01.png",
                ),
                ItemListCustom(
                  descripcionItem: "Air Conditioner",
                  calificacionItem: "5.0"         ,
                  cantidadEstrellasItem: 5        ,
                  imagen: "assets/Item01.png",
                ),
                ItemListCustom(
                  descripcionItem: "Television",
                  calificacionItem: "5.0"         ,
                  cantidadEstrellasItem: 5        ,
                  imagen: "assets/Item04.png",
                ),

              ],

            ),

          )

        ],
      ),

    );

  }

}