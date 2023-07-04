import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:loginpageex/componenets.dart';
import 'package:loginpageex/constains/constains.dart';
import 'package:loginpageex/utils/LoginPage/LoginView.dart';
import 'package:provider/provider.dart';

class ThemeNotifier with ChangeNotifier {
  ThemeData _themeData;

  ThemeNotifier(this._themeData);

  getTheme() => _themeData;

  setTheme(ThemeData themeData) async {
    _themeData = themeData;
    notifyListeners();
  }
}

void main() => runApp(
  ChangeNotifierProvider<ThemeNotifier>(
    create: (_) => ThemeNotifier(AppTheme.darkTheme),
    child: MyApp(),
  ),
);


class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    final themeNotifier = Provider.of<ThemeNotifier>(context);
    return MaterialApp(
      home: LoginPage(),
      theme: themeNotifier.getTheme(),
      debugShowCheckedModeBanner: false,
    );
  }
}
