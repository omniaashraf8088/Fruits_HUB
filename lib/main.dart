import 'package:bloc/bloc.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';

import 'package:flutter_localizations/flutter_localizations.dart';

import 'package:fruits_hub/core/router/router_export.dart';
import 'package:fruits_hub/core/router/routes.dart';
import 'package:fruits_hub/core/services/bloc_observer.dart';
import 'package:fruits_hub/core/services/get_it.dart';
import 'package:fruits_hub/core/services/shared_pref.dart';
import 'package:fruits_hub/core/utils/app_colors.dart';
import 'package:fruits_hub/firebase_options.dart';
import 'package:fruits_hub/generated/l10n.dart';


void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(options: DefaultFirebaseOptions.currentPlatform);
  Bloc.observer = AppBlocObserver();
  await SharedPref.init();
  setupGetIt();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Fruits Hub',
      theme: ThemeData(
        scaffoldBackgroundColor: AppColors.whiteColor,
        colorSchemeSeed: AppColors.deepGrayColor,
        fontFamily: 'Cairo',
      ),
      localizationsDelegates: [
        S.delegate,
        GlobalMaterialLocalizations.delegate,
        GlobalWidgetsLocalizations.delegate,
        GlobalCupertinoLocalizations.delegate,
      ],
      supportedLocales: S.delegate.supportedLocales,
      debugShowCheckedModeBanner: false,
      locale: const Locale('ar'),
      onGenerateRoute: AppRouter.onGenerateRoute,
      initialRoute: Routes.splash,
      
    );
  }
}


