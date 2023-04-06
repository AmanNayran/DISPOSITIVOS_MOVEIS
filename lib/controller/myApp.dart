import 'package:flutter/material.dart';

import '../views/myHome.dart';
import '../views/pages/imcPage.dart';
import '../views/pages/layoutPage.dart';
import '../views/pages/postoPage.dart';
import '../views/pages/profilePage.dart';
import '../views/pages/tabBarPage.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Develop's" ,
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.teal,
      ),
      initialRoute: '/',
      routes: {
        '/': (context) => MyHomePage(),
        '/posto': (context) => PostoPage(),
        '/cadastro': (context) => CadastroPage(),
        '/profile': (context) => ProfilePage( nome: '', email: ''),
        '/layout': (context) => LayoutPage(),
        '/imc': (context) => imcPage(),
        '/tabBar': (context) => TabBarPage(),
      },
    );
  }
}