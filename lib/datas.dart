import 'package:flutter/material.dart';
import 'package:task1/home.dart';
import 'package:task1/login.dart';
import 'package:task1/task.dart';

class Datas {
  List<Map<String, dynamic>> item = [
    {
      'profileimg':
          'assets/360_F_243123463_zTooub557xEWABDLk0jJklDyLSGl2jrr.jpg',
      'username': 'travor',
      'time': '15m',
      'postimg': 'assets/Moeraki-Boulders-New-Zealand.jpg'
    },
    {
      'profileimg': 'assets/person2.jpg',
      'username': 'Rahul',
      'time': '25m',
      'postimg': 'assets/sunflower.jpg'
    },
    {
      'profileimg': 'assets/person3.jpeg',
      'username': 'Ram',
      'time': '1hr',
      'postimg': 'assets/sunset-1373171_1280.jpg'
    },
    {
      'profileimg': 'assets/person4.jpg',
      'username': 'Aspen',
      'time': '10m',
      'postimg': 'assets/tiger-jpg.jpg'
    },
    {
      'profileimg': 'assets/person5.jpg',
      'username': 'Hitler',
      'time': '2hr',
      'postimg': 'assets/image2.jpg.jpg'
    },
  ];
  

  TextEditingController usernamecontroller = TextEditingController();
  GlobalKey<FormState> loginkey = GlobalKey<FormState>();
  TextEditingController passwordcontroller = TextEditingController();
         GlobalKey<FormState> signupkey = GlobalKey<FormState>();



  void checkuser(String username, String password, context) {
    if (username == 'safareena' && password == 'safa') {
      print("correct");
      Navigator.of(context).push(MaterialPageRoute(
        builder: (context) => const Home(),
      ));
    } else {
      print("not correct");
      ScaffoldMessenger.of(context).showSnackBar(
          const SnackBar(content: Text("Invalid username and password")));
    }
  }

  void signupcheck(String password, String confirmpass, context) {
    if (password=="1234" && confirmpass=='1234') {
      Navigator.of(context).pop();
     
    } else {
      ScaffoldMessenger.of(context).showSnackBar(const SnackBar(
          content: Text("password and confirm password should be same")));
    }
  }
  void checkterms(bool ischecked,context){
    if(ischecked==false){
      ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text("Please check terms and condition")));

    }
    else{
      Navigator.of(context).push(MaterialPageRoute(builder: (context) => Login(),));
    }
  }

}
