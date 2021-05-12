
import 'package:flutter/material.dart';
import 'package:easy_localization/easy_localization.dart';

void main() async {
  await EasyLocalization.ensureInitialized();
  runApp(EasyLocalization(
  // ignore: non_constant_identifier_names
      supportedLocales: [Locale('en','US'),Locale('hi','IN')],
        path: 'assets',
        fallbackLocale: Locale('en','US'),
        child: MyApp(),
   ));
}
class MyApp extends StatelessWidget {
  //This Widget is the root of your application
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      supportedLocales: context.supportedLocales,
      localizationsDelegates: context.localizationDelegates,
      title: 'flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: Scaffold(
        body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            Center(
              child: Text(
                'hii_application',
                style: TextStyle(fontSize: 25),
              ).tr(),
            ),
            Center(
              child: Text(
                'how are_you',
                style: TextStyle(fontSize: 25),
              ).tr(),
            ),
            Center(
              child: Text(
                'please_click',
                style: TextStyle(fontSize: 25),
              ).tr(),
            ),
            SizedBox(height: 20),
            // ignore: deprecated_member_use
            RaisedButton(
              onPressed: () {
                // ignore: deprecated_member_use
                context.locale= Locale('hi','IN');
              },
              child: Text('Change to Hindi'),
            ),
            SizedBox(height: 20),
            // ignore: deprecated_member_use
            RaisedButton(
              onPressed: () {
                // ignore: deprecated_member_use
                context. locale = Locale('en','US');
              },
              child: Text('Change to English'),
            ),
          ],
        ),
      ),
    );
  }
}