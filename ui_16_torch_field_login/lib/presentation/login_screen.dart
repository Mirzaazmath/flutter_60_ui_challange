import 'package:flutter/material.dart';

import '../utils/custom_clipper.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  // User Name Controller
  TextEditingController userNameController=TextEditingController(text: "Dev_73arner");
  // Password Controller
  TextEditingController passwordController =TextEditingController();
  // Bool to handle torch Effect
  bool isShow=false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(25),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Spacer(),
              // Login Text
              Hero(
                tag: "Logo",
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const FlutterLogo(
                      size: 45,
                    ),
                    const SizedBox(
                      width: 10,
                    ),
                    Text(
                      "LOGIN",
                      style: Theme.of(context)
                          .textTheme
                          .headlineLarge
                          ?.copyWith(
                              color: Theme.of(context).primaryColor,
                              fontWeight: FontWeight.w800),
                    ),
                    const SizedBox(
                      width: 40,
                    ),
                  ],
                ),
              ),
              const Spacer(),
              // Greeting Text
              Center(
                  child: Text(
                "Hey there,",
                style: Theme.of(context).textTheme.titleMedium?.copyWith(
                    color: Theme.of(context).primaryColor,
                    fontWeight: FontWeight.bold),
              )),
              const SizedBox(
                height: 10,
              ),
              Center(
                  child: Text(
                "Welcome Back!",
                style: Theme.of(context).textTheme.titleLarge?.copyWith(
                    color: Theme.of(context).primaryColor,
                    fontWeight: FontWeight.w800),
              )),
              const SizedBox(
                height: 30,
              ),
              // User Name Section
              Padding(
                padding: const EdgeInsets.only(left: 10, bottom: 5),
                child: Text(
                  "User Name",
                  style: Theme.of(context).textTheme.titleMedium?.copyWith(
                      color: Colors.grey, fontWeight: FontWeight.bold),
                ),
              ),
              Container(
                decoration: BoxDecoration(
                    color: Theme.of(context).primaryColorDark,
                    borderRadius: BorderRadius.circular(15)),
                padding: const EdgeInsets.symmetric(horizontal: 10),
                child: TextFormField(
                  controller: userNameController,
                  style: TextStyle(
                      color: Theme.of(context).primaryColor,
                      fontWeight: FontWeight.bold),
                  cursorColor: Theme.of(context).primaryColor,
                  decoration: const InputDecoration(border: InputBorder.none),
                ),
              ),
              const SizedBox(
                height: 30,
              ),
                // Password  Section
              Padding(
                padding: const EdgeInsets.only(left: 10, bottom: 5),
                child: Text(
                  "Password (${10-passwordController.text.length})",
                  style: Theme.of(context).textTheme.titleMedium?.copyWith(
                      color: Colors.grey, fontWeight: FontWeight.bold),
                ),
              ),
              Stack(
                children: [
                  Container(
                    decoration: BoxDecoration(
                        color: Theme.of(context).primaryColorDark,
                        borderRadius: BorderRadius.circular(15)),
                    padding: const EdgeInsets.symmetric(horizontal: 10),
                    child: TextFormField(
                      obscureText: true,
                      controller: passwordController,
                      onChanged: (val){
                        setState(() {});
                      },
                      style: TextStyle(
                          color: Theme.of(context).primaryColor,
                          fontWeight: FontWeight.bold),
                      cursorColor: Theme.of(context).primaryColor,
                      maxLength: 10,
                      decoration:  InputDecoration(
                        counterText: "",
                          contentPadding: const EdgeInsets.only(top: 10),
                        suffixIcon: InkWell(
                          onTap: (){
                            setState(() {
                              isShow=!isShow;
                            });
                          },
                          child:  Icon(isShow?Icons.visibility_off: Icons.visibility),
                        ),
                          border: InputBorder.none),
                    ),
                  ),
                  // Torch Effect Section
                  isShow?Padding(
                    padding: const EdgeInsets.only(right: 40),
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(15),
                      child: ClipPath(
                        // Custom Clipper
                        clipper: MyClipper(),
                        child: Container(
                          height: 47,
                          width: double.infinity,
                          decoration:const  BoxDecoration(
                            color: Colors.white,
                          ),
                          padding:const  EdgeInsets.only(left:10),
                          alignment: Alignment.centerLeft,
                          child: Text(
                            passwordController.text,style: const TextStyle(color:Colors.black,fontSize: 20),
                            maxLines: 1,
                          ),
                        ),
                      ),
                    ),
                  ):Container()
                ],
              ),
              const Spacer(),
              // Submit Button   Section
              Container(
                height: 50,
                width: double.infinity,
                decoration: BoxDecoration(
                    color: const Color(0xff063970),
                    borderRadius: BorderRadius.circular(15)),
                alignment: Alignment.center,
                child: Text(
                  "Submit",
                  style: Theme.of(context).textTheme.titleMedium?.copyWith(
                      color: Theme.of(context).primaryColor,
                      fontWeight: FontWeight.bold),
                ),
              ),
              const Spacer(),
            ],
          ),
        ),
      ),
    );
  }
}
