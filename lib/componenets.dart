import 'package:flutter/material.dart';
import 'package:loginpageex/constains/constains.dart';
import 'package:loginpageex/utils/LoginPage/RegisterPageView.dart';

Padding buildLoginForm(BuildContext context) {
  return Padding(
    padding: const EdgeInsets.only(top: 20, left: 20, right: 20),
    child: Column(children: [
      Row(
        children: [
          Expanded(
            child: TextFormField(
              decoration: InputDecoration(
                prefixIcon: Icon(Icons.mail_outline),
                hintText: 'Mail',
                filled: true,
                fillColor: Colors.white10,
                enabledBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(30.0),
                  borderSide: BorderSide(
                      color: Colors.pinkAccent), // add a border color
                ),
                focusedBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(30.0),
                  borderSide:
                      BorderSide(color: Colors.blue), // add a border color
                ),
              ),
            ),
          ),
        ],
      ),
      SizedBox(
        height: 10,
      ),
      Row(
        children: [
          Expanded(
            child: TextFormField(
              decoration: InputDecoration(
                prefixIcon: Icon(Icons.mail_outline),
                hintText: 'Password',
                filled: true,
                fillColor: Colors.white10,
                enabledBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(30.0),
                  borderSide: BorderSide(
                      color: Colors.pinkAccent), // add a border color
                ),
                focusedBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(30.0),
                  borderSide:
                      BorderSide(color: Colors.blue), // add a border color
                ),
              ),
            ),
          ),
        ],
      ),
      SizedBox(
        height: 10,
      ),
      Row(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          Text(
            'Forget Password',
            style: TextStyle(color: Colors.blue),
          ),
          SizedBox(
            width: 20,
          ),
        ],
      )
    ]),
  );
}

Padding buildLRegisterForm(BuildContext context) {
  return Padding(
      padding: const EdgeInsets.only(top: 20, left: 20, right: 20),
      child: Column(
        children: [
          buildTextBox(Icons.person, 'Name Surname'),
          buildTextBox(Icons.mail_outline, 'Mail'),
          buildTextBox(Icons.cake_outlined, 'Date Of Birth Day'),
          buildTextBox(Icons.password, 'Password'),
        ],
      ));
}

Padding buildTextBox(IconData icon, String text) {
  return Padding(
    padding: const EdgeInsets.only(bottom: 10.0),
    child: Row(
      children: [
        Expanded(
          child: TextFormField(
            decoration: InputDecoration(
              prefixIcon: Icon(icon),
              hintText: text,
              filled: true,
              fillColor: Colors.white10,
              enabledBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(30.0),
                borderSide:
                    BorderSide(color: Colors.pinkAccent), // add a border color
              ),
              focusedBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(30.0),
                borderSide: BorderSide(color: Colors.blue), // add a border color
              ),
            ),
          ),
        ),
      ],
    ),
  );
}

Expanded buildLoginAppleGoogle(BuildContext context, bool isRegister) {
  return Expanded(
    child: Column(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        Row(
          children: [
            SizedBox(
              width: 20,
            ),
            Expanded(
                child: Divider(
              height: 12,
            )),
            SizedBox(
              width: 20,
            ),
            Text(
              'Or',
              style: TextStyle(fontSize: 18),
            ),
            SizedBox(
              width: 20,
            ),
            Expanded(
                child: Divider(
              height: 12,
            )),
            SizedBox(
              width: 20,
            ),
          ],
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              width: 70,
              padding: EdgeInsets.all(10),
              child: Image.asset('assets/images/104490_apple_icon.png',
                  fit: BoxFit.cover),
              decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(10.0),
                  boxShadow: [
                    BoxShadow(
                        color: Colors.black26,
                        spreadRadius: 2,
                        offset: Offset(0, 6),
                        blurRadius: 29.2)
                  ]),
            ),
            SizedBox(
              width: 30,
            ),
            Container(
              width: 70,
              padding: EdgeInsets.all(10),
              child: Image.asset('assets/images/7123025_logo_google_g_icon.png',
                  fit: BoxFit.cover),
              decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(10.0),
                  boxShadow: [
                    BoxShadow(
                        color: Colors.black26,
                        spreadRadius: 2,
                        offset: Offset(0, 6),
                        blurRadius: 29.2)
                  ]),
            ),
          ],
        ),
        isRegister
            ? Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text('Dont Have An Account?'),
                  GestureDetector(
                    onTap: (){
                      Navigator.push(context, MaterialPageRoute(builder: (context) => RegisterPageView(),));
                    },
                    child: Text(
                      ' Register Now',
                      style: TextStyle(color: Colors.blue),
                    ),
                  )
                ],
              )
            : GestureDetector(
                onTap: () {
                  Navigator.pop(context);
                },
                child:Text(
                  ' < Go Back',
                  style: TextStyle(color: Colors.blue,fontSize: 18),
                )),
      ],
    ),
  );
}
