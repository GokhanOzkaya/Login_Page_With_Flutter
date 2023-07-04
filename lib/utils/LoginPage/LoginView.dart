
import 'package:flutter/material.dart';
import 'package:loginpageex/componenets.dart';
import 'package:loginpageex/constains/constains.dart';
import 'package:loginpageex/main.dart';
import 'package:loginpageex/utils/FakeHomePage.dart';
import 'package:provider/provider.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> with WidgetsBindingObserver {
  bool isKeyboardVisible = false;
  bool isDarkModeEnabled = false;

  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance.addObserver(this);
  }

  @override
  void dispose() {
    WidgetsBinding.instance.removeObserver(this);
    super.dispose();
  }
  @override
  void didChangeMetrics() {
    final bottomInset = WidgetsBinding.instance.window.viewInsets.bottom;
    setState(() {
      isKeyboardVisible = bottomInset > 0;
    });
  }
  @override
  Widget build(BuildContext context) {
    final themeNotifier = Provider.of<ThemeNotifier>(context);
    return Scaffold(

      body: Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(
            colors: [
              kAccentBlueColor,
              kAccentOrangeColor,
            ],
            begin: Alignment.topLeft,
            transform: GradientRotation(9.0),
            end: Alignment.topRight,
          ),
        ),
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 25.0,left: 20),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text('Merhaba,',
                          style: TextStyle(
                            color: Colors.blueGrey,
                            fontSize: 25,
                            fontWeight: FontWeight.w500,
                          )),
                      Text(
                        '''PetGo'ya''',
                        style: TextStyle(
                            color: Colors.deepOrange,
                            fontWeight: FontWeight.w900,
                            fontSize: 50),
                      ),
                      Text('Hoşgeldiniz,',
                          style: TextStyle(
                            color: Colors.blueGrey,
                            fontSize: 25,
                            fontWeight: FontWeight.w500,
                          )),
                    ],
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 50,
            ),
            Expanded(
              child: Container(
                decoration: BoxDecoration(
                  color:Theme.of(context).backgroundColor ,
                  borderRadius: BorderRadius.only(
                    topRight: Radius.circular(50.0),
                    topLeft: Radius.circular(50.0),
                    bottomLeft: Radius.circular(0.0),
                    bottomRight: Radius.circular(0.0),
                  ),
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    buildLoginForm(context),
                    SizedBox(
                      height: 15,
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 40.0),
                      child: Row(
                        children: [
                          Expanded(
                            child: ElevatedButton(
                                onPressed: () {
                                  Navigator.push(context, MaterialPageRoute(builder: (context) => FakeHomePage()));
                                },
                                child: Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: Text('LOGIN',style: TextStyle(fontSize: 23,color: kDarkTextColor),),
                                ),
                                style: ButtonStyle(
                                  backgroundColor:
                                  MaterialStateProperty.all<Color>(Colors.deepOrange),
                                  foregroundColor:
                                  MaterialStateProperty.all<Color>(Colors.white),
                                )),
                          ),
                        ],
                      ),
                    ),
                    if(!isKeyboardVisible)buildLoginAppleGoogle(context,true),

                    Switch(
                      value: themeNotifier.getTheme() == AppTheme.darkTheme,
                      onChanged: (value) {
                        if (value) {
                          themeNotifier.setTheme(AppTheme.darkTheme);
                        } else {
                          themeNotifier.setTheme(AppTheme.lightTheme);
                        }
                      },
                    ),
                    Text(
                      'Change Theme',
                      style: Theme.of(context).textTheme.headline1,
                    ),

                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
