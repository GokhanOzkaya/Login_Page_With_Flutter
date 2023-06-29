import 'package:flutter/material.dart';

Padding buildLoginForm() {
  return Padding(
    padding: const EdgeInsets.only(top: 20,left: 20,right: 20),
    child: Column(children: [
      Row(
        children: [
          Icon(Icons.mail_outline),
          SizedBox(width: 10.0), // add some spacing between the icon and the text field
          Expanded(
            child: TextFormField(
              decoration: InputDecoration(
                hintText: 'Mail',
                filled: true,
                fillColor: Colors.white10,
                enabledBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(30.0),
                  borderSide: BorderSide(color: Colors.greenAccent), // add a border color
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
      SizedBox(
        height: 10,
      ),
      TextFormField(
        decoration: InputDecoration(
          hintText: 'Password',
          icon: Icon(Icons.password),
          filled: true,
          fillColor: Colors.white10,
          enabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(30.0),
            borderSide: BorderSide(color: Colors.greenAccent), // add a border color
          ),
          focusedBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(30.0),
            borderSide: BorderSide(color: Colors.blue), // add a border color
          ),
        ),
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

Expanded buildLoginAppleGoogle() {
  return Expanded(
    child: Column(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
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

        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text('Dont Have An Account?'),
            Text(' Register Now',style: TextStyle(color: Colors.blue),
          )],
        ),
      ],
    ),
  );
}
