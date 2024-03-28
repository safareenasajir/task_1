import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:task1/datas.dart';

class Signup extends StatefulWidget {
  const Signup({super.key});

  @override
  State<Signup> createState() => _SignupState();
}

class _SignupState extends State<Signup> {
  TextEditingController usernamecontroller = TextEditingController();
  GlobalKey<FormState> loginkey = GlobalKey<FormState>();
  TextEditingController passwordcontroller = TextEditingController();
  GlobalKey<FormState> signupkey = GlobalKey<FormState>();
  TextEditingController opassword = TextEditingController();
  TextEditingController confirmpass = TextEditingController();
  TextEditingController susernamecontroller = TextEditingController();
  TextEditingController phnum = TextEditingController();

  TextEditingController emailcontroller = TextEditingController();
  TextEditingController date = TextEditingController();
  Future<void> selectdate(context) async {
    final DateTime? pickeddate = await showDatePicker(
        context: context, firstDate: DateTime(1980), lastDate: DateTime.now());
    if (pickeddate != null) {
      String formatdate = DateFormat("dd-MM-yyyy").format(pickeddate);
      setState(() {
        date.text = formatdate;
      });
    }
  }

  TextEditingController time = TextEditingController();
  Future<void> selecttime(context) async {
    final TimeOfDay? pickedtime =
        await showTimePicker(context: context, initialTime: TimeOfDay.now());
    if (pickedtime != null) {
      String formattime = pickedtime.format(context);

      setState(() {
        time.text = formattime;
      });
    }
  }

  int selectedoptin = 1;
  bool ischecked = false;

  @override
  Widget build(BuildContext context) {
    List list = <String>[
      'Thiruvananthpuram',
      'Kollam',
      'Alappuzha',
      'Pathananthitta',
      'Idukki',
      'Kottayam',
      'Eranankulam',
      'Thrissur',
      'Palakad',
      'Malapuram',
      'Kozhikod',
      'Wayanad',
      'Kannur',
      'Kasarkod'
    ];

    String dropdown = list.first;

    Datas data = Datas();
    print('//////Rebuilding');
    return Scaffold(
      body: Center(
        child: SingleChildScrollView(
          child: Form(
            key: data.signupkey,
            child: Padding(
              padding: const EdgeInsets.all(10.0),
              child: Column(
                children: [
                  const Text(
                    "SIGNUP",
                    style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
                  ),
                  TextFormField(
                    controller: susernamecontroller,
                    validator: (value) {
                      if (value == null || value.isEmpty) {
                        return "*required field";
                      } else {
                        return null;
                      }
                    },
                    decoration: const InputDecoration(
                        hintText: "Username", border: OutlineInputBorder()),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  TextFormField(
                    controller: emailcontroller,
                    keyboardType: TextInputType.emailAddress,
                    validator: (value) {
                      if (value == null || value.isEmpty) {
                        return "*required field";
                      } else {
                        return null;
                      }
                    },
                    decoration: const InputDecoration(
                        hintText: "Email", border: OutlineInputBorder()),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  TextFormField(
                    decoration: const InputDecoration(
                        hintText: "Date of birth",
                        border: OutlineInputBorder()),
                    controller: date,
                    onTap: () {
                      selectdate(context);
                    },
                    validator: (value) {
                      if (value == null || value.isEmpty) {
                        return "*required field";
                      } else {
                        return null;
                      }
                    },
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  TextFormField(
                    controller: time,
                    decoration: const InputDecoration(
                        hintText: "Time", border: OutlineInputBorder()),
                    onTap: () {
                      selecttime(context);
                    },
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  TextFormField(
                    controller: phnum,
                    keyboardType: TextInputType.phone,
                    validator: (value) {
                      if (value == null || value.isEmpty) {
                        return "*required field";
                      } else if (value.length != 10) {
                        return "mobile number must be 10 digit.";
                      } else {
                        return null;
                      }
                    },
                    decoration: const InputDecoration(
                        hintText: "Phone no", border: OutlineInputBorder()),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  ListTile(
                    title: const Text("Male"),
                    leading: Radio(
                      value: 1,
                      groupValue: selectedoptin,
                      onChanged: (value) {
                        setState(() {
                          selectedoptin = value!;
                        });
                      },
                    ),
                  ),
                  ListTile(
                    title: const Text("Female"),
                    leading: Radio(
                      value: 2,
                      groupValue: selectedoptin,
                      onChanged: (value) {
                        setState(() {
                          selectedoptin = value!;
                        });
                      },
                    ),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  TextFormField(
                    validator: (value) {
                      if (value == null || value.isEmpty) {
                        return "*required field";
                      } else {
                        return null;
                      }
                    },
                    decoration: const InputDecoration(
                        hintText: "Password",
                        border: OutlineInputBorder(),
                        filled: true,
                        fillColor: Colors.black45),
                    controller: opassword,
                    obscureText: true,
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  TextFormField(
                    validator: (value) {
                      if (value == null || value.isEmpty) {
                        return "*required field";
                      } else if (value != opassword.text) {
                        return "invalid password";
                      } else {
                        return null;
                      }
                    },
                    decoration: const InputDecoration(
                        hintText: "Confirm Password",
                        border: OutlineInputBorder()),
                    controller: confirmpass,
                    obscureText: true,
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  Row(
                    children: [
                      Checkbox(
                        value: ischecked,
                        onChanged: (value) {
                          setState(() {
                            ischecked = value!;
                          });
                        },
                      ),
                      const Text(
                        "Terms and Conditions",
                        style: TextStyle(fontSize: 18),
                      )
                    ],
                  ),
                  ElevatedButton(
                    onPressed: () {
                      if (data.signupkey.currentState!.validate()) {
                        ischecked == false
                            ? ScaffoldMessenger.of(context).showSnackBar(
                                const SnackBar(
                                    content: Text(
                                        "please check terms and condition")))
                            : data.signupcheck(
                                opassword.text, confirmpass.text, context);
                      }
                    },
                    style: ButtonStyle(
                        backgroundColor: MaterialStatePropertyAll(
                            ischecked == false ? Colors.grey : Colors.green)),
                    child: const Text(
                      "Signup",
                      style: TextStyle(color: Colors.white),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
