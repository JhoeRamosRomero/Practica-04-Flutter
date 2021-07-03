import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:practica04/widget/item-header-custom.dart';
import 'package:practica04/widget/item-list-custom.dart';

class FavoriteUI extends StatelessWidget{
  @override
  Widget build(BuildContext context) {

    return Scaffold(
      body: UI(),
      bottomNavigationBar: BottomNavigationBar(
        unselectedItemColor: Colors.black26,

        items: [
          BottomNavigationBarItem(icon: Icon( Icons.ballot_sharp )      , label: ""       ),
          BottomNavigationBarItem(icon: Icon( Icons.add_sharp )         , label: ""       ),
          BottomNavigationBarItem(icon: Icon( Icons.favorite )              , label: ""       ),
          BottomNavigationBarItem(icon: Icon( Icons.ac_unit_sharp )     , label: ""       ),
          BottomNavigationBarItem(icon: Icon( Icons.add_business_sharp ), label: ""       ),
        ],
      ),
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
      margin: EdgeInsets.symmetric( horizontal: 20, vertical: 20 ),
      height: 300,
      child: Column(
        children: [
          
          //--- Componentes - Linea 01
          Container(
            alignment: Alignment.centerLeft,
            margin: EdgeInsets.only( bottom: 20 ),
            child: Text(
                "Premieres",
                style: TextStyle(
                  fontWeight: FontWeight.bold
                ),
            ),
              //--- Componentes - Linea 03
          ),
          SingleChildScrollView(
            child: Container(
              height: 190,
              width: double.infinity,
              child: ListView(
                scrollDirection: Axis.horizontal,
                children: [
                  ItemHeaderCustom(
                    title: "Quien Mato a Sara?",
                    year: 2020,
                    calificacion: "4.6",
                    imgAssets: "assets/Portada 01.jpg",
                  ),
                  ItemHeaderCustom(
                    title: "Lef4Dead 2",
                    year: 2014,
                    calificacion: "4.6",
                    imgAssets: "assets/Portada 02.jpg",
                  ),
                  ItemHeaderCustom(
                    title: "DARK",
                    year: 2020,
                    calificacion: "4.6",
                    imgAssets: "assets/Portada 03.jpg",
                  ) 
                ],
              ),
            ),
          ),
        ],
      ),

    );

  }

}

class Body extends StatelessWidget {
  @override
  Widget build(BuildContext context) {

    return Container(

      margin: EdgeInsets.symmetric( horizontal: 22, vertical: 15 ),

      child: Column(
        children: [

          //--- Titulo

          Container(
            margin: EdgeInsets.only( bottom: 15 ),
            child: Text("In this week", style: 
              TextStyle(
                fontWeight: FontWeight.bold
              ),
            ),
            alignment: Alignment.centerLeft,
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
                  imagen: "assets\Portada 05.jpg",
                ),
                ItemListCustom(
                  descripcionItem: "Wishk",
                  calificacionItem: "3.3"         ,
                  cantidadEstrellasItem: 3        ,
                  imagen: "assets\Portada 04.jpg",
                ),
                ItemListCustom(
                  descripcionItem: "Speakers",
                  calificacionItem: "4.6"         ,
                  cantidadEstrellasItem: 4        ,
                  imagen: "assets\Portada 03.jpg",
                ),
                ItemListCustom(
                  descripcionItem: "Air Conditioner",
                  calificacionItem: "5.0"         ,
                  cantidadEstrellasItem: 5        ,
                  imagen: "assets\Portada 02.jpg",
                ),
                ItemListCustom(
                  descripcionItem: "Television",
                  calificacionItem: "5.0"         ,
                  cantidadEstrellasItem: 5        ,
                  imagen: "assets\Portada 01.jpg",
                ),

              ],

            ),

          )

        ],
      ),

    );

  }

}