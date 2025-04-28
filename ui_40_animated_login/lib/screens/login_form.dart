import 'package:flutter/material.dart';
class LoginForm extends StatelessWidget {
  const LoginForm({super.key});

  @override
  Widget build(BuildContext context) {
    return  SingleChildScrollView(
      padding: const EdgeInsets.symmetric(vertical: 50,horizontal: 50),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          FlutterLogo(
            size: 120,
            style: FlutterLogoStyle.stacked,
          ),
          SizedBox(height: 30,),
          Text("Login",style: TextStyle(fontSize: 30,fontWeight: FontWeight.bold),),
          SizedBox(height: 30,),
          Container(
            height: 50,
            width: double.infinity,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(30),
                border: Border.all()
            ),
            padding: EdgeInsets.symmetric(horizontal: 10),
            child: TextFormField(
              decoration: InputDecoration(
                  border: InputBorder.none,
                  hintText: "E-mail"
              ),
            ),
          ),
          SizedBox(height: 30,),
          Container(
            height: 50,
            width: double.infinity,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(30),
                border: Border.all()
            ),
            padding: EdgeInsets.symmetric(horizontal: 10),
            child: TextFormField(
              decoration: InputDecoration(
                  border: InputBorder.none,
                  hintText: "Password"
              ),
            ),
          ),
          SizedBox(height: 30,),
          Container(
            height: 50,
            width: double.infinity,
            decoration: BoxDecoration(
              color: Colors.cyan,
              borderRadius: BorderRadius.circular(30),
              boxShadow: [
                BoxShadow(
                  color: Colors.black38,
                  blurRadius: 10,
                  offset: Offset(5, 5),
                ),
              ],
            ),
            alignment: Alignment.center,
            child: Text(
              "Submit",
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 22,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
