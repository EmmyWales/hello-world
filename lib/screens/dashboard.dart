import 'package:flutter/material.dart';

class MyDashboard extends StatelessWidget {
  final String fname, phn, email;
  const MyDashboard({Key? key, required this.fname, required this.phn, required this.email }) 
  : super(key: key);

  @override
  Widget build(BuildContext context) {
     return Scaffold(
      appBar: AppBar(
        title: const Text("My Dasboard"),
        centerTitle: true,
        elevation: 0,
      ),

      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "Fullname: $fname",
               style: const TextStyle(color: Colors.green, fontSize: 16, ),
            ),
             Text(
              "Phone number: $phn",
               style: const TextStyle(color: Colors.red, fontSize: 16, ),
            ),
             Text(
              "Email Address: $email",
               style: const TextStyle(color: Colors.blue, fontSize: 16, ),
            ),
            
          ],
           
        ),
      ),
    );
  }
}


