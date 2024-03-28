import 'package:flutter/material.dart';
import 'package:task1/datas.dart';
import 'package:task1/signup.dart';
import 'package:task1/task.dart';

class Login extends StatelessWidget {
  const Login({super.key});

  @override
  Widget build(BuildContext context) {
    Datas data = Datas();

    return Scaffold(
        body: Center(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: Form(
          key: data.loginkey,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Text(
                "LOGIN",
                style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
              ),
              TextFormField(
                validator: (value) {
                  if(value==null || value.isEmpty){
                    return "required field";
                  }
                  else{
                    return null;
                  }
                },
                decoration: const InputDecoration(
                    hintText: 'Username', border: OutlineInputBorder()),
                controller: data.usernamecontroller,
              ),
              const SizedBox(
                height: 20,
              ),
              TextFormField(
                validator: (value) {
                  if(value==null || value.isEmpty){
                    return "required field";
                  }
                  else{
                    return null;
                  }
                },
                decoration: const InputDecoration(
                    hintText: 'Password', border: OutlineInputBorder()),
                controller: data.passwordcontroller,
                obscureText:true,
              ),
              TextButton(
                onPressed: () {
                  if(data.loginkey.currentState!.validate()){
                     data.checkuser(data.usernamecontroller.text, data.passwordcontroller.text,context);


                  }
                },
                child: Container(
                  color: Colors.green,
                  padding: const EdgeInsets.all(8.0),
                  child: const Text(
                    'LOGIN',
                    style: TextStyle(color: Colors.white, fontSize: 13.0),
                  ),
                ),
              ),
              Row(

                children: [
                  Text("Do you have an account?"),
                  TextButton(onPressed: (){
                    Navigator.of(context).push(MaterialPageRoute(builder: (context) => Signup(),));
                  }, child: Text("Signup"))
                  
                ],
              )
            ],
          ),
        ),
      ),
    ));
  }
}
