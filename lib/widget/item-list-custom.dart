import 'package:flutter/material.dart';import 'package:practica04/widget/icon-star-custom.dart';class ItemListCustom extends StatelessWidget{  //---- Constantes ah Utilizar  final double calificationSize = 10;  final double descriptionSize  = 20;  final Color colorIconoDerecho = Colors.black12;  final String descripcionItem        ;  final String calificacionItem       ;  final int    cantidadEstrellasItem  ;  final String imagen;  const ItemListCustom({    this.descripcionItem,    this.calificacionItem,    this.cantidadEstrellasItem,    this.imagen    });    @override  Widget build(BuildContext context) {    return Container(      //--- Customizer Component      //-----------------------------      height: 80,      padding: EdgeInsets.all(10),      margin: EdgeInsets.symmetric(vertical: 5, horizontal: 20),      decoration: BoxDecoration(        borderRadius: BorderRadius.all( Radius.circular( 5 ) ),        color: Colors.white60      ),      //-----------------------------      child: Row(        children: [          Container(            margin: EdgeInsets.symmetric( horizontal: 15 ),            child: Image.asset( imagen ),          ),          Container(            margin: EdgeInsets.symmetric( horizontal: 15 ),            width: 150,            child: Column(              children: [                Container(                  child: Text( this.descripcionItem, style: TextStyle(                     fontWeight: FontWeight.bold ,                    ),                    textAlign: TextAlign.left,                  ),                  alignment: Alignment.centerLeft,                ),                IconStarCustom(                  calificacionItem: this.calificacionItem,                  cantidadEstrellas: this.cantidadEstrellasItem,                )              ],            ),          ),          Container(            width: 120,          ),          Container(            alignment: Alignment.centerRight,            child: Icon( Icons.accessibility_sharp, color: colorIconoDerecho, ),          )        ],      ),    );  }}