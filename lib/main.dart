import 'package:clubkompass/features/auth/registration_screen.dart';
import 'package:clubkompass/features/blog/addPost/add_post_screen.dart';
import 'package:clubkompass/firebase_options.dart';
import 'package:clubkompass/landing_screen.dart';
import 'package:clubkompass/navigation.dart';
import 'package:clubkompass/shared/models/repository/firebase_auth.dart'
    as auth;
import 'package:clubkompass/shared/models/repository/interface_auth.dart';
import 'package:clubkompass/theme/theme.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );

  final FirebaseAuth instanceAuth = FirebaseAuth.instance;
  final repositoryAuth = auth.AuthRepository(firebaseAuth: instanceAuth);
  //final repositoryMock = MockUserRepository();

  runApp(
    MultiProvider(
      providers: [
        //ChangeNotifierProvider(create: (_) => UserProvider()),
        Provider<InterfaceAuth>(create: (_) => repositoryAuth),
      ],
      child: const MainApp(),
    ),
  );
}

class MainApp extends StatefulWidget {
  const MainApp({super.key});

  @override
  State<MainApp> createState() => _MainAppState();
}

class _MainAppState extends State<MainApp> {
  ThemeMode themeMode = ThemeMode.system;
  bool _isDarkMode = true;

  void toggleTheme() {
    _isDarkMode = !_isDarkMode;
    setState(() {
      if (_isDarkMode) {
        themeMode = ThemeMode.dark;
      } else {
        themeMode = ThemeMode.light;
      }
    });
  }

  final router = {
    '/': (context) => const LandingScreen(),
    '/register': (context) => const RegistrationScreen(),
    '/navigation': (context) => const Navigation(),
    '/add_post': (context) => const AddPostScreen()
  };

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      initialRoute: '/',
      routes: router,
      themeMode: themeMode,
      theme: GlobalThemeData.lightThemeData,
      darkTheme: GlobalThemeData.darkThemeData,
      //home: const LandingScreen()
    );
  }
}
