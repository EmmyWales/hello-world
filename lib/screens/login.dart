import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:nike_collections/screens/dashboard.dart';

class Login extends StatefulWidget {
  const Login({Key? key}) : super(key: key);

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  final _formKey = GlobalKey<FormState>();
  TextEditingController _email = TextEditingController();
  TextEditingController _fname = TextEditingController();
  TextEditingController _pnum = TextEditingController();
  TextEditingController _pword = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Login Sample"),
      ),
      body: Form(
        key: _formKey,
        child: Column(
          children: [
            TextFormField(
              controller: _fname,
              autovalidateMode: AutovalidateMode.always,
              validator: (value) {
                if (value!.isEmpty) {
                  return "Enter your name.";
                } else {
                  return null;
                }
              },
              decoration: const InputDecoration(
                  labelText: "Name", hintText: "Enter your full name"),
            ),
            TextFormField(
              controller: _email,
              autovalidateMode: AutovalidateMode.onUserInteraction,
              keyboardType: TextInputType.emailAddress,
              validator: (value) {
                if (value!.length < 6) {
                  return "Email not valid";
                } else if (!value.contains("@")) {
                  return "Email must contain @";
                } else {
                  return null;
                }
              },
              decoration: const InputDecoration(
                  labelText: "Email", hintText: "Emmanuel@gmail.com"),
            ),
            TextFormField(
              controller: _pnum,
              autovalidateMode: AutovalidateMode.onUserInteraction,
              keyboardType: TextInputType.phone,
              inputFormatters: [FilteringTextInputFormatter.digitsOnly],
              validator: (value) {
                if (value!.length > 11) {
                  return "Enter a valid number";
                } else if (value.isEmpty) {
                  return "Phone number must contain 11 digits";
                } else {
                  return null;
                }
              },
              decoration: const InputDecoration(
                  labelText: "Phone Number",
                  hintText: "Enter your Phone Number"),
            ),
            TextFormField(
              controller: _pword,
              autovalidateMode: AutovalidateMode.onUserInteraction,
              obscureText: true,
              validator: (value) {
                if (value!.length < 7) {
                  return "Password must contain minimum of 8 characters ";
                } else {
                  return null;
                }
              },
              decoration: const InputDecoration(
                  labelText: "Enter Password",
                  hintText: "********",
                  prefixIcon: Icon(Icons.lock),
                  suffixIcon: Icon(Icons.visibility)),
            ),
            MaterialButton(
              onPressed: () {
                if (_formKey.currentState!.validate()) {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (_) => MyDashboard(
                          fname: _fname.text,
                          phn: _pnum.text,
                          email: _email.text,
                        ),
                      )
            );
                }
              },
              // ignore: sort_child_properties_last
              child: const Text("Submit"),
              color: Colors.blue,
            )
          ],
        ),
      ),
    );
  }

  @override
  void initState() {
    // ignore: todo
    // TODO: implement initState
    _fname = TextEditingController();
    _email = TextEditingController();
    _pnum = TextEditingController();
    _pword = TextEditingController();

    super.initState();
  }

  @override
  void dispose() {
    // ignore: todo
    // TODO: implement dispose
    _fname.dispose();
    _email.dispose();
    _pnum.dispose();
    _pword.dispose();

    super.dispose();
  }
}
