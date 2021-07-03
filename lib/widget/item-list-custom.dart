import 'package:flutter/material.dart';
import 'package:practica04/widget/icon-star-custom.dart';

class ItemListCustom extends StatelessWidget{


  final String descripcionItem        ;
  final String calificacionItem       ;
  final int    cantidadEstrellasItem  ;
  final String imagen;

  const ItemListCustom({
    this.descripcionItem,
    this.calificacionItem,
    this.cantidadEstrellasItem,
    this.imagen
    });

  
  @override
  Widget build(BuildContext context) {

    return Container(

      //--- Customizer Component
      //-----------------------------

      height: 80,
      padding: EdgeInsets.all(10),
      margin: EdgeInsets.symmetric(vertical: 2, ),

      decoration: BoxDecoration(

        borderRadius: BorderRadius.all( Radius.circular( 5 ) ),
        color: Colors.white

      ),

      //-----------------------------

      child: Row(


        children: [

          //---- IMAGEN
          ClipRRect(
            borderRadius: BorderRadius.circular(10),
            child: Image.asset(
            this.imagen,
            width: double.infinity,
            height: 135,
            fit: BoxFit.fill,
            ),
          ) ,
          Container(
            margin: EdgeInsets.symmetric( horizontal: 15, vertical: 10 ),
            width: 150,
            child: Column(
              children: [
                Container(
                  child: Text( this.descripcionItem, style: TextStyle(
                     fontWeight: FontWeight.bold ,
                    ),
                    textAlign: TextAlign.left,
                  ),
                  alignment: Alignment.centerLeft,
                )
              ],
            ),
          )
        ],

      ),

    );

  }



}