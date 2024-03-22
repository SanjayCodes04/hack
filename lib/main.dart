import 'package:evo_finder/firebase_options.dart';
import 'package:evo_finder/pages/application/application_page.dart';
import 'package:evo_finder/pages/bloc_providers.dart';
import 'package:evo_finder/pages/register/register.dart';
import 'package:evo_finder/pages/signin/sign_in.dart';
import 'package:evo_finder/pages/welcome/welcome.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();

  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: AppBlocProviders.allBlocProviders,
      child: ScreenUtilInit(
        builder: (context, child) => MaterialApp(
          theme: ThemeData(
            appBarTheme:
                const AppBarTheme(elevation: 0, backgroundColor: Colors.white),
          ),
          debugShowCheckedModeBanner: false,
          home: const ApplicationPage(),
          routes: {
            "signIn": (context) => const SignIn(),
            "register": (context) => const Register(),
          },
        ),
      ),
    );
  }
}
