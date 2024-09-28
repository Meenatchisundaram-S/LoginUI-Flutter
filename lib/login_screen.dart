import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_app_example/constant.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.start,
          children: <Widget>[
            Stack(children: <Widget>[
              Image.asset(bgImage,
              height: height*0.40,
              width: width,
              fit: BoxFit.cover,
              ),
              Container(
                height: height*0.40,
                width: width,
                decoration: BoxDecoration(
                  gradient: LinearGradient(
                    begin: Alignment.topCenter,
                    end: Alignment.bottomCenter,
                    colors:[
                    Colors.transparent,
                    Colors.white
                  ])
                ),
              )
            ],),
            
            Center(
              child: Text(Appname,
              style: TextStyle(fontSize: 25,
              fontWeight: FontWeight.w700),),
            ),
            Center(
              child: Text(Slogan,
              style: TextStyle(color: Colors.grey),),
            ),
        
            Padding(
              padding: const EdgeInsets.only(left: 10.0,top: 2),
              child: Container(child: Text("  $LoginString  ",
              style: TextStyle(
                fontWeight: FontWeight.bold,
              fontSize: 22),),
              decoration: BoxDecoration(
                gradient: LinearGradient(
                  begin: Alignment.topLeft,
                  end: Alignment.bottomRight,
                  colors: [
                  Colors.green.withOpacity(0.3),
                  Colors.transparent
                ]),
                border: Border(
                  left: BorderSide(color: Colors.green,width: 5)
                )
              ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(10),
              child: TextField(
                decoration: InputDecoration(
                  focusedBorder: UnderlineInputBorder(
                    borderSide: BorderSide(color: Colors.green)
                  ),
                  prefixIcon: Icon(Icons.email,
                  color: Colors.green,),
                  labelText: "Email Address",
                  labelStyle: TextStyle(color: Colors.green,fontSize: 16),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(10),
              child: TextField(
                obscureText: true,
                decoration: InputDecoration(
                  focusedBorder: UnderlineInputBorder(
                    borderSide: BorderSide(color: Colors.green),
                  ),
                  prefixIcon: Icon(Icons.lock_open,
                  color: Colors.green,),
                  labelText: "Password",
                  labelStyle: TextStyle(fontSize: 16,color: Colors.green)
                ),
              ),
            ),
            Align(
              alignment: Alignment.centerRight,
              child: TextButton(onPressed: (){}, child: Text("Forgot Password?"))),
              Center(child: SizedBox(
                height: height*0.08,
                width: width-30,
                child: TextButton(
                  style: TextButton.styleFrom(
                    backgroundColor: Colors.green
                  ),
                  onPressed: (){}, child: Text("Login to Account",
                  style: TextStyle(
                    letterSpacing: 0.5,
                    color: Colors.white,fontSize: 22,fontWeight: FontWeight.bold),)))),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        Text("Don't have an account?"),
                        TextButton(onPressed: (){}, child: Text("Create Account",
                        style: TextStyle(color: Colors.green)))
                      ],
                    )
                    
          ],
        ),
      ),
    );
  }
}