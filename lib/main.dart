import 'package:flutter/material.dart';
import 'package:get_api_calling_using_flutter_provider/homePage.dart';
import 'package:get_api_calling_using_flutter_provider/provider/usur_provider.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(
    MultiProvider(
      providers: [
        ChangeNotifierProvider(
          create: (_)=>UsurProvider()
          )
          ],
  child: MyApp(),));
}

class MyApp extends StatelessWidget{
  const MyApp ({Key?key}) : super (key: key);
  @override
  Widget build(BuildContext context){
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomePage(),
    );
  }
}
