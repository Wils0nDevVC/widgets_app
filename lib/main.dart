import 'package:flutter/material.dart';
import 'package:widgets_app/config/router/app_router.dart';
import 'package:widgets_app/config/theme/app_theme.dart';
import 'package:widgets_app/presentation/screens/buttons/buttons_screen.dart';
import 'package:widgets_app/presentation/screens/cards/cards_screen.dart';
import 'package:widgets_app/presentation/screens/home/home_screen.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return  MaterialApp.router(
      //! go_router : quitamos home porque lo tenemos en nuestro appRouter
      routerConfig: appRouter,
      debugShowCheckedModeBanner: false,
      theme:  AppTheme(selectedColor: 4).getTheme(),
      
      //Esto funcionaba con Navigation
      // routes: { 
      //   '/buttons' : (context) => const ButtonsScreen(),
      //   '/cards': (context) => const CardsScreen()
      // } ,
    );
  }
}
