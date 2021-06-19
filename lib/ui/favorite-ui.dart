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

      height: 200,
      child: Column(
        children: [
          //--- Componentes - Linea 01
          Container(
            margin: EdgeInsets.symmetric( horizontal: 20, vertical: 15 ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              textDirection: TextDirection.ltr,
              children: [
                Expanded(

                  child: Container(
                    alignment: Alignment.centerLeft,
                    child: Icon(
                        Icons.add_business
                    ),
                  ),
                ),
                Expanded(
                  child: Container(
                    alignment: Alignment.center,
                    child: Text(
                        "Kudos"
                    ),
                  ),
                ),
                Expanded(
                  child: Container(
                    alignment: Alignment.centerRight,
                    child: Icon(
                        Icons.shopping_cart_outlined
                    ),
                  ),
                ),
              ],
            ),
          ),
          //--- Componentes - Linea 02
          Container(
            margin: EdgeInsets.symmetric( horizontal: 20 ),
            child: Row(
              children: [
                Expanded(
                  child: Container(
                    child: Text(
                        "Favourites"
                    ),
                    alignment: Alignment.centerLeft,
                  ),
                ),
                Expanded(
                  child: Container(
                    child: Container(
                      width: 90,
                      height: 30,
                      alignment: Alignment.center,
                      child: Text(
                        "VIEW ALL",
                        style: TextStyle(
                          fontSize: 8,
                          fontWeight: FontWeight.bold
                        ),
                      ),
                      decoration: BoxDecoration(
                          color: Colors.deepPurple,
                          borderRadius: BorderRadius.circular(20)
                      ),
                    ),
                    alignment: Alignment.centerRight,
                  ),
                )
              ],
            ),
              //--- Componentes - Linea 03
          ),
          ItemHeaderCustom(
          cantidadEstrellas: 4,
          title: "Washer Machine",
          calificacion: "4.6",
          imgAssets: "assets/Item01.png",
          description: "Ready Wash Staininess",
          )
          /*SingleChildScrollView(
            child: Column(
              children: [
                Container(
                  child: ListView(
                    scrollDirection: Axis.horizontal,
                    children: [
                      ItemHeaderCustom(
                        cantidadEstrellas: 4,
                        title: "Washer Machine",
                        calificacion: "4.6",
                        description: "Ready Wash Staininess",
                      )
                    ],
                  ),
                )
              ],
            ),
          )*/
        ],
      ),

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
                  imagen: "assets/Item01.png",
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
                  imagen: "assets/Item03.png",
                ),
                ItemListCustom(
                  descripcionItem: "Air Conditioner",
                  calificacionItem: "5.0"         ,
                  cantidadEstrellasItem: 5        ,
                  imagen: "assets/Item04.png",
                ),
                ItemListCustom(
                  descripcionItem: "Television",
                  calificacionItem: "5.0"         ,
                  cantidadEstrellasItem: 5        ,
                  imagen: "assets/Item01.png",
                ),

              ],

            ),

          )

        ],
      ),

    );

  }

}