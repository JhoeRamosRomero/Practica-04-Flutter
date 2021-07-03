import 'package:flutter/material.dart';

class ItemListCustom extends StatelessWidget{

  final String title                  ;
  final int    year                   ;
  final String productor              ; 
  final String duracion               ;
  final String calificacionItem       ;
  final String imagen                 ;

  const ItemListCustom({
    this.title,
    this.year,
    this.productor,
    this.duracion,
    this.calificacionItem,
    this.imagen
    });

  
  @override
  Widget build(BuildContext context) {

    final anchoComponente = MediaQuery.of(context).size.width;

    return Container(

      //--- Customizer Component
      //-----------------------------

      height: 120,
      width: double.infinity,
      padding: EdgeInsets.all(10),
      margin: EdgeInsets.symmetric(vertical: 2 ),

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
            width: 80,
            height: 80,
            fit: BoxFit.fill,
            ),
          ) ,
      
          Container(
            padding: EdgeInsets.symmetric( vertical: 20, horizontal: 5 ),
            margin: EdgeInsets.only( left: 20),
            width: anchoComponente - 170,
            child: Column(
              children: [
                Container(
                  alignment: Alignment.centerLeft,
                  child: Text(
                    this.title,
                    style: TextStyle(
                      fontWeight: FontWeight.bold
                    ),
                  ),
                ),
                Container(
                  margin: EdgeInsets.symmetric( vertical: 5 ),
                  alignment: Alignment.centerLeft,
                  child: Text(
                    this.productor + " * " + this.year.toString()
                  ),
                ),
                Container(
                  alignment: Alignment.centerLeft,
                  child: Text(
                    this.duracion
                  ),
                ) 
              ],
            ),
          )

        ],

      ),

    );

  }



}