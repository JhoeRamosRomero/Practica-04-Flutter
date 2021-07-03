import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ItemHeaderCustom extends StatelessWidget {
  //--- Parametros
  final String imgAssets;
  final String title;
  final int year;
  final String calificacion;
  
  const ItemHeaderCustom(
      {this.imgAssets,
      this.title,
      this.year,
      this.calificacion,});

  @override
  Widget build(BuildContext context) {

    return Container(

      width: 250,
      height: double.infinity,
      margin: EdgeInsets.only( right: 10 ),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        color: Colors.white,
      ),

      child: Column(
        children: [
          //---- IMAGEN
          ClipRRect(
            borderRadius: BorderRadius.circular(10),
            child: Image.asset(
            this.imgAssets,
            width: double.infinity,
            height: 135,
            fit: BoxFit.fill,
            ),
          ) ,
          //---- TITULO
          Container(
            margin: EdgeInsets.only( top: 10, bottom: 7 ),
            child: Text(
              this.title,
              style: TextStyle(
                fontWeight: FontWeight.bold
              ),
              ),
              alignment: Alignment.centerLeft,
          ),
          //---- AÑO
          Container(
            child: Text( 
              this.year.toString() ,
              style: TextStyle(
                fontSize: 12
              ),
            ),
            alignment: Alignment.centerLeft,
          ),

        ],
      ),
    ); 
  }
}
