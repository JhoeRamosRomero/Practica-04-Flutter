import 'package:flutter/material.dart';
import 'package:practica04/ui/favorite-ui.dart';

void main() => runApp( MyApp() );

class MyApp extends StatelessWidget{

  @override
  Widget build(BuildContext context) {

    return MaterialApp(

      debugShowCheckedModeBanner: false,
      title: "SponsorMe",
      initialRoute: "favorite",
      routes: {
        'favorite': (_) => FavoriteUI(),
      },
      theme: ThemeData(
        scaffoldBackgroundColor: Colors.black12
      )
    );

  }


}