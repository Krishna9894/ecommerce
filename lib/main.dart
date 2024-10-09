import 'package:e_commerce/firebase_options.dart';
import 'package:e_commerce/pages/login_page1.dart';
import 'package:e_commerce/provider/favoriteProvider.dart';
import 'package:e_commerce/provider/provider_cart.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) => MultiProvider(
          providers: [
            ChangeNotifierProvider(
              create: (_) => ProviderCart(),
            ),
            ChangeNotifierProvider(
              create: (_) => FavoriteProvider(),
            ),
          ],
          child: MaterialApp(
            debugShowCheckedModeBanner: false,
            theme: ThemeData(
              textTheme: GoogleFonts.mulishTextTheme(),
            ),
            home: LoginPage1(),
            //home: const BottomNavBar(),
          ));
}
/*
Platform  Firebase App Id
web       1:880350310387:web:d2157c87d30d5d295e6c86
android   1:880350310387:android:c38eb01eb41756b65e6c86
ios       1:880350310387:ios:b80914a8267392805e6c86
macos     1:880350310387:ios:b80914a8267392805e6c86
*/
