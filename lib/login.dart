import 'package:flutter/material.dart';
import 'package:login_app/register.dart';


void main() {
  runApp(LoginApp());
}

class LoginApp extends StatelessWidget {
  const LoginApp({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        resizeToAvoidBottomInset: false,
        body: Stack(
          children: [
            Container(
                margin: const EdgeInsets.only(left: 15.0),
                child: Image.asset(
                  'assets/geo_frame.jpg',
                  width: double.infinity,
                  height: double.infinity,
                  fit: BoxFit.cover,
                ),
              ),
            Center(
                child: LoginForm(),
            ),
          ],
        ),
      ),
    );
  }
}

class LoginForm extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: <Widget>[
          

          Text('Hello!',
              style: TextStyle(
                fontFamily: 'Poppins',
                fontWeight: FontWeight.bold,
                fontSize: 60.0,
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
            child: TextButton(
              onPressed: () {},
              child: Text(
                'Sign In',
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
          SizedBox(height: 20.0),


          RichText(
            textAlign: TextAlign.center,
            text: 
              TextSpan(
                text: "Don't have an account?",
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
                MaterialPageRoute(builder: (context) => RegisterApp()),
              );
            },
            child: Text(
                'Sign Up',
                style: TextStyle(
                fontFamily: 'Poppins',
                fontWeight: FontWeight.bold,
                color: Colors.blue,
                fontSize: 12,
              ),
            ),
          ),

        
          SizedBox(height: 10.0),

          Text('Or sign in with :',
              style: TextStyle(
                fontFamily: 'Poppins',
                fontWeight: FontWeight.normal,
                color: Colors.black,
              )),
          SizedBox(height: 15.0),

          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  border: Border.all(
                    color: Colors.grey.withOpacity(0.5),
                    width: 2.0,
                  ),
                ),
                padding: EdgeInsets.all(10.0),
                child: 
                Image.asset(
                  'assets/google.png', 
                  width: 30.0,
                  height: 30.0,
                ),
              ),
              SizedBox(width: 15,),
              Container(
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  border: Border.all(
                    color: Colors.grey.withOpacity(0.5),
                    width: 2.0,
                  ),
                ),
                padding: EdgeInsets.all(10.0),
                child: 
                Image.asset(
                  'assets/fb.png', 
                  width: 30.0,
                  height: 30.0,
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
