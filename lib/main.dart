import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:food_ecommerce_app/feature/home_page/presentation/view/home_page_view.dart';
import 'package:food_ecommerce_app/feature/splash/presentation/view/splash_view.dart';
import 'package:food_ecommerce_app/firebase_options.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(options: DefaultFirebaseOptions.currentPlatform);
  runApp(const Todo());
}

class Todo extends StatelessWidget {  
  const Todo({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        textTheme: const TextTheme(
          bodyLarge: TextStyle(color: Color(0xFF1B1C1F)),
          bodyMedium: TextStyle(color: Color(0xFF1B1C1F)),
          titleLarge: TextStyle(color: Color(0xFF1B1C1F)),
          titleMedium: TextStyle(color: Color(0xFF1B1C1F)),
          titleSmall: TextStyle(color: Color(0xFF1B1C1F)),
        ),
      ),
      home: HomePageView(),
    );
  }
}