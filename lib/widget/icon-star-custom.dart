import 'package:flutter/cupertino.dart';import 'package:flutter/material.dart';class IconStarCustom extends StatelessWidget {  final String calificacionItem   ;  final int cantidadEstrellas  ;  const IconStarCustom({   this.calificacionItem,   this.cantidadEstrellas});  @override  Widget build(BuildContext context) {    //--- Armamos una lista de acuerdo a la cantidad de estrellas    List<Widget> iconos = new List<Widget>();    for( int i = 0; i <= this.cantidadEstrellas; i++ ){      iconos.add( new Icon( Icons.star ) );    }    return Row(      children:[        Text( this.calificacionItem ),        Row(          children: iconos,        )      ]    );  }}