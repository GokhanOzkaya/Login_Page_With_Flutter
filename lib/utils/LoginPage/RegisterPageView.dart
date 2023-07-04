
import 'package:flutter/material.dart';
import 'package:loginpageex/componenets.dart';
import 'package:loginpageex/constains/constains.dart';

class RegisterPageView extends StatefulWidget {
  const RegisterPageView({super.key});

  @override
  State<RegisterPageView> createState() => _RegisterPageViewState();
}

class _RegisterPageViewState extends State<RegisterPageView> with WidgetsBindingObserver {
  bool isKeyboardVisible = false;

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

            SizedBox(
              height: 50,
            ),
            Expanded(
              child: Container(
                decoration: BoxDecoration(
                  color: Colors.white,
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
                    buildLRegisterForm(context),
                    SizedBox(
                      height: 15,
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 40.0),
                      child: Row(
                        children: [
                          Expanded(
                            child: ElevatedButton(
                                onPressed: () {},
                                child: Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: Text('REGİSTER',style: TextStyle(fontSize: 23,color: kDarkTextColor),),
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
                    if(!isKeyboardVisible)buildLoginAppleGoogle(context,false),



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
