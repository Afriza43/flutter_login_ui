import 'package:flutter/material.dart';
import 'package:login_app/login.dart';

void main() {
  runApp(RegisterApp());
}

class RegisterApp extends StatelessWidget {
  const RegisterApp({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        resizeToAvoidBottomInset: false,
        body: Stack(
          children: [
            Container(
                child: Image.asset(
                  'assets/geo_frame_5.jpg',
                  width: double.infinity,
                  height: double.infinity,
                  fit: BoxFit.cover,
                ),
              ),
            Center(
                child: RegisterForm(),
            ),
          ],
        ),
      ),
    );
  }
}

class RegisterForm extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: <Widget>[
          

          Text('Create New Account!',
              style: TextStyle(
                fontFamily: 'Poppins',
                fontWeight: FontWeight.bold,
                fontSize: 25.0,
                color: Colors.black,
              )),

          Container(
            child: TextField(
              decoration: InputDecoration(
                labelText: 'Username',
                contentPadding: EdgeInsets.symmetric(horizontal: 10.0),
              ),
            ),
            margin: EdgeInsets.only(bottom: 20.0,left: 63.0,right: 70.0,top: 20.0),
            decoration: BoxDecoration(
              color: Colors.white,
              boxShadow: [
                BoxShadow(
                  color: Colors.grey.withOpacity(0.5),
                  spreadRadius: 0,
                  blurRadius: 1,
                  offset: Offset(5, 7),
                ),
              ],
            ),
          ),
          Container(
            child: TextField(
              obscureText: true,
              decoration: InputDecoration(
                labelText: 'Password',
                contentPadding: EdgeInsets.symmetric(horizontal: 10.0),
              ),
            ),
            margin: EdgeInsets.only(bottom: 20.0,left: 63.0,right: 70.0),
            decoration: BoxDecoration(
              color: Colors.white,
              boxShadow: [
                BoxShadow(
                  color: Colors.grey.withOpacity(0.5),
                  spreadRadius: 0,
                  blurRadius: 1,
                  offset: Offset(5, 7),
                ),
              ],
            ),
          ),

          Container(
            child: TextField(
              obscureText: true,
              decoration: InputDecoration(
                labelText: 'Confirm Password',
                contentPadding: EdgeInsets.symmetric(horizontal: 10.0),
              ),
            ),
            margin: EdgeInsets.only(bottom: 20.0,left: 63.0,right: 70.0),
            decoration: BoxDecoration(
              color: Colors.white,
              boxShadow: [
                BoxShadow(
                  color: Colors.grey.withOpacity(0.5),
                  spreadRadius: 0,
                  blurRadius: 1,
                  offset: Offset(5, 7),
                ),
              ],
            ),
          ),

          Container(
            child: TextButton(
              onPressed: () {},
              child: Text(
                'Sign Up',
                style: TextStyle(
                  fontFamily: 'Montserrat',
                  fontSize: 18.0, 
                  fontWeight: FontWeight.bold, 
                  color: Colors.white,
                ),
              ),
            ),
            decoration: BoxDecoration(
              color: Colors.black,
              boxShadow: [
                BoxShadow(
                  color: Colors.grey.withOpacity(0.5),
                  spreadRadius: 0,
                  blurRadius: 1,
                  offset: Offset(5, 7),
                ),
              ],
            ),
          ),
          SizedBox(height: 30.0),


          RichText(
            textAlign: TextAlign.center,
            text: 
              TextSpan(
                text: "Already have account?",
                style: TextStyle( 
                fontFamily: 'Poppins',
                color: Colors.black,
                fontSize: 12,
              ),
            ),
          ),
          TextButton(
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => LoginApp()),
              );
            },
            child: Text(
                'Sign In',
                style: TextStyle(
                fontFamily: 'Poppins',
                fontWeight: FontWeight.bold,
                color: Colors.blue,
                fontSize: 12,
              ),
            ),
          ),    
        ],
      ),
    );
  }
}
