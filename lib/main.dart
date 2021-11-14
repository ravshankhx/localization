import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:localization/pages/home_page.dart';
void main()  async{
  WidgetsFlutterBinding.ensureInitialized();

  await EasyLocalization.ensureInitialized();

  runApp(

    EasyLocalization(child:  MyApp(),
        fallbackLocale: Locale('en','US'),
        supportedLocales: [Locale('en','US'),Locale('ru','RU'),Locale('uz','UZ'),Locale('fr','FR')],
        path: 'assets/translations',
    ),
  );
}

class MyApp extends StatelessWidget {

  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      localizationsDelegates: context.localizationDelegates,
      supportedLocales: context.supportedLocales,
      locale: context.locale,
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: HomePage(),
    );
  }
}